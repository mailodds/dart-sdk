//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ApiClient {
  ApiClient({this.basePath = 'https://api.mailodds.com', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AddBlacklistMonitor201Response':
          return AddBlacklistMonitor201Response.fromJson(value);
        case 'AddBlacklistMonitorRequest':
          return AddBlacklistMonitorRequest.fromJson(value);
        case 'AddContact201Response':
          return AddContact201Response.fromJson(value);
        case 'AddContactRequest':
          return AddContactRequest.fromJson(value);
        case 'AddDmarcDomain201Response':
          return AddDmarcDomain201Response.fromJson(value);
        case 'AddDmarcDomainRequest':
          return AddDmarcDomainRequest.fromJson(value);
        case 'AddPolicyRule201Response':
          return AddPolicyRule201Response.fromJson(value);
        case 'AddSuppressionRequest':
          return AddSuppressionRequest.fromJson(value);
        case 'AddSuppressionRequestEntriesInner':
          return AddSuppressionRequestEntriesInner.fromJson(value);
        case 'AddSuppressionResponse':
          return AddSuppressionResponse.fromJson(value);
        case 'AlertRule':
          return AlertRule.fromJson(value);
        case 'AppendToContactList200Response':
          return AppendToContactList200Response.fromJson(value);
        case 'AppendToContactListRequest':
          return AppendToContactListRequest.fromJson(value);
        case 'BatchCheckOoo200Response':
          return BatchCheckOoo200Response.fromJson(value);
        case 'BatchCheckOoo200ResponseResultsInner':
          return BatchCheckOoo200ResponseResultsInner.fromJson(value);
        case 'BatchCheckOooRequest':
          return BatchCheckOooRequest.fromJson(value);
        case 'BatchDeliverRequest':
          return BatchDeliverRequest.fromJson(value);
        case 'BatchDeliverRequestStructuredData':
          return BatchDeliverRequestStructuredData.fromJson(value);
        case 'BatchDeliverResponse':
          return BatchDeliverResponse.fromJson(value);
        case 'BatchDeliverResponseDelivery':
          return BatchDeliverResponseDelivery.fromJson(value);
        case 'BatchDeliverResponseRejectedInner':
          return BatchDeliverResponseRejectedInner.fromJson(value);
        case 'BatchProductsRequest':
          return BatchProductsRequest.fromJson(value);
        case 'BatchProductsRequestProductsInner':
          return BatchProductsRequestProductsInner.fromJson(value);
        case 'BatchProductsResponse':
          return BatchProductsResponse.fromJson(value);
        case 'BatchProductsResponseErrorsInner':
          return BatchProductsResponseErrorsInner.fromJson(value);
        case 'BlacklistMonitor':
          return BlacklistMonitor.fromJson(value);
        case 'BlacklistMonitorLatestCheck':
          return BlacklistMonitorLatestCheck.fromJson(value);
        case 'BounceAnalysisResponse':
          return BounceAnalysisResponse.fromJson(value);
        case 'BounceAnalysisResponseAnalysis':
          return BounceAnalysisResponseAnalysis.fromJson(value);
        case 'BounceAnalysisResponseAnalysisCategories':
          return BounceAnalysisResponseAnalysisCategories.fromJson(value);
        case 'BounceAnalysisResponseAnalysisTopDomainsInner':
          return BounceAnalysisResponseAnalysisTopDomainsInner.fromJson(value);
        case 'Campaign':
          return Campaign.fromJson(value);
        case 'CampaignResponse':
          return CampaignResponse.fromJson(value);
        case 'CampaignStats':
          return CampaignStats.fromJson(value);
        case 'CampaignVariant':
          return CampaignVariant.fromJson(value);
        case 'CheckSuppressionRequest':
          return CheckSuppressionRequest.fromJson(value);
        case 'ClassifyContent200Response':
          return ClassifyContent200Response.fromJson(value);
        case 'ClassifyContent200ResponseContentCheck':
          return ClassifyContent200ResponseContentCheck.fromJson(value);
        case 'ClassifyContentRequest':
          return ClassifyContentRequest.fromJson(value);
        case 'ConfirmSubscription200Response':
          return ConfirmSubscription200Response.fromJson(value);
        case 'ContactList':
          return ContactList.fromJson(value);
        case 'CorrectInboundMessageRequest':
          return CorrectInboundMessageRequest.fromJson(value);
        case 'CreateAlertRule201Response':
          return CreateAlertRule201Response.fromJson(value);
        case 'CreateAlertRuleRequest':
          return CreateAlertRuleRequest.fromJson(value);
        case 'CreateBounceAnalysisRequest':
          return CreateBounceAnalysisRequest.fromJson(value);
        case 'CreateCampaignRequest':
          return CreateCampaignRequest.fromJson(value);
        case 'CreateCampaignVariant201Response':
          return CreateCampaignVariant201Response.fromJson(value);
        case 'CreateContactList201Response':
          return CreateContactList201Response.fromJson(value);
        case 'CreateContactListRequest':
          return CreateContactListRequest.fromJson(value);
        case 'CreateJobFromS3Request':
          return CreateJobFromS3Request.fromJson(value);
        case 'CreateJobRequest':
          return CreateJobRequest.fromJson(value);
        case 'CreateList201Response':
          return CreateList201Response.fromJson(value);
        case 'CreateListRequest':
          return CreateListRequest.fromJson(value);
        case 'CreatePolicyFromPresetRequest':
          return CreatePolicyFromPresetRequest.fromJson(value);
        case 'CreatePolicyRequest':
          return CreatePolicyRequest.fromJson(value);
        case 'CreateSendingDomain201Response':
          return CreateSendingDomain201Response.fromJson(value);
        case 'CreateSendingDomainRequest':
          return CreateSendingDomainRequest.fromJson(value);
        case 'CreateStoreRequest':
          return CreateStoreRequest.fromJson(value);
        case 'CreateToken200Response':
          return CreateToken200Response.fromJson(value);
        case 'CreateVariantRequest':
          return CreateVariantRequest.fromJson(value);
        case 'CreateWebhookCliSession201Response':
          return CreateWebhookCliSession201Response.fromJson(value);
        case 'CreateWebhookCliSessionRequest':
          return CreateWebhookCliSessionRequest.fromJson(value);
        case 'CrossReferenceBounces200Response':
          return CrossReferenceBounces200Response.fromJson(value);
        case 'CrossReferenceBounces200ResponseCrossReference':
          return CrossReferenceBounces200ResponseCrossReference.fromJson(value);
        case 'CrossReferenceBounces200ResponseCrossReferenceEntriesInner':
          return CrossReferenceBounces200ResponseCrossReferenceEntriesInner.fromJson(value);
        case 'DeleteJob200Response':
          return DeleteJob200Response.fromJson(value);
        case 'DeleteOooContact200Response':
          return DeleteOooContact200Response.fromJson(value);
        case 'DeletePolicy200Response':
          return DeletePolicy200Response.fromJson(value);
        case 'DeletePolicyRule200Response':
          return DeletePolicyRule200Response.fromJson(value);
        case 'DeleteWebhookCliSession200Response':
          return DeleteWebhookCliSession200Response.fromJson(value);
        case 'DeliverRequest':
          return DeliverRequest.fromJson(value);
        case 'DeliverRequestOptions':
          return DeliverRequestOptions.fromJson(value);
        case 'DeliverRequestStructuredData':
          return DeliverRequestStructuredData.fromJson(value);
        case 'DeliverRequestToInner':
          return DeliverRequestToInner.fromJson(value);
        case 'DeliverResponse':
          return DeliverResponse.fromJson(value);
        case 'DeliverResponseDelivery':
          return DeliverResponseDelivery.fromJson(value);
        case 'DmarcDomain':
          return DmarcDomain.fromJson(value);
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'GetBlacklistHistory200Response':
          return GetBlacklistHistory200Response.fromJson(value);
        case 'GetBlacklistHistory200ResponseChecksInner':
          return GetBlacklistHistory200ResponseChecksInner.fromJson(value);
        case 'GetBounceRecords200Response':
          return GetBounceRecords200Response.fromJson(value);
        case 'GetBounceRecords200ResponseRecordsInner':
          return GetBounceRecords200ResponseRecordsInner.fromJson(value);
        case 'GetBounceStats200Response':
          return GetBounceStats200Response.fromJson(value);
        case 'GetBounceStats200ResponseStats':
          return GetBounceStats200ResponseStats.fromJson(value);
        case 'GetBounceStatsSummary200Response':
          return GetBounceStatsSummary200Response.fromJson(value);
        case 'GetCampaignABResults200Response':
          return GetCampaignABResults200Response.fromJson(value);
        case 'GetCampaignABResults200ResponseVariantsInner':
          return GetCampaignABResults200ResponseVariantsInner.fromJson(value);
        case 'GetCampaignABResults200ResponseWinner':
          return GetCampaignABResults200ResponseWinner.fromJson(value);
        case 'GetCampaignAttribution200Response':
          return GetCampaignAttribution200Response.fromJson(value);
        case 'GetCampaignAttribution200ResponseAttribution':
          return GetCampaignAttribution200ResponseAttribution.fromJson(value);
        case 'GetCampaignAttribution200ResponseAttributionFirstTouch':
          return GetCampaignAttribution200ResponseAttributionFirstTouch.fromJson(value);
        case 'GetCampaignDeliveryConfidence200Response':
          return GetCampaignDeliveryConfidence200Response.fromJson(value);
        case 'GetCampaignDeliveryConfidence200ResponseFactors':
          return GetCampaignDeliveryConfidence200ResponseFactors.fromJson(value);
        case 'GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth':
          return GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.fromJson(value);
        case 'GetCampaignDeliveryConfidence200ResponseFactorsListQuality':
          return GetCampaignDeliveryConfidence200ResponseFactorsListQuality.fromJson(value);
        case 'GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation':
          return GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.fromJson(value);
        case 'GetCampaignFunnel200Response':
          return GetCampaignFunnel200Response.fromJson(value);
        case 'GetCampaignFunnel200ResponseFunnel':
          return GetCampaignFunnel200ResponseFunnel.fromJson(value);
        case 'GetCampaignFunnel200ResponseRates':
          return GetCampaignFunnel200ResponseRates.fromJson(value);
        case 'GetCampaignProviderIntelligence200Response':
          return GetCampaignProviderIntelligence200Response.fromJson(value);
        case 'GetCampaignProviderIntelligence200ResponseProvidersInner':
          return GetCampaignProviderIntelligence200ResponseProvidersInner.fromJson(value);
        case 'GetComplaintAssessment200Response':
          return GetComplaintAssessment200Response.fromJson(value);
        case 'GetDisengagedContacts200Response':
          return GetDisengagedContacts200Response.fromJson(value);
        case 'GetDisengagedContacts200ResponsePagination':
          return GetDisengagedContacts200ResponsePagination.fromJson(value);
        case 'GetDmarcDomain200Response':
          return GetDmarcDomain200Response.fromJson(value);
        case 'GetDmarcDomain200ResponseDomain':
          return GetDmarcDomain200ResponseDomain.fromJson(value);
        case 'GetDmarcDomain200ResponseDomainAllOfSummary':
          return GetDmarcDomain200ResponseDomainAllOfSummary.fromJson(value);
        case 'GetDmarcRecommendation200Response':
          return GetDmarcRecommendation200Response.fromJson(value);
        case 'GetDmarcRecommendation200ResponseRecommendation':
          return GetDmarcRecommendation200ResponseRecommendation.fromJson(value);
        case 'GetDmarcSources200Response':
          return GetDmarcSources200Response.fromJson(value);
        case 'GetDmarcSources200ResponseSourcesInner':
          return GetDmarcSources200ResponseSourcesInner.fromJson(value);
        case 'GetDmarcTrend200Response':
          return GetDmarcTrend200Response.fromJson(value);
        case 'GetDmarcTrend200ResponseTrendInner':
          return GetDmarcTrend200ResponseTrendInner.fromJson(value);
        case 'GetDomainHookEffectiveness200Response':
          return GetDomainHookEffectiveness200Response.fromJson(value);
        case 'GetDomainInsightsFunnel200Response':
          return GetDomainInsightsFunnel200Response.fromJson(value);
        case 'GetDomainInsightsTrends200Response':
          return GetDomainInsightsTrends200Response.fromJson(value);
        case 'GetEngagementScore200Response':
          return GetEngagementScore200Response.fromJson(value);
        case 'GetInactiveContactsReport200Response':
          return GetInactiveContactsReport200Response.fromJson(value);
        case 'GetInactiveContactsReport200ResponseByListInner':
          return GetInactiveContactsReport200ResponseByListInner.fromJson(value);
        case 'GetInboundMessage200Response':
          return GetInboundMessage200Response.fromJson(value);
        case 'GetLists200Response':
          return GetLists200Response.fromJson(value);
        case 'GetMessageEvents200Response':
          return GetMessageEvents200Response.fromJson(value);
        case 'GetMessageEvents200ResponseClicksInner':
          return GetMessageEvents200ResponseClicksInner.fromJson(value);
        case 'GetMessageEvents200ResponseEventsInner':
          return GetMessageEvents200ResponseEventsInner.fromJson(value);
        case 'GetMessageEvents200ResponseSummary':
          return GetMessageEvents200ResponseSummary.fromJson(value);
        case 'GetOooStatus200Response':
          return GetOooStatus200Response.fromJson(value);
        case 'GetPixelSettings200Response':
          return GetPixelSettings200Response.fromJson(value);
        case 'GetPresignedUploadRequest':
          return GetPresignedUploadRequest.fromJson(value);
        case 'GetReplyForwarding200Response':
          return GetReplyForwarding200Response.fromJson(value);
        case 'GetReputation200Response':
          return GetReputation200Response.fromJson(value);
        case 'GetReputationTimeline200Response':
          return GetReputationTimeline200Response.fromJson(value);
        case 'GetReputationTimeline200ResponseTimeline':
          return GetReputationTimeline200ResponseTimeline.fromJson(value);
        case 'GetReputationTimeline200ResponseTimelineTimelineInner':
          return GetReputationTimeline200ResponseTimelineTimelineInner.fromJson(value);
        case 'GetSenderHealth200Response':
          return GetSenderHealth200Response.fromJson(value);
        case 'GetSenderHealth200ResponseComponents':
          return GetSenderHealth200ResponseComponents.fromJson(value);
        case 'GetSenderHealth200ResponseComponentsDeliveryRate':
          return GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(value);
        case 'GetSenderHealth200ResponseVolume':
          return GetSenderHealth200ResponseVolume.fromJson(value);
        case 'GetSenderHealthTrend200Response':
          return GetSenderHealthTrend200Response.fromJson(value);
        case 'GetSenderHealthTrend200ResponseDataPointsInner':
          return GetSenderHealthTrend200ResponseDataPointsInner.fromJson(value);
        case 'GetSendingDomainIdentityScore200Response':
          return GetSendingDomainIdentityScore200Response.fromJson(value);
        case 'GetSendingStats200Response':
          return GetSendingStats200Response.fromJson(value);
        case 'GetSendingStats200ResponseStats':
          return GetSendingStats200ResponseStats.fromJson(value);
        case 'GetSubscribers200Response':
          return GetSubscribers200Response.fromJson(value);
        case 'HealthCheck200Response':
          return HealthCheck200Response.fromJson(value);
        case 'IdentityScoreCheck':
          return IdentityScoreCheck.fromJson(value);
        case 'ImportContactList200Response':
          return ImportContactList200Response.fromJson(value);
        case 'IntrospectToken200Response':
          return IntrospectToken200Response.fromJson(value);
        case 'Job':
          return Job.fromJson(value);
        case 'JobArtifacts':
          return JobArtifacts.fromJson(value);
        case 'JobListResponse':
          return JobListResponse.fromJson(value);
        case 'JobResponse':
          return JobResponse.fromJson(value);
        case 'JobSummary':
          return JobSummary.fromJson(value);
        case 'JwksResponse':
          return JwksResponse.fromJson(value);
        case 'JwksResponseKeysInner':
          return JwksResponseKeysInner.fromJson(value);
        case 'ListAlertRules200Response':
          return ListAlertRules200Response.fromJson(value);
        case 'ListBlacklistMonitors200Response':
          return ListBlacklistMonitors200Response.fromJson(value);
        case 'ListCampaigns200Response':
          return ListCampaigns200Response.fromJson(value);
        case 'ListContactLists200Response':
          return ListContactLists200Response.fromJson(value);
        case 'ListDmarcDomains200Response':
          return ListDmarcDomains200Response.fromJson(value);
        case 'ListInboundMessages200Response':
          return ListInboundMessages200Response.fromJson(value);
        case 'ListOooContacts200Response':
          return ListOooContacts200Response.fromJson(value);
        case 'ListSendingDomains200Response':
          return ListSendingDomains200Response.fromJson(value);
        case 'ListServerTests200Response':
          return ListServerTests200Response.fromJson(value);
        case 'ListSpamChecks200Response':
          return ListSpamChecks200Response.fromJson(value);
        case 'ListWebhookDeliveries200Response':
          return ListWebhookDeliveries200Response.fromJson(value);
        case 'ListWebhookDeliveries200ResponseDeliveriesInner':
          return ListWebhookDeliveries200ResponseDeliveriesInner.fromJson(value);
        case 'McpCapabilities':
          return McpCapabilities.fromJson(value);
        case 'McpCapabilitiesPillarsInner':
          return McpCapabilitiesPillarsInner.fromJson(value);
        case 'McpCapabilitiesPillarsInnerToolsInner':
          return McpCapabilitiesPillarsInnerToolsInner.fromJson(value);
        case 'OAuthClientRegistration':
          return OAuthClientRegistration.fromJson(value);
        case 'OAuthServerMetadata':
          return OAuthServerMetadata.fromJson(value);
        case 'Pagination':
          return Pagination.fromJson(value);
        case 'Policy':
          return Policy.fromJson(value);
        case 'PolicyListResponse':
          return PolicyListResponse.fromJson(value);
        case 'PolicyListResponseLimits':
          return PolicyListResponseLimits.fromJson(value);
        case 'PolicyPresetsResponse':
          return PolicyPresetsResponse.fromJson(value);
        case 'PolicyPresetsResponsePresetsInner':
          return PolicyPresetsResponsePresetsInner.fromJson(value);
        case 'PolicyResponse':
          return PolicyResponse.fromJson(value);
        case 'PolicyRule':
          return PolicyRule.fromJson(value);
        case 'PolicyRuleAction':
          return PolicyRuleAction.fromJson(value);
        case 'PolicyTestResponse':
          return PolicyTestResponse.fromJson(value);
        case 'PresignedUploadResponse':
          return PresignedUploadResponse.fromJson(value);
        case 'PresignedUploadResponseUpload':
          return PresignedUploadResponseUpload.fromJson(value);
        case 'ProductFacets':
          return ProductFacets.fromJson(value);
        case 'ProductFacetsCategoriesInner':
          return ProductFacetsCategoriesInner.fromJson(value);
        case 'ProductFacetsPriceRangesInner':
          return ProductFacetsPriceRangesInner.fromJson(value);
        case 'ProductFacetsStoresInner':
          return ProductFacetsStoresInner.fromJson(value);
        case 'QueryContactList200Response':
          return QueryContactList200Response.fromJson(value);
        case 'QueryContactList200ResponseEmailsInner':
          return QueryContactList200ResponseEmailsInner.fromJson(value);
        case 'QueryContactListRequest':
          return QueryContactListRequest.fromJson(value);
        case 'QueryContactListRequestFiltersInner':
          return QueryContactListRequestFiltersInner.fromJson(value);
        case 'RemoveSuppression200Response':
          return RemoveSuppression200Response.fromJson(value);
        case 'RemoveSuppressionRequest':
          return RemoveSuppressionRequest.fromJson(value);
        case 'ReplayWebhookDelivery200Response':
          return ReplayWebhookDelivery200Response.fromJson(value);
        case 'ResultsResponse':
          return ResultsResponse.fromJson(value);
        case 'RetryJob200Response':
          return RetryJob200Response.fromJson(value);
        case 'RunBlacklistCheck200Response':
          return RunBlacklistCheck200Response.fromJson(value);
        case 'RunBlacklistCheck200ResponseCheck':
          return RunBlacklistCheck200ResponseCheck.fromJson(value);
        case 'RunServerTest201Response':
          return RunServerTest201Response.fromJson(value);
        case 'RunServerTestRequest':
          return RunServerTestRequest.fromJson(value);
        case 'RunSpamCheck201Response':
          return RunSpamCheck201Response.fromJson(value);
        case 'RunSpamCheckRequest':
          return RunSpamCheckRequest.fromJson(value);
        case 'ScheduleCampaignRequest':
          return ScheduleCampaignRequest.fromJson(value);
        case 'SendingDomain':
          return SendingDomain.fromJson(value);
        case 'SendingDomainDnsRecords':
          return SendingDomainDnsRecords.fromJson(value);
        case 'SendingDomainDnsRecordsNs':
          return SendingDomainDnsRecordsNs.fromJson(value);
        case 'SendingDomainIdentityScore':
          return SendingDomainIdentityScore.fromJson(value);
        case 'SendingDomainIdentityScoreBreakdown':
          return SendingDomainIdentityScoreBreakdown.fromJson(value);
        case 'ServerTest':
          return ServerTest.fromJson(value);
        case 'ServerTestDnsChecks':
          return ServerTestDnsChecks.fromJson(value);
        case 'ServerTestMxRecordsInner':
          return ServerTestMxRecordsInner.fromJson(value);
        case 'ServerTestSmtpCheck':
          return ServerTestSmtpCheck.fromJson(value);
        case 'SpamCheck':
          return SpamCheck.fromJson(value);
        case 'SpamCheckChecks':
          return SpamCheckChecks.fromJson(value);
        case 'StoreConnection':
          return StoreConnection.fromJson(value);
        case 'StoreProduct':
          return StoreProduct.fromJson(value);
        case 'SubscribeRequest':
          return SubscribeRequest.fromJson(value);
        case 'Subscriber':
          return Subscriber.fromJson(value);
        case 'SubscriberList':
          return SubscriberList.fromJson(value);
        case 'SuppressDisengaged200Response':
          return SuppressDisengaged200Response.fromJson(value);
        case 'SuppressDisengagedRequest':
          return SuppressDisengagedRequest.fromJson(value);
        case 'SuppressionAuditResponse':
          return SuppressionAuditResponse.fromJson(value);
        case 'SuppressionAuditResponseEntriesInner':
          return SuppressionAuditResponseEntriesInner.fromJson(value);
        case 'SuppressionCheckResponse':
          return SuppressionCheckResponse.fromJson(value);
        case 'SuppressionEntry':
          return SuppressionEntry.fromJson(value);
        case 'SuppressionListResponse':
          return SuppressionListResponse.fromJson(value);
        case 'SuppressionStatsResponse':
          return SuppressionStatsResponse.fromJson(value);
        case 'SuppressionStatsResponseByType':
          return SuppressionStatsResponseByType.fromJson(value);
        case 'SyncResponse':
          return SyncResponse.fromJson(value);
        case 'TelemetrySummary':
          return TelemetrySummary.fromJson(value);
        case 'TelemetrySummaryRates':
          return TelemetrySummaryRates.fromJson(value);
        case 'TelemetrySummaryTopDomainsInner':
          return TelemetrySummaryTopDomainsInner.fromJson(value);
        case 'TelemetrySummaryTopReasonsInner':
          return TelemetrySummaryTopReasonsInner.fromJson(value);
        case 'TelemetrySummaryTotals':
          return TelemetrySummaryTotals.fromJson(value);
        case 'TestPolicyRequest':
          return TestPolicyRequest.fromJson(value);
        case 'TestPolicyRequestTestResult':
          return TestPolicyRequestTestResult.fromJson(value);
        case 'TrackEventRequest':
          return TrackEventRequest.fromJson(value);
        case 'TrackEventResponse':
          return TrackEventResponse.fromJson(value);
        case 'UnsubscribeSubscriber200Response':
          return UnsubscribeSubscriber200Response.fromJson(value);
        case 'UpdateAlertRuleRequest':
          return UpdateAlertRuleRequest.fromJson(value);
        case 'UpdateContactRequest':
          return UpdateContactRequest.fromJson(value);
        case 'UpdateOooContactRequest':
          return UpdateOooContactRequest.fromJson(value);
        case 'UpdatePixelSettingsRequest':
          return UpdatePixelSettingsRequest.fromJson(value);
        case 'UpdatePolicyRequest':
          return UpdatePolicyRequest.fromJson(value);
        case 'UpdateReplyForwardingRequest':
          return UpdateReplyForwardingRequest.fromJson(value);
        case 'ValidateBatch200Response':
          return ValidateBatch200Response.fromJson(value);
        case 'ValidateBatch200ResponseSummary':
          return ValidateBatch200ResponseSummary.fromJson(value);
        case 'ValidateBatchRequest':
          return ValidateBatchRequest.fromJson(value);
        case 'ValidateRequest':
          return ValidateRequest.fromJson(value);
        case 'ValidationResponse':
          return ValidationResponse.fromJson(value);
        case 'ValidationResponsePolicyApplied':
          return ValidationResponsePolicyApplied.fromJson(value);
        case 'ValidationResponseSuppressionMatch':
          return ValidationResponseSuppressionMatch.fromJson(value);
        case 'ValidationResult':
          return ValidationResult.fromJson(value);
        case 'ValidationResultSuppression':
          return ValidationResultSuppression.fromJson(value);
        case 'WebhookEvent':
          return WebhookEvent.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
