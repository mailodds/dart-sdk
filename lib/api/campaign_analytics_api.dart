//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CampaignAnalyticsApi {
  CampaignAnalyticsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get A/B test results
  ///
  /// Get per-variant performance metrics for an A/B test campaign including open rate, click rate, and statistical confidence.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> getCampaignABResultsWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/ab-results'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Get A/B test results
  ///
  /// Get per-variant performance metrics for an A/B test campaign including open rate, click rate, and statistical confidence.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<GetCampaignABResults200Response?> getCampaignABResults(String campaignId,) async {
    final response = await getCampaignABResultsWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCampaignABResults200Response',) as GetCampaignABResults200Response;
    
    }
    return null;
  }

  /// Get campaign attribution
  ///
  /// Get first-touch and last-touch attribution comparison for campaign conversions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> getCampaignAttributionWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/conversions/attribution'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Get campaign attribution
  ///
  /// Get first-touch and last-touch attribution comparison for campaign conversions.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<GetCampaignAttribution200Response?> getCampaignAttribution(String campaignId,) async {
    final response = await getCampaignAttributionWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCampaignAttribution200Response',) as GetCampaignAttribution200Response;
    
    }
    return null;
  }

  /// Get pre-send delivery confidence
  ///
  /// Get a predicted delivery confidence score before sending a campaign. Evaluates list quality, sender reputation, and domain authentication.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> getCampaignDeliveryConfidenceWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/delivery-confidence'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Get pre-send delivery confidence
  ///
  /// Get a predicted delivery confidence score before sending a campaign. Evaluates list quality, sender reputation, and domain authentication.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<GetCampaignDeliveryConfidence200Response?> getCampaignDeliveryConfidence(String campaignId,) async {
    final response = await getCampaignDeliveryConfidenceWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCampaignDeliveryConfidence200Response',) as GetCampaignDeliveryConfidence200Response;
    
    }
    return null;
  }

  /// Get campaign funnel
  ///
  /// Get the full delivery and engagement funnel for a campaign showing progression from sent through delivered, opened, and clicked.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> getCampaignFunnelWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/funnel'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Get campaign funnel
  ///
  /// Get the full delivery and engagement funnel for a campaign showing progression from sent through delivered, opened, and clicked.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<GetCampaignFunnel200Response?> getCampaignFunnel(String campaignId,) async {
    final response = await getCampaignFunnelWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCampaignFunnel200Response',) as GetCampaignFunnel200Response;
    
    }
    return null;
  }

  /// Get provider intelligence
  ///
  /// Get per-provider delivery and engagement breakdown for a campaign (e.g. Gmail, Outlook, Yahoo).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> getCampaignProviderIntelligenceWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/provider-intelligence'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Get provider intelligence
  ///
  /// Get per-provider delivery and engagement breakdown for a campaign (e.g. Gmail, Outlook, Yahoo).
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<GetCampaignProviderIntelligence200Response?> getCampaignProviderIntelligence(String campaignId,) async {
    final response = await getCampaignProviderIntelligenceWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCampaignProviderIntelligence200Response',) as GetCampaignProviderIntelligence200Response;
    
    }
    return null;
  }
}
