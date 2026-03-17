//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReputationApi {
  ReputationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get account reputation
  ///
  /// Get the aggregate reputation score and breakdown for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Evaluation period
  Future<Response> getReputationWithHttpInfo({ String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation';

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

  /// Get account reputation
  ///
  /// Get the aggregate reputation score and breakdown for the account.
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Evaluation period
  Future<GetReputation200Response?> getReputation({ String? period, }) async {
    final response = await getReputationWithHttpInfo( period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetReputation200Response',) as GetReputation200Response;
    
    }
    return null;
  }

  /// Get reputation timeline
  ///
  /// Get reputation metrics over time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Timeline period
  Future<Response> getReputationTimelineWithHttpInfo({ String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation/timeline';

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

  /// Get reputation timeline
  ///
  /// Get reputation metrics over time.
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Timeline period
  Future<GetReputationTimeline200Response?> getReputationTimeline({ String? period, }) async {
    final response = await getReputationTimelineWithHttpInfo( period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetReputationTimeline200Response',) as GetReputationTimeline200Response;
    
    }
    return null;
  }
}
