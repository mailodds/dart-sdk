//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class SenderHealthApi {
  SenderHealthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get sender health score
  ///
  /// Get an aggregate sender health score (0-100) across all sending domains. Factors in delivery rate, bounce rate, complaint rate, and authentication status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Time period for health calculation
  Future<Response> getSenderHealthWithHttpInfo({ String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sender-health';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get sender health score
  ///
  /// Get an aggregate sender health score (0-100) across all sending domains. Factors in delivery rate, bounce rate, complaint rate, and authentication status.
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Time period for health calculation
  Future<GetSenderHealth200Response?> getSenderHealth({ String? period, }) async {
    final response = await getSenderHealthWithHttpInfo( period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSenderHealth200Response',) as GetSenderHealth200Response;
    
    }
    return null;
  }

  /// Get sender health trend
  ///
  /// Get historical sender health scores over time for trend analysis. Returns daily data points for the requested period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Time period for trend data
  Future<Response> getSenderHealthTrendWithHttpInfo({ String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sender-health/trend';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get sender health trend
  ///
  /// Get historical sender health scores over time for trend analysis. Returns daily data points for the requested period.
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Time period for trend data
  Future<GetSenderHealthTrend200Response?> getSenderHealthTrend({ String? period, }) async {
    final response = await getSenderHealthTrendWithHttpInfo( period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSenderHealthTrend200Response',) as GetSenderHealthTrend200Response;
    
    }
    return null;
  }
}
