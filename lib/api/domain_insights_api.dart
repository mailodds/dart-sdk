//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class DomainInsightsApi {
  DomainInsightsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get hook effectiveness metrics
  ///
  /// Get webhook delivery effectiveness metrics for a sending domain. Requires Pro+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   Sending domain ID
  ///
  /// * [int] days:
  ///   Lookback period in days
  Future<Response> getDomainHookEffectivenessWithHttpInfo(String domainId, { int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/insights/hook-effectiveness'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get hook effectiveness metrics
  ///
  /// Get webhook delivery effectiveness metrics for a sending domain. Requires Pro+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   Sending domain ID
  ///
  /// * [int] days:
  ///   Lookback period in days
  Future<GetDomainHookEffectiveness200Response?> getDomainHookEffectiveness(String domainId, { int? days, }) async {
    final response = await getDomainHookEffectivenessWithHttpInfo(domainId,  days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDomainHookEffectiveness200Response',) as GetDomainHookEffectiveness200Response;
    
    }
    return null;
  }

  /// Get domain engagement funnel
  ///
  /// Get engagement funnel for a sending domain (sent > delivered > opened > clicked > converted). Requires Pro+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   Sending domain ID
  ///
  /// * [int] days:
  ///   Lookback period in days
  Future<Response> getDomainInsightsFunnelWithHttpInfo(String domainId, { int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/insights/funnel'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get domain engagement funnel
  ///
  /// Get engagement funnel for a sending domain (sent > delivered > opened > clicked > converted). Requires Pro+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   Sending domain ID
  ///
  /// * [int] days:
  ///   Lookback period in days
  Future<GetDomainInsightsFunnel200Response?> getDomainInsightsFunnel(String domainId, { int? days, }) async {
    final response = await getDomainInsightsFunnelWithHttpInfo(domainId,  days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDomainInsightsFunnel200Response',) as GetDomainInsightsFunnel200Response;
    
    }
    return null;
  }

  /// Get domain engagement trends
  ///
  /// Get daily engagement trend data for a sending domain. Requires Pro+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   Sending domain ID
  ///
  /// * [int] days:
  ///   Lookback period in days
  Future<Response> getDomainInsightsTrendsWithHttpInfo(String domainId, { int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/insights/trends'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get domain engagement trends
  ///
  /// Get daily engagement trend data for a sending domain. Requires Pro+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   Sending domain ID
  ///
  /// * [int] days:
  ///   Lookback period in days
  Future<GetDomainInsightsTrends200Response?> getDomainInsightsTrends(String domainId, { int? days, }) async {
    final response = await getDomainInsightsTrendsWithHttpInfo(domainId,  days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDomainInsightsTrends200Response',) as GetDomainInsightsTrends200Response;
    
    }
    return null;
  }
}
