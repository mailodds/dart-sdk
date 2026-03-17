//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class EngagementApi {
  EngagementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List disengaged contacts
  ///
  /// List contacts that have not engaged within the specified period. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] inactiveDays:
  ///   Days of inactivity
  ///
  /// * [int] minSends:
  ///   Minimum emails sent to qualify
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> getDisengagedContactsWithHttpInfo({ int? inactiveDays, int? minSends, String? domainId, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engagement/disengaged';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inactiveDays != null) {
      queryParams.addAll(_queryParams('', 'inactive_days', inactiveDays));
    }
    if (minSends != null) {
      queryParams.addAll(_queryParams('', 'min_sends', minSends));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
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

  /// List disengaged contacts
  ///
  /// List contacts that have not engaged within the specified period. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [int] inactiveDays:
  ///   Days of inactivity
  ///
  /// * [int] minSends:
  ///   Minimum emails sent to qualify
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<GetDisengagedContacts200Response?> getDisengagedContacts({ int? inactiveDays, int? minSends, String? domainId, int? page, int? perPage, }) async {
    final response = await getDisengagedContactsWithHttpInfo( inactiveDays: inactiveDays, minSends: minSends, domainId: domainId, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDisengagedContacts200Response',) as GetDisengagedContacts200Response;
    
    }
    return null;
  }

  /// Get engagement score
  ///
  /// Get the engagement score for a specific email address. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   Email address
  Future<Response> getEngagementScoreWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engagement/score/{email}'
      .replaceAll('{email}', email);

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

  /// Get engagement score
  ///
  /// Get the engagement score for a specific email address. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   Email address
  Future<GetEngagementScore200Response?> getEngagementScore(String email,) async {
    final response = await getEngagementScoreWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetEngagementScore200Response',) as GetEngagementScore200Response;
    
    }
    return null;
  }

  /// Get engagement summary
  ///
  /// Get aggregate engagement metrics across all contacts. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  Future<Response> getEngagementSummaryWithHttpInfo({ String? domainId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engagement/summary';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
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

  /// Get engagement summary
  ///
  /// Get aggregate engagement metrics across all contacts. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId:
  ///   Filter by sending domain ID
  Future<GetBounceStatsSummary200Response?> getEngagementSummary({ String? domainId, }) async {
    final response = await getEngagementSummaryWithHttpInfo( domainId: domainId, );
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

  /// Suppress disengaged contacts
  ///
  /// Add disengaged contacts to the suppression list. Supports dry_run mode. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SuppressDisengagedRequest] suppressDisengagedRequest (required):
  Future<Response> suppressDisengagedWithHttpInfo(SuppressDisengagedRequest suppressDisengagedRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/engagement/suppress-disengaged';

    // ignore: prefer_final_locals
    Object? postBody = suppressDisengagedRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Suppress disengaged contacts
  ///
  /// Add disengaged contacts to the suppression list. Supports dry_run mode. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [SuppressDisengagedRequest] suppressDisengagedRequest (required):
  Future<SuppressDisengaged200Response?> suppressDisengaged(SuppressDisengagedRequest suppressDisengagedRequest,) async {
    final response = await suppressDisengagedWithHttpInfo(suppressDisengagedRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuppressDisengaged200Response',) as SuppressDisengaged200Response;
    
    }
    return null;
  }
}
