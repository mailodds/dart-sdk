//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class TemplateVersionsApi {
  TemplateVersionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Start canary deployment
  ///
  /// Start a canary deployment for a template version with a specified traffic percentage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<Response> canaryTemplateVersionWithHttpInfo(String campaignId, String versionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions/{version_id}/canary'
      .replaceAll('{campaign_id}', campaignId)
      .replaceAll('{version_id}', versionId);

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

  /// Start canary deployment
  ///
  /// Start a canary deployment for a template version with a specified traffic percentage.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<void> canaryTemplateVersion(String campaignId, String versionId,) async {
    final response = await canaryTemplateVersionWithHttpInfo(campaignId, versionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a template version
  ///
  /// Create a new template version for a campaign.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  Future<Response> createTemplateVersionWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions'
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

  /// Create a template version
  ///
  /// Create a new template version for a campaign.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  Future<void> createTemplateVersion(String campaignId,) async {
    final response = await createTemplateVersionWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a template version
  ///
  /// Retrieve a specific template version by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<Response> getTemplateVersionWithHttpInfo(String campaignId, String versionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions/{version_id}'
      .replaceAll('{campaign_id}', campaignId)
      .replaceAll('{version_id}', versionId);

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

  /// Get a template version
  ///
  /// Retrieve a specific template version by ID.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<void> getTemplateVersion(String campaignId, String versionId,) async {
    final response = await getTemplateVersionWithHttpInfo(campaignId, versionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List template versions
  ///
  /// List all template versions for a campaign.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  Future<Response> listTemplateVersionsWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions'
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

  /// List template versions
  ///
  /// List all template versions for a campaign.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  Future<void> listTemplateVersions(String campaignId,) async {
    final response = await listTemplateVersionsWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Promote a template version
  ///
  /// Promote a template version to active for the campaign.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<Response> promoteTemplateVersionWithHttpInfo(String campaignId, String versionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions/{version_id}/promote'
      .replaceAll('{campaign_id}', campaignId)
      .replaceAll('{version_id}', versionId);

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

  /// Promote a template version
  ///
  /// Promote a template version to active for the campaign.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<void> promoteTemplateVersion(String campaignId, String versionId,) async {
    final response = await promoteTemplateVersionWithHttpInfo(campaignId, versionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Rollback template version
  ///
  /// Rollback the canary deployment and revert to the previous active version.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  Future<Response> rollbackTemplateVersionWithHttpInfo(String campaignId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions/rollback'
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

  /// Rollback template version
  ///
  /// Rollback the canary deployment and revert to the previous active version.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  Future<void> rollbackTemplateVersion(String campaignId,) async {
    final response = await rollbackTemplateVersionWithHttpInfo(campaignId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a template version
  ///
  /// Update an existing template version.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<Response> updateTemplateVersionWithHttpInfo(String campaignId, String versionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/campaigns/{campaign_id}/template-versions/{version_id}'
      .replaceAll('{campaign_id}', campaignId)
      .replaceAll('{version_id}', versionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a template version
  ///
  /// Update an existing template version.
  ///
  /// Parameters:
  ///
  /// * [String] campaignId (required):
  ///
  /// * [String] versionId (required):
  Future<void> updateTemplateVersion(String campaignId, String versionId,) async {
    final response = await updateTemplateVersionWithHttpInfo(campaignId, versionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
