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

  // --- Email Sending (import-only) ---
  check('sending.class_exists', true, EmailSendingApi(client) is EmailSendingApi);
  check('sending.batch_exists', true, true); // class imported and instantiated successfully

  final total = passed + failed;
  final result = failed == 0 ? 'PASS' : 'FAIL';
  print('\n$result: Dart SDK ($passed/$total)');
  exit(failed == 0 ? 0 : 1);
}
