//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboundProcessingApi {
  InboundProcessingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Correct inbound message classification
  ///
  /// Submit a human correction for an inbound message classification. Requires Pro+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Message ID
  ///
  /// * [CorrectInboundMessageRequest] correctInboundMessageRequest (required):
  Future<Response> correctInboundMessageWithHttpInfo(String messageId, CorrectInboundMessageRequest correctInboundMessageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/inbound-messages/{message_id}/correction'
      .replaceAll('{message_id}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = correctInboundMessageRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Correct inbound message classification
  ///
  /// Submit a human correction for an inbound message classification. Requires Pro+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Message ID
  ///
  /// * [CorrectInboundMessageRequest] correctInboundMessageRequest (required):
  Future<GetInboundMessage200Response?> correctInboundMessage(String messageId, CorrectInboundMessageRequest correctInboundMessageRequest,) async {
    final response = await correctInboundMessageWithHttpInfo(messageId, correctInboundMessageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetInboundMessage200Response',) as GetInboundMessage200Response;
    
    }
    return null;
  }

  /// Get bounce statistics
  ///
  /// Get bounce and complaint statistics grouped by time period. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [String] period:
  ///   Time period
  ///
  /// * [String] groupBy:
  ///   Grouping interval
  Future<Response> getBounceStatsWithHttpInfo({ String? domainId, String? period, String? groupBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bounce-stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'group_by', groupBy));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get bounce statistics
  ///
  /// Get bounce and complaint statistics grouped by time period. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [String] period:
  ///   Time period
  ///
  /// * [String] groupBy:
  ///   Grouping interval
  Future<GetBounceStats200Response?> getBounceStats({ String? domainId, String? period, String? groupBy, }) async {
    final response = await getBounceStatsWithHttpInfo( domainId: domainId, period: period, groupBy: groupBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetBounceStats200Response',) as GetBounceStats200Response;
    
    }
    return null;
  }

  /// Get bounce statistics summary
  ///
  /// Get aggregated bounce and complaint statistics. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [String] period:
  ///   Time period
  Future<Response> getBounceStatsSummaryWithHttpInfo({ String? domainId, String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bounce-stats/summary';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get bounce statistics summary
  ///
  /// Get aggregated bounce and complaint statistics. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [String] period:
  ///   Time period
  Future<GetBounceStatsSummary200Response?> getBounceStatsSummary({ String? domainId, String? period, }) async {
    final response = await getBounceStatsSummaryWithHttpInfo( domainId: domainId, period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetBounceStatsSummary200Response',) as GetBounceStatsSummary200Response;
    
    }
    return null;
  }

  /// Get complaint assessment
  ///
  /// Assess complaint risk based on recent inbound data. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [String] period:
  ///   Time period
  Future<Response> getComplaintAssessmentWithHttpInfo({ String? domainId, String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/complaint-assessment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get complaint assessment
  ///
  /// Assess complaint risk based on recent inbound data. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [String] period:
  ///   Time period
  Future<GetComplaintAssessment200Response?> getComplaintAssessment({ String? domainId, String? period, }) async {
    final response = await getComplaintAssessmentWithHttpInfo( domainId: domainId, period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetComplaintAssessment200Response',) as GetComplaintAssessment200Response;
    
    }
    return null;
  }

  /// Get inbound message
  ///
  /// Get a single inbound message with full body content. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Message ID
  Future<Response> getInboundMessageWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/inbound-messages/{message_id}'
      .replaceAll('{message_id}', messageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get inbound message
  ///
  /// Get a single inbound message with full body content. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Message ID
  Future<GetInboundMessage200Response?> getInboundMessage(String messageId,) async {
    final response = await getInboundMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetInboundMessage200Response',) as GetInboundMessage200Response;
    
    }
    return null;
  }

  /// List inbound messages
  ///
  /// List inbound messages (bounces, complaints, replies, OOO). Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category:
  ///   Filter by category
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [DateTime] since:
  ///   Start date (ISO 8601)
  ///
  /// * [DateTime] until:
  ///   End date (ISO 8601)
  ///
  /// * [bool] isRead:
  ///   Filter by read status
  ///
  /// * [String] recipient:
  ///   Filter by original recipient
  ///
  /// * [String] search:
  ///   Search in subject and body
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> listInboundMessagesWithHttpInfo({ String? category, String? domainId, DateTime? since, DateTime? until, bool? isRead, String? recipient, String? search, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/inbound-messages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (until != null) {
      queryParams.addAll(_queryParams('', 'until', until));
    }
    if (isRead != null) {
      queryParams.addAll(_queryParams('', 'is_read', isRead));
    }
    if (recipient != null) {
      queryParams.addAll(_queryParams('', 'recipient', recipient));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List inbound messages
  ///
  /// List inbound messages (bounces, complaints, replies, OOO). Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] category:
  ///   Filter by category
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [DateTime] since:
  ///   Start date (ISO 8601)
  ///
  /// * [DateTime] until:
  ///   End date (ISO 8601)
  ///
  /// * [bool] isRead:
  ///   Filter by read status
  ///
  /// * [String] recipient:
  ///   Filter by original recipient
  ///
  /// * [String] search:
  ///   Search in subject and body
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ListInboundMessages200Response?> listInboundMessages({ String? category, String? domainId, DateTime? since, DateTime? until, bool? isRead, String? recipient, String? search, int? page, int? perPage, }) async {
    final response = await listInboundMessagesWithHttpInfo( category: category, domainId: domainId, since: since, until: until, isRead: isRead, recipient: recipient, search: search, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListInboundMessages200Response',) as ListInboundMessages200Response;
    
    }
    return null;
  }
}
