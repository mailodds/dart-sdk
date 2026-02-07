//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SuppressionListsApi {
  SuppressionListsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add suppression entries
  ///
  /// Add emails or domains to the suppression list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddSuppressionRequest] addSuppressionRequest (required):
  Future<Response> addSuppressionWithHttpInfo(AddSuppressionRequest addSuppressionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/suppression';

    // ignore: prefer_final_locals
    Object? postBody = addSuppressionRequest;

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

  /// Add suppression entries
  ///
  /// Add emails or domains to the suppression list.
  ///
  /// Parameters:
  ///
  /// * [AddSuppressionRequest] addSuppressionRequest (required):
  Future<AddSuppressionResponse?> addSuppression(AddSuppressionRequest addSuppressionRequest,) async {
    final response = await addSuppressionWithHttpInfo(addSuppressionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddSuppressionResponse',) as AddSuppressionResponse;
    
    }
    return null;
  }

  /// Check suppression status
  ///
  /// Check if an email is suppressed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CheckSuppressionRequest] checkSuppressionRequest (required):
  Future<Response> checkSuppressionWithHttpInfo(CheckSuppressionRequest checkSuppressionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/suppression/check';

    // ignore: prefer_final_locals
    Object? postBody = checkSuppressionRequest;

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

  /// Check suppression status
  ///
  /// Check if an email is suppressed.
  ///
  /// Parameters:
  ///
  /// * [CheckSuppressionRequest] checkSuppressionRequest (required):
  Future<SuppressionCheckResponse?> checkSuppression(CheckSuppressionRequest checkSuppressionRequest,) async {
    final response = await checkSuppressionWithHttpInfo(checkSuppressionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuppressionCheckResponse',) as SuppressionCheckResponse;
    
    }
    return null;
  }

  /// Get suppression statistics
  ///
  /// Get statistics about the suppression list.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSuppressionStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/suppression/stats';

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

  /// Get suppression statistics
  ///
  /// Get statistics about the suppression list.
  Future<SuppressionStatsResponse?> getSuppressionStats() async {
    final response = await getSuppressionStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuppressionStatsResponse',) as SuppressionStatsResponse;
    
    }
    return null;
  }

  /// List suppression entries
  ///
  /// List all suppression entries for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] type:
  ///
  /// * [String] search:
  Future<Response> listSuppressionWithHttpInfo({ int? page, int? perPage, String? type, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/suppression';

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
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List suppression entries
  ///
  /// List all suppression entries for the account.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] type:
  ///
  /// * [String] search:
  Future<SuppressionListResponse?> listSuppression({ int? page, int? perPage, String? type, String? search, }) async {
    final response = await listSuppressionWithHttpInfo( page: page, perPage: perPage, type: type, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuppressionListResponse',) as SuppressionListResponse;
    
    }
    return null;
  }

  /// Remove suppression entries
  ///
  /// Remove emails or domains from the suppression list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RemoveSuppressionRequest] removeSuppressionRequest (required):
  Future<Response> removeSuppressionWithHttpInfo(RemoveSuppressionRequest removeSuppressionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/suppression';

    // ignore: prefer_final_locals
    Object? postBody = removeSuppressionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove suppression entries
  ///
  /// Remove emails or domains from the suppression list.
  ///
  /// Parameters:
  ///
  /// * [RemoveSuppressionRequest] removeSuppressionRequest (required):
  Future<RemoveSuppression200Response?> removeSuppression(RemoveSuppressionRequest removeSuppressionRequest,) async {
    final response = await removeSuppressionWithHttpInfo(removeSuppressionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RemoveSuppression200Response',) as RemoveSuppression200Response;
    
    }
    return null;
  }
}
