//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CampaignsApi {
  CampaignsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel a campaign
  ///
  /// Cancel a scheduled or in-progress campaign. Messages already delivered are not recalled.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> cancelCampaignWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/cancel'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Cancel a campaign
  ///
  /// Cancel a scheduled or in-progress campaign. Messages already delivered are not recalled.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<CampaignResponse?> cancelCampaign(String campaignId,) async {
    final response = await cancelCampaignWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponse',) as CampaignResponse;
    
    }
    return null;
  }

  /// Create a campaign
  ///
  /// Create a new email campaign. Campaigns target a subscriber list and support A/B variant testing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCampaignRequest] createCampaignRequest (required):
  Future<Response> createCampaignWithHttpInfo(CreateCampaignRequest createCampaignRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns';

    // ignore: prefer_final_locals
    Object? postBody = createCampaignRequest;

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

  /// Create a campaign
  ///
  /// Create a new email campaign. Campaigns target a subscriber list and support A/B variant testing.
  ///
  /// Parameters:
  ///
  /// * [CreateCampaignRequest] createCampaignRequest (required):
  Future<CampaignResponse?> createCampaign(CreateCampaignRequest createCampaignRequest,) async {
    final response = await createCampaignWithHttpInfo(createCampaignRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponse',) as CampaignResponse;
    
    }
    return null;
  }

  /// Create A/B variant
  ///
  /// Add an A/B test variant to a campaign. Each variant has its own subject, body, and traffic weight. The campaign must be in draft status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  ///
  /// * [CreateVariantRequest] createVariantRequest (required):
  Future<Response> createCampaignVariantWithHttpInfo(String campaignId, CreateVariantRequest createVariantRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/variants'
      .replaceAll('{campaign_id}', campaignId);

    // ignore: prefer_final_locals
    Object? postBody = createVariantRequest;

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

  /// Create A/B variant
  ///
  /// Add an A/B test variant to a campaign. Each variant has its own subject, body, and traffic weight. The campaign must be in draft status.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  ///
  /// * [CreateVariantRequest] createVariantRequest (required):
  Future<CreateCampaignVariant201Response?> createCampaignVariant(String campaignId, CreateVariantRequest createVariantRequest,) async {
    final response = await createCampaignVariantWithHttpInfo(campaignId, createVariantRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateCampaignVariant201Response',) as CreateCampaignVariant201Response;
    
    }
    return null;
  }

  /// Get campaign with stats
  ///
  /// Get a campaign by ID including delivery statistics and engagement metrics.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> getCampaignWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}'
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

  /// Get campaign with stats
  ///
  /// Get a campaign by ID including delivery statistics and engagement metrics.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<CampaignResponse?> getCampaign(String campaignId,) async {
    final response = await getCampaignWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponse',) as CampaignResponse;
    
    }
    return null;
  }

  /// List campaigns
  ///
  /// List all campaigns for the authenticated account with pagination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  ///
  /// * [String] status:
  ///   Filter by campaign status
  Future<Response> listCampaignsWithHttpInfo({ int? page, int? perPage, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// List campaigns
  ///
  /// List all campaigns for the authenticated account with pagination.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  ///
  /// * [String] status:
  ///   Filter by campaign status
  Future<ListCampaigns200Response?> listCampaigns({ int? page, int? perPage, String? status, }) async {
    final response = await listCampaignsWithHttpInfo( page: page, perPage: perPage, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListCampaigns200Response',) as ListCampaigns200Response;
    
    }
    return null;
  }

  /// Schedule a campaign
  ///
  /// Schedule a campaign for future delivery. Provide a send_at timestamp in ISO 8601 format.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  ///
  /// * [ScheduleCampaignRequest] scheduleCampaignRequest (required):
  Future<Response> scheduleCampaignWithHttpInfo(String campaignId, ScheduleCampaignRequest scheduleCampaignRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/schedule'
      .replaceAll('{campaign_id}', campaignId);

    // ignore: prefer_final_locals
    Object? postBody = scheduleCampaignRequest;

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

  /// Schedule a campaign
  ///
  /// Schedule a campaign for future delivery. Provide a send_at timestamp in ISO 8601 format.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  ///
  /// * [ScheduleCampaignRequest] scheduleCampaignRequest (required):
  Future<CampaignResponse?> scheduleCampaign(String campaignId, ScheduleCampaignRequest scheduleCampaignRequest,) async {
    final response = await scheduleCampaignWithHttpInfo(campaignId, scheduleCampaignRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponse',) as CampaignResponse;
    
    }
    return null;
  }

  /// Send a campaign
  ///
  /// Begin sending a campaign immediately. The campaign must be in draft status with at least one variant and a target list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<Response> sendCampaignWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/send'
      .replaceAll('{campaign_id}', campaignId);

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

  /// Send a campaign
  ///
  /// Begin sending a campaign immediately. The campaign must be in draft status with at least one variant and a target list.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///   Campaign UUID
  Future<CampaignResponse?> sendCampaign(String campaignId,) async {
    final response = await sendCampaignWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponse',) as CampaignResponse;
    
    }
    return null;
  }
}
