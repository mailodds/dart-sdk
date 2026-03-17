//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class StoreConnectionsApi {
  StoreConnectionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a store connection
  ///
  /// Connect an e-commerce store (WooCommerce, PrestaShop, Shopify, or product feed). After creation, trigger a sync to import products.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateStoreRequest] createStoreRequest (required):
  Future<Response> createStoreWithHttpInfo(CreateStoreRequest createStoreRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores';

    // ignore: prefer_final_locals
    Object? postBody = createStoreRequest;

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

  /// Create a store connection
  ///
  /// Connect an e-commerce store (WooCommerce, PrestaShop, Shopify, or product feed). After creation, trigger a sync to import products.
  ///
  /// Parameters:
  ///
  /// * [CreateStoreRequest] createStoreRequest (required):
  Future<CreateStore201Response?> createStore(CreateStoreRequest createStoreRequest,) async {
    final response = await createStoreWithHttpInfo(createStoreRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateStore201Response',) as CreateStore201Response;
    
    }
    return null;
  }

  /// Disconnect a store
  ///
  /// Disconnect a store and deactivate its products. Products are retained but marked inactive.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  Future<Response> disconnectStoreWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}'
      .replaceAll('{store_id}', storeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Disconnect a store
  ///
  /// Disconnect a store and deactivate its products. Products are retained but marked inactive.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  Future<DisconnectStore200Response?> disconnectStore(String storeId,) async {
    final response = await disconnectStoreWithHttpInfo(storeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisconnectStore200Response',) as DisconnectStore200Response;
    
    }
    return null;
  }

  /// Get a store connection
  ///
  /// Get details of a specific store connection including sync status and product count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  Future<Response> getStoreWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}'
      .replaceAll('{store_id}', storeId);

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

  /// Get a store connection
  ///
  /// Get details of a specific store connection including sync status and product count.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  Future<CreateStore201Response?> getStore(String storeId,) async {
    final response = await getStoreWithHttpInfo(storeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateStore201Response',) as CreateStore201Response;
    
    }
    return null;
  }

  /// Get sync job errors
  ///
  /// Get error details for a sync job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store ID
  ///
  /// * [String] jobId (required):
  ///   Sync job ID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> getSyncJobErrorsWithHttpInfo(String storeId, String jobId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}/sync-jobs/{job_id}/errors'
      .replaceAll('{store_id}', storeId)
      .replaceAll('{job_id}', jobId);

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

  /// Get sync job errors
  ///
  /// Get error details for a sync job.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store ID
  ///
  /// * [String] jobId (required):
  ///   Sync job ID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<GetSyncJobErrors200Response?> getSyncJobErrors(String storeId, String jobId, { int? page, int? perPage, }) async {
    final response = await getSyncJobErrorsWithHttpInfo(storeId, jobId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSyncJobErrors200Response',) as GetSyncJobErrors200Response;
    
    }
    return null;
  }

  /// List store connections
  ///
  /// List all store connections for the authenticated account. Optionally filter by status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Filter by connection status
  Future<Response> listStoresWithHttpInfo({ String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// List store connections
  ///
  /// List all store connections for the authenticated account. Optionally filter by status.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Filter by connection status
  Future<ListStores200Response?> listStores({ String? status, }) async {
    final response = await listStoresWithHttpInfo( status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListStores200Response',) as ListStores200Response;
    
    }
    return null;
  }

  /// List sync jobs
  ///
  /// List sync job history for a store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store ID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> listSyncJobsWithHttpInfo(String storeId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}/sync-jobs'
      .replaceAll('{store_id}', storeId);

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

  /// List sync jobs
  ///
  /// List sync job history for a store.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store ID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ListSyncJobs200Response?> listSyncJobs(String storeId, { int? page, int? perPage, }) async {
    final response = await listSyncJobsWithHttpInfo(storeId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSyncJobs200Response',) as ListSyncJobs200Response;
    
    }
    return null;
  }

  /// Trigger product sync
  ///
  /// Trigger a manual product sync for a store. Supports idempotency via the Idempotency-Key header (5 minute TTL).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  ///
  /// * [String] idempotencyKey:
  ///   Idempotency key to prevent duplicate syncs (5 min TTL)
  Future<Response> triggerSyncWithHttpInfo(String storeId, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}/sync'
      .replaceAll('{store_id}', storeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
    }

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

  /// Trigger product sync
  ///
  /// Trigger a manual product sync for a store. Supports idempotency via the Idempotency-Key header (5 minute TTL).
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  ///
  /// * [String] idempotencyKey:
  ///   Idempotency key to prevent duplicate syncs (5 min TTL)
  Future<SyncResponse?> triggerSync(String storeId, { String? idempotencyKey, }) async {
    final response = await triggerSyncWithHttpInfo(storeId,  idempotencyKey: idempotencyKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncResponse',) as SyncResponse;
    
    }
    return null;
  }

  /// Update a store connection
  ///
  /// Update store settings such as name, sync interval, or credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  ///
  /// * [UpdateStoreRequest] updateStoreRequest (required):
  Future<Response> updateStoreWithHttpInfo(String storeId, UpdateStoreRequest updateStoreRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}'
      .replaceAll('{store_id}', storeId);

    // ignore: prefer_final_locals
    Object? postBody = updateStoreRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update a store connection
  ///
  /// Update store settings such as name, sync interval, or credentials.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  ///
  /// * [UpdateStoreRequest] updateStoreRequest (required):
  Future<CreateStore201Response?> updateStore(String storeId, UpdateStoreRequest updateStoreRequest,) async {
    final response = await updateStoreWithHttpInfo(storeId, updateStoreRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateStore201Response',) as CreateStore201Response;
    
    }
    return null;
  }
}
