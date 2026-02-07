//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SystemApi {
  SystemApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get validation telemetry
  ///
  /// Get validation metrics for your account. Useful for building dashboards and monitoring. Supports ETag caching.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] window:
  ///   Time window for metrics
  Future<Response> getTelemetrySummaryWithHttpInfo({ String? window, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/telemetry/summary';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (window != null) {
      queryParams.addAll(_queryParams('', 'window', window));
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

  /// Get validation telemetry
  ///
  /// Get validation metrics for your account. Useful for building dashboards and monitoring. Supports ETag caching.
  ///
  /// Parameters:
  ///
  /// * [String] window:
  ///   Time window for metrics
  Future<TelemetrySummary?> getTelemetrySummary({ String? window, }) async {
    final response = await getTelemetrySummaryWithHttpInfo( window: window, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TelemetrySummary',) as TelemetrySummary;
    
    }
    return null;
  }

  /// Health check
  ///
  /// Check API health status. No authentication required.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> healthCheckWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/health';

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

  /// Health check
  ///
  /// Check API health status. No authentication required.
  Future<HealthCheck200Response?> healthCheck() async {
    final response = await healthCheckWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthCheck200Response',) as HealthCheck200Response;
    
    }
    return null;
  }
}
