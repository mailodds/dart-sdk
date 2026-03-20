//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class DeliverabilityAdvisorApi {
  DeliverabilityAdvisorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Dismiss a deliverability recommendation
  ///
  /// Dismiss a deliverability recommendation so it no longer appears.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] recommendationId (required):
  Future<Response> dismissDeliverabilityRecommendationWithHttpInfo(String recommendationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deliverability/recommendations/{recommendation_id}/dismiss'
      .replaceAll('{recommendation_id}', recommendationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Dismiss a deliverability recommendation
  ///
  /// Dismiss a deliverability recommendation so it no longer appears.
  ///
  /// Parameters:
  ///
  /// * [String] recommendationId (required):
  Future<void> dismissDeliverabilityRecommendation(String recommendationId,) async {
    final response = await dismissDeliverabilityRecommendationWithHttpInfo(recommendationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get deliverability recommendations
  ///
  /// Retrieve actionable deliverability recommendations for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeliverabilityRecommendationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deliverability/recommendations';

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

  /// Get deliverability recommendations
  ///
  /// Retrieve actionable deliverability recommendations for the account.
  Future<void> getDeliverabilityRecommendations() async {
    final response = await getDeliverabilityRecommendationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
