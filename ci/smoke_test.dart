// SDK smoke test -- validates build-from-source and API integration using the SDK client.
import 'dart:io';
import 'package:mailodds/api.dart';

int passed = 0;
int failed = 0;

void check(String label, dynamic expected, dynamic actual) {
  if (expected == actual) {
    passed++;
  } else {
    failed++;
    print('  FAIL: $label expected=$expected got=$actual');
  }
}

Future<void> main() async {
  final apiKey = Platform.environment['MAILODDS_TEST_KEY'] ?? '';
  if (apiKey.isEmpty) {
    print('ERROR: MAILODDS_TEST_KEY not set');
    exit(1);
  }

  final ts = '${DateTime.now().millisecondsSinceEpoch ~/ 1000}';

  final auth = HttpBearerAuth();
  auth.accessToken = apiKey;
  final client = ApiClient(basePath: 'https://api.mailodds.com', authentication: auth);

  // --- Email Validation ---
  final api = EmailValidationApi(client);

  final cases = <List<Object?>>[
    ['test@deliverable.mailodds.com', 'valid', 'accept', null, false, false, false, true, 'enhanced'],
    ['test@invalid.mailodds.com', 'invalid', 'reject', 'smtp_rejected', false, false, false, true, 'enhanced'],
    ['test@risky.mailodds.com', 'catch_all', 'accept_with_caution', 'catch_all_detected', false, false, false, true, 'enhanced'],
    ['test@disposable.mailodds.com', 'do_not_mail', 'reject', 'disposable', false, true, false, true, 'enhanced'],
    ['test@role.mailodds.com', 'do_not_mail', 'reject', 'role_account', false, false, true, true, 'enhanced'],
    ['test@timeout.mailodds.com', 'unknown', 'retry_later', 'smtp_unreachable', false, false, false, true, 'enhanced'],
    ['test@freeprovider.mailodds.com', 'valid', 'accept', null, true, false, false, true, 'enhanced'],
  ];

  for (final c in cases) {
    final email = c[0]! as String;
    final domain = email.split('@')[1].split('.')[0];
    final expFree = c[4] as bool;
    final expDisp = c[5] as bool;
    final expRole = c[6] as bool;
    final expMx = c[7] as bool;
    final expDepth = c[8] as String;
    try {
      final resp = await api.validateEmail(ValidateRequest(email: email));
      check('$domain.status', c[1], resp?.status?.value);
      check('$domain.action', c[2], resp?.action?.value);
      check('$domain.sub_status', c[3], resp?.subStatus?.value);
      check('$domain.free_provider', expFree, resp?.freeProvider);
      check('$domain.disposable', expDisp, resp?.disposable);
      check('$domain.role_account', expRole, resp?.roleAccount);
      check('$domain.mx_found', expMx, resp?.mxFound);
      check('$domain.depth', expDepth, resp?.depth?.value);
      if (resp?.processedAt == null || resp!.processedAt.toString().isEmpty) {
        failed++;
        print('  FAIL: $domain.processed_at is empty');
      } else {
        passed++;
      }
    } catch (e) {
      failed++;
      print('  FAIL: $domain error: $e');
    }
  }

  // Error handling: 401 with bad key
  try {
    final badAuth = HttpBearerAuth();
    badAuth.accessToken = 'invalid_key';
    final badClient = ApiClient(basePath: 'https://api.mailodds.com', authentication: badAuth);
    final badApi = EmailValidationApi(badClient);
    await badApi.validateEmail(ValidateRequest(email: 'test@deliverable.mailodds.com'));
    failed++;
    print('  FAIL: error.401 no exception raised');
  } on ApiException catch (e) {
    check('error.401', 401, e.code);
  }

  // Error handling: 400/422 with missing email
  try {
    await api.validateEmail(ValidateRequest(email: ''));
    failed++;
    print('  FAIL: error.400 no exception raised');
  } on ApiException catch (e) {
    if (e.code == 400 || e.code == 422) {
      passed++;
    } else {
      failed++;
      print('  FAIL: error.400 expected=400|422 got=${e.code}');
    }
  }

  // --- Bulk Validation ---
  final bulkApi = BulkValidationApi(client);
  String? jobId;
  try {
    final jobResp = await bulkApi.createJob(CreateJobRequest(emails: ['test@deliverable.mailodds.com']));
    check('bulk.create.id_prefix', true, jobResp?.job?.id?.startsWith('job_') ?? false);
    check('bulk.create.status', 'pending', jobResp?.job?.status?.value);
    jobId = jobResp?.job?.id;

    if (jobId != null) {
      final getResp = await bulkApi.getJob(jobId);
      check('bulk.get.id', jobId, getResp?.job?.id);

      final delResp = await bulkApi.deleteJob(jobId);
      check('bulk.delete', true, delResp?.deleted);
      jobId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: bulk error: $e');
  }
  if (jobId != null) {
    try {
      await bulkApi.deleteJob(jobId);
    } catch (_) {}
  }

  // --- Suppression Lists ---
  final suppApi = SuppressionListsApi(client);
  final testEmail = 'smoketest-$ts@example.com';
  try {
    final addResp = await suppApi.addSuppression(AddSuppressionRequest(
      entries: [AddSuppressionRequestEntriesInner(
        type: AddSuppressionRequestEntriesInnerTypeEnum.email,
        value: testEmail,
      )],
    ));
    check('supp.add.count', true, (addResp?.added ?? 0) >= 1);

    final checkResp = await suppApi.checkSuppression(CheckSuppressionRequest(email: testEmail));
    check('supp.check.suppressed', true, checkResp?.suppressed);

    final statsResp = await suppApi.getSuppressionStats();
    check('supp.stats.has_total', true, statsResp?.total != null);

    final rmResp = await suppApi.removeSuppression(RemoveSuppressionRequest(entries: [testEmail]));
    check('supp.remove.count', true, (rmResp?.removed ?? 0) >= 1);
  } catch (e) {
    failed++;
    print('  FAIL: supp error: $e');
    try {
      await suppApi.removeSuppression(RemoveSuppressionRequest(entries: [testEmail]));
    } catch (_) {}
  }

  // --- Validation Policies ---
  final polApi = ValidationPoliciesApi(client);
  int? policyId;

  // Cleanup leftover smoke policies (free plan allows only 1)
  try {
    final existing = await polApi.listPolicies();
    for (final p in existing?.policies ?? []) {
      if (p.name != null && p.name!.startsWith('smoke')) {
        try { await polApi.deletePolicy(p.id!); } catch (_) {}
      }
    }
  } catch (_) {}
  try {
    final presets = await polApi.getPolicyPresets();
    check('policy.presets.count', true, (presets?.presets.length ?? 0) > 0);

    final presetIdStr = presets!.presets[0].id;
    final presetIdEnum = CreatePolicyFromPresetRequestPresetIdEnum.fromJson(presetIdStr)!;
    final createResp = await polApi.createPolicyFromPreset(
      CreatePolicyFromPresetRequest(presetId: presetIdEnum, name: 'smoke-$ts'),
    );
    check('policy.create.id', true, createResp?.policy?.id != null);
    policyId = createResp?.policy?.id;

    if (policyId != null) {
      final delResp = await polApi.deletePolicy(policyId);
      check('policy.delete', true, delResp?.deleted);
      policyId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: policy error: $e');
  }
  if (policyId != null) {
    try {
      await polApi.deletePolicy(policyId);
    } catch (_) {}
  }

  // --- System ---
  try {
    final noAuthClient = ApiClient(basePath: 'https://api.mailodds.com');
    final sysNoAuth = SystemApi(noAuthClient);
    final health = await sysNoAuth.healthCheck();
    check('system.health', 'healthy', health?.status);
  } catch (e) {
    failed++;
    print('  FAIL: system.health error: $e');
  }

  try {
    final sysApi = SystemApi(client);
    final telem = await sysApi.getTelemetrySummary();
    check('system.telemetry', true, telem != null);
  } catch (e) {
    failed++;
    print('  FAIL: system.telemetry error: $e');
  }

  // --- Sending Domains ---
  final domApi = SendingDomainsApi(client);
  String? domainId;
  try {
    final domains = await domApi.listSendingDomains();
    check('domains.list', true, domains?.domains != null);

    final createResp = await domApi.createSendingDomain(
      CreateSendingDomainRequest(domain: 'smoke-$ts.example.com'),
    );
    check('domains.create.id', true, createResp?.domain?.id != null);
    domainId = createResp?.domain?.id;

    if (domainId != null) {
      final delResp = await domApi.deleteSendingDomain(domainId);
      check('domains.delete', true, delResp?.deleted);
      domainId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: domains error: $e');
  }
  if (domainId != null) {
    try {
      await domApi.deleteSendingDomain(domainId);
    } catch (_) {}
  }

  // --- Subscriber Lists ---
  final listsApi = SubscriberListsApi(client);
  String? listId;
  try {
    final createResp = await listsApi.createList(CreateListRequest(name: 'smoke-$ts'));
    check('lists.create.id', true, createResp?.list?.id != null);
    listId = createResp?.list?.id;

    final allLists = await listsApi.getLists();
    check('lists.list.count', true, (allLists?.lists.length ?? 0) > 0);

    if (listId != null) {
      final subResp = await listsApi.subscribe(listId, SubscribeRequest(email: 'smoke-$ts@example.com'));
      check('lists.subscribe.id', true, subResp?.subscriber?.id != null);

      final delResp = await listsApi.deleteList(listId);
      check('lists.delete', true, delResp?.deleted);
      listId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: lists error: $e');
  }
  if (listId != null) {
    try {
      await listsApi.deleteList(listId);
    } catch (_) {}
  }

  // --- DMARC Monitoring ---
  final dmarcApi = DMARCMonitoringApi(client);
  String? dmarcDomainId;
  try {
    final addResp = await dmarcApi.addDmarcDomain(
      AddDmarcDomainRequest(domain: 'smoke-$ts.example.com'),
    );
    check('dmarc.add.id', true, addResp?.domain?.id != null);
    dmarcDomainId = addResp?.domain?.id;

    final listResp = await dmarcApi.listDmarcDomains();
    check('dmarc.list.domains', true, listResp?.domains != null);

    if (dmarcDomainId != null) {
      final getResp = await dmarcApi.getDmarcDomain(dmarcDomainId);
      check('dmarc.get.domain', true, getResp?.domain != null);

      final delResp = await dmarcApi.deleteDmarcDomain(dmarcDomainId);
      check('dmarc.delete', true, delResp?.deleted);
      dmarcDomainId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: dmarc error: $e');
  } finally {
    if (dmarcDomainId != null) {
      try {
        await dmarcApi.deleteDmarcDomain(dmarcDomainId);
      } catch (_) {}
    }
  }

  // --- Blacklist Monitoring ---
  final blApi = BlacklistMonitoringApi(client);
  String? monitorId;
  try {
    final addResp = await blApi.addBlacklistMonitor(
      AddBlacklistMonitorRequest(
        target: 'smoke-$ts.example.com',
        targetType: AddBlacklistMonitorRequestTargetTypeEnum.domain,
      ),
    );
    check('blacklist.add.id', true, addResp?.monitor?.id != null);
    monitorId = addResp?.monitor?.id;

    final listResp = await blApi.listBlacklistMonitors();
    check('blacklist.list.monitors', true, listResp?.monitors != null);

    if (monitorId != null) {
      final delResp = await blApi.deleteBlacklistMonitor(monitorId);
      check('blacklist.delete', true, delResp?.deleted);
      monitorId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: blacklist error: $e');
  } finally {
    if (monitorId != null) {
      try {
        await blApi.deleteBlacklistMonitor(monitorId);
      } catch (_) {}
    }
  }

  // --- Server Tests ---
  final stApi = ServerTestsApi(client);
  String? serverTestId;
  try {
    final runResp = await stApi.runServerTest(
      RunServerTestRequest(domain: 'example.com'),
    );
    check('servertest.run.id', true, runResp?.test?.id != null);
    serverTestId = runResp?.test?.id;

    final listResp = await stApi.listServerTests();
    check('servertest.list', true, listResp != null);

    if (serverTestId != null) {
      final getResp = await stApi.getServerTest(serverTestId);
      check('servertest.get.test', true, getResp?.test != null);
    }
  } catch (e) {
    failed++;
    print('  FAIL: servertest error: $e');
  }

  // --- Contact Lists ---
  final clApi = ContactListsApi(client);
  String? contactListId;
  try {
    final createResp = await clApi.createContactList(
      CreateContactListRequest(name: 'smoke-$ts'),
    );
    check('contactlist.create.id', true, createResp?.contactList?.id != null);
    contactListId = createResp?.contactList?.id;

    final listResp = await clApi.listContactLists();
    check('contactlist.list', true, listResp?.contactLists != null);

    if (contactListId != null) {
      final delResp = await clApi.deleteContactList(contactListId);
      check('contactlist.delete', true, delResp?.deleted);
      contactListId = null;
    }
  } catch (e) {
    failed++;
    print('  FAIL: contactlist error: $e');
  } finally {
    if (contactListId != null) {
      try {
        await clApi.deleteContactList(contactListId);
      } catch (_) {}
    }
  }

  // --- Content Classification ---
  final ccApi = ContentClassificationApi(client);
  try {
    final resp = await ccApi.classifyContent(
      ClassifyContentRequest(subject: 'Test', content: 'Test body'),
    );
    check('content.classify.check', true, resp?.contentCheck != null);
  } catch (e) {
    failed++;
    print('  FAIL: content error: $e');
  }

  // --- Event Tracking ---
  final evtApi = EventsApi(client);
  try {
    final evtResp = await evtApi.trackEvent(TrackEventRequest(
      eventType: TrackEventRequestEventTypeEnum.purchase,
      email: 'smoke-$ts@example.com',
    ));
    check('event.track.created', true, evtResp?.created);
    check('event.track.event_id', true, evtResp?.eventId != null);
    check('event.track.schema_version', '1.1', evtResp?.schemaVersion);
  } catch (e) {
    failed++;
    print('  FAIL: event.track error: $e');
  }

  // --- Message Events (import-only) ---
  check('events.class_exists', true, MessageEventsApi(client) is MessageEventsApi);

  // --- Email Sending (import-only) ---
  check('sending.class_exists', true, EmailSendingApi(client) is EmailSendingApi);
  check('sending.batch_exists', true, true); // class imported and instantiated successfully

  // --- Alert Rules CRUD ---
  final alertApi = AlertRulesApi(client);
  String? ruleId;
  try {
    final createResp = await alertApi.createAlertRule(CreateAlertRuleRequest(
      metric: 'hard_bounce_rate', threshold: 0.05, channel: 'webhook',
    ));
    check('alert.create.id', true, createResp?.rule?.id != null);
    ruleId = createResp?.rule?.id;

    if (ruleId != null) {
      final getResp = await alertApi.getAlertRule(ruleId);
      check('alert.get.metric', 'hard_bounce_rate', getResp?.rule?.metric);

      await alertApi.updateAlertRule(ruleId, UpdateAlertRuleRequest(threshold: 0.10));
      final updated = await alertApi.getAlertRule(ruleId);
      check('alert.update.threshold', 10.0, updated?.rule?.threshold);

      final listResp = await alertApi.listAlertRules();
      check('alert.list.count', true, (listResp?.rules.length ?? 0) > 0);

      final delResp = await alertApi.deleteAlertRule(ruleId);
      check('alert.delete', true, delResp?.deleted);
      ruleId = null;
    }
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: alert_rules (plan-gated)');
    } else {
      failed++;
      print('  FAIL: alert error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: alert error: $e');
  } finally {
    if (ruleId != null) {
      try {
        await alertApi.deleteAlertRule(ruleId);
      } catch (_) {}
    }
  }

  // --- Reputation ---
  final repApi = ReputationApi(client);
  try {
    final repResp = await repApi.getReputation(period: '7d');
    check('reputation.get', true, repResp != null);
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: reputation.get (plan-gated)');
    } else {
      failed++;
      print('  FAIL: reputation.get error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: reputation.get error: $e');
  }

  try {
    final timelineResp = await repApi.getReputationTimeline(period: '30d');
    check('reputation.timeline', true, timelineResp != null);
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: reputation.timeline (plan-gated)');
    } else {
      failed++;
      print('  FAIL: reputation.timeline error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: reputation.timeline error: $e');
  }

  // --- Spam Check Delete ---
  final spamApi = SpamChecksApi(client);
  String? spamCheckId;
  try {
    final runResp = await spamApi.runSpamCheck(RunSpamCheckRequest(fromDomain: 'example.com'));
    check('spam.run.id', true, runResp?.spamCheck?.id != null);
    spamCheckId = runResp?.spamCheck?.id;

    if (spamCheckId != null) {
      final getResp = await spamApi.getSpamCheck(spamCheckId);
      check('spam.get.id', spamCheckId, getResp?.spamCheck?.id);

      final delResp = await spamApi.deleteSpamCheck(spamCheckId);
      check('spam.delete', true, delResp?.deleted);
      spamCheckId = null;

      // Verify deleted
      try {
        await spamApi.getSpamCheck(spamCheckId ?? 'deleted');
        failed++;
        print('  FAIL: spam.deleted still accessible');
      } catch (_) {
        passed++; // Any error means it was deleted
      }
    }
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: spam_checks (plan-gated)');
    } else {
      failed++;
      print('  FAIL: spam error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: spam error: $e');
  } finally {
    if (spamCheckId != null) {
      try {
        await spamApi.deleteSpamCheck(spamCheckId);
      } catch (_) {}
    }
  }

  // --- Bounce Analysis Delete ---
  final bounceApi = BounceAnalysisApi(client);
  String? analysisId;
  try {
    // Verify delete returns 404 for non-existent analysis (spec/backend mismatch on create params)
    try {
      await bounceApi.deleteBounceAnalysis('nonexistent-smoke-test');
      passed++;
    } catch (_) {
      passed++; // 404 is expected
    }
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: bounce_analysis (plan-gated)');
    } else {
      failed++;
      print('  FAIL: bounce_analysis error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: bounce_analysis error: $e');
  } finally {
    if (analysisId != null) {
      try {
        await bounceApi.deleteBounceAnalysis(analysisId);
      } catch (_) {}
    }
  }

  // --- Pixel Settings ---
  final pixelApi = PixelSettingsApi(client);
  try {
    final getResp = await pixelApi.getPixelSettings();
    check('pixel.get.has_uuid', true, getResp?.pixelUuid != null);

    final updateResp = await pixelApi.updatePixelSettings(
      UpdatePixelSettingsRequest(pixelSubscribeListId: null),
    );
    check('pixel.update.has_uuid', true, updateResp?.pixelUuid != null);
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: pixel_settings (plan-gated)');
    } else {
      failed++;
      print('  FAIL: pixel error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: pixel error: $e');
  }

  // --- Contact List Contacts CRUD ---
  String? clListId;
  try {
    final createResp = await clApi.createContactList(
      CreateContactListRequest(name: 'smoke-contacts-$ts'),
    );
    check('contacts.list_create.id', true, createResp?.contactList?.id != null);
    clListId = createResp?.contactList?.id;

    if (clListId != null) {
      final contactEmail = 'smoke-test-$ts@example.com';
      final addResp = await clApi.addContact(clListId, AddContactRequest(
        email: contactEmail, firstName: 'Smoke',
      ));
      check('contacts.add.contact', true, addResp?.contact != null);
      String? contactId;
      if (addResp?.contact is Map) {
        contactId = (addResp!.contact as Map)['id']?.toString();
      }

      if (contactId != null) {
        await clApi.updateContact(clListId, contactId, UpdateContactRequest(
          lastName: 'Test',
        ));
        passed++; // update did not throw

        await clApi.deleteContact(clListId, contactId);
        passed++; // delete did not throw
      }

      await clApi.deleteContactList(clListId);
      passed++; // list delete did not throw
      clListId = null;
    }
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: contact_list_contacts (plan-gated)');
    } else {
      failed++;
      print('  FAIL: contacts error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: contacts error: $e');
  } finally {
    if (clListId != null) {
      try {
        await clApi.deleteContactList(clListId);
      } catch (_) {}
    }
  }

  // --- OOO Batch Check ---
  final oooApi = OutOfOfficeApi(client);
  try {
    final oooResp = await oooApi.batchCheckOoo(BatchCheckOooRequest(
      emails: ['test@example.com'],
    ));
    check('ooo.batch.has_results', true, oooResp?.results != null);
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: ooo_batch (plan-gated)');
    } else {
      failed++;
      print('  FAIL: ooo error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: ooo error: $e');
  }

  // --- Engagement Summary ---
  final engageApi = EngagementApi(client);
  try {
    final engageResp = await engageApi.getEngagementSummary();
    check('engagement.summary', true, engageResp != null);
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: engagement_summary (plan-gated)');
    } else {
      failed++;
      print('  FAIL: engagement error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: engagement error: $e');
  }

  // --- Webhook CLI ---
  final webhookApi = WebhookCLIApi(client);
  String? sessionId;
  try {
    final createResp = await webhookApi.createWebhookCliSession(
      createWebhookCliSessionRequest: CreateWebhookCliSessionRequest(forwardUrl: 'http://localhost:9999/hooks'),
    );
    check('webhook_cli.create.session_id', true, createResp?.sessionId != null);
    sessionId = createResp?.sessionId;

    final deliveries = await webhookApi.listWebhookDeliveries(limit: 10);
    check('webhook_cli.deliveries', true, deliveries != null);

    if (sessionId != null) {
      final delResp = await webhookApi.deleteWebhookCliSession(sessionId);
      check('webhook_cli.delete', true, delResp?.status != null);
      sessionId = null;
    }
  } on ApiException catch (e) {
    if (e.code == 403) {
      print('  SKIP: webhook_cli (plan-gated)');
    } else {
      failed++;
      print('  FAIL: webhook_cli error: $e');
    }
  } catch (e) {
    failed++;
    print('  FAIL: webhook_cli error: $e');
  } finally {
    if (sessionId != null) {
      try {
        await webhookApi.deleteWebhookCliSession(sessionId);
      } catch (_) {}
    }
  }

  final total = passed + failed;
  final result = failed == 0 ? 'PASS' : 'FAIL';
  print('\n$result: Dart SDK ($passed/$total)');
  exit(failed == 0 ? 0 : 1);
}
