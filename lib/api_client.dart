//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.mailodds.com/v1', this.authentication,});

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
        case 'AddPolicyRule201Response':
          return AddPolicyRule201Response.fromJson(value);
        case 'AddSuppressionRequest':
          return AddSuppressionRequest.fromJson(value);
        case 'AddSuppressionRequestEntriesInner':
          return AddSuppressionRequestEntriesInner.fromJson(value);
        case 'AddSuppressionResponse':
          return AddSuppressionResponse.fromJson(value);
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
        case 'CheckSuppressionRequest':
          return CheckSuppressionRequest.fromJson(value);
        case 'ConfirmSubscription200Response':
          return ConfirmSubscription200Response.fromJson(value);
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
        case 'DeleteJob200Response':
          return DeleteJob200Response.fromJson(value);
        case 'DeletePolicy200Response':
          return DeletePolicy200Response.fromJson(value);
        case 'DeletePolicyRule200Response':
          return DeletePolicyRule200Response.fromJson(value);
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
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'GetLists200Response':
          return GetLists200Response.fromJson(value);
        case 'GetPresignedUploadRequest':
          return GetPresignedUploadRequest.fromJson(value);
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
        case 'Job':
          return Job.fromJson(value);
        case 'JobListResponse':
          return JobListResponse.fromJson(value);
        case 'JobResponse':
          return JobResponse.fromJson(value);
        case 'JobSummary':
          return JobSummary.fromJson(value);
        case 'ListSendingDomains200Response':
          return ListSendingDomains200Response.fromJson(value);
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
        case 'RemoveSuppression200Response':
          return RemoveSuppression200Response.fromJson(value);
        case 'RemoveSuppressionRequest':
          return RemoveSuppressionRequest.fromJson(value);
        case 'ResultsResponse':
          return ResultsResponse.fromJson(value);
        case 'SendingDomain':
          return SendingDomain.fromJson(value);
        case 'SendingDomainDnsRecords':
          return SendingDomainDnsRecords.fromJson(value);
        case 'SendingDomainDnsRecordsNs':
          return SendingDomainDnsRecordsNs.fromJson(value);
        case 'SendingDomainIdentityScore':
          return SendingDomainIdentityScore.fromJson(value);
        case 'SendingDomainIdentityScoreChecks':
          return SendingDomainIdentityScoreChecks.fromJson(value);
        case 'SendingDomainIdentityScoreChecksDkim':
          return SendingDomainIdentityScoreChecksDkim.fromJson(value);
        case 'SendingDomainIdentityScoreChecksDmarc':
          return SendingDomainIdentityScoreChecksDmarc.fromJson(value);
        case 'SubscribeRequest':
          return SubscribeRequest.fromJson(value);
        case 'Subscriber':
          return Subscriber.fromJson(value);
        case 'SubscriberList':
          return SubscriberList.fromJson(value);
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
        case 'UnsubscribeSubscriber200Response':
          return UnsubscribeSubscriber200Response.fromJson(value);
        case 'UpdatePolicyRequest':
          return UpdatePolicyRequest.fromJson(value);
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
