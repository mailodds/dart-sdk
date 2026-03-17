//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ProductsApi {
  ProductsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Batch push products
  ///
  /// Push up to 100 products to a custom platform store. Creates new products or updates existing ones matched by external_id. Only available for stores with platform=custom.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  ///
  /// * [BatchProductsRequest] batchProductsRequest (required):
  Future<Response> batchProductsWithHttpInfo(String storeId, BatchProductsRequest batchProductsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/stores/{store_id}/products/batch'
      .replaceAll('{store_id}', storeId);

    // ignore: prefer_final_locals
    Object? postBody = batchProductsRequest;

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

  /// Batch push products
  ///
  /// Push up to 100 products to a custom platform store. Creates new products or updates existing ones matched by external_id. Only available for stores with platform=custom.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  ///   Store connection UUID
  ///
  /// * [BatchProductsRequest] batchProductsRequest (required):
  Future<BatchProductsResponse?> batchProducts(String storeId, BatchProductsRequest batchProductsRequest,) async {
    final response = await batchProductsWithHttpInfo(storeId, batchProductsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchProductsResponse',) as BatchProductsResponse;
    
    }
    return null;
  }

  /// Bulk update products
  ///
  /// Bulk update product visibility. Maximum 500 products per request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkUpdateProductsRequest] bulkUpdateProductsRequest (required):
  Future<Response> bulkUpdateProductsWithHttpInfo(BulkUpdateProductsRequest bulkUpdateProductsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store-products/bulk';

    // ignore: prefer_final_locals
    Object? postBody = bulkUpdateProductsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Bulk update products
  ///
  /// Bulk update product visibility. Maximum 500 products per request.
  ///
  /// Parameters:
  ///
  /// * [BulkUpdateProductsRequest] bulkUpdateProductsRequest (required):
  Future<BulkUpdateProducts200Response?> bulkUpdateProducts(BulkUpdateProductsRequest bulkUpdateProductsRequest,) async {
    final response = await bulkUpdateProductsWithHttpInfo(bulkUpdateProductsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BulkUpdateProducts200Response',) as BulkUpdateProducts200Response;
    
    }
    return null;
  }

  /// Get a product
  ///
  /// Get detailed information about a specific product.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] productId (required):
  ///   Product UUID
  Future<Response> getProductWithHttpInfo(String productId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store-products/{product_id}'
      .replaceAll('{product_id}', productId);

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

  /// Get a product
  ///
  /// Get detailed information about a specific product.
  ///
  /// Parameters:
  ///
  /// * [String] productId (required):
  ///   Product UUID
  Future<GetProduct200Response?> getProduct(String productId,) async {
    final response = await getProductWithHttpInfo(productId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetProduct200Response',) as GetProduct200Response;
    
    }
    return null;
  }

  /// Query products
  ///
  /// Search and filter products across all connected stores. Supports faceted search and cross-store SKU deduplication for unified inventory views.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId:
  ///   Filter by store connection UUID
  ///
  /// * [String] category:
  ///   Filter by category name
  ///
  /// * [String] stockStatus:
  ///   Filter by stock status
  ///
  /// * [bool] onSale:
  ///   Filter to products currently on sale
  ///
  /// * [String] search:
  ///   Search by title or SKU
  ///
  /// * [bool] facets:
  ///   Include facet aggregations (categories, price ranges, stores)
  ///
  /// * [bool] groupBySku:
  ///   Merge products with same SKU across stores into unified entries
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> queryProductsWithHttpInfo({ String? storeId, String? category, String? stockStatus, bool? onSale, String? search, bool? facets, bool? groupBySku, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/store-products';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (storeId != null) {
      queryParams.addAll(_queryParams('', 'store_id', storeId));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (stockStatus != null) {
      queryParams.addAll(_queryParams('', 'stock_status', stockStatus));
    }
    if (onSale != null) {
      queryParams.addAll(_queryParams('', 'on_sale', onSale));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (facets != null) {
      queryParams.addAll(_queryParams('', 'facets', facets));
    }
    if (groupBySku != null) {
      queryParams.addAll(_queryParams('', 'group_by_sku', groupBySku));
    }
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

  /// Query products
  ///
  /// Search and filter products across all connected stores. Supports faceted search and cross-store SKU deduplication for unified inventory views.
  ///
  /// Parameters:
  ///
  /// * [String] storeId:
  ///   Filter by store connection UUID
  ///
  /// * [String] category:
  ///   Filter by category name
  ///
  /// * [String] stockStatus:
  ///   Filter by stock status
  ///
  /// * [bool] onSale:
  ///   Filter to products currently on sale
  ///
  /// * [String] search:
  ///   Search by title or SKU
  ///
  /// * [bool] facets:
  ///   Include facet aggregations (categories, price ranges, stores)
  ///
  /// * [bool] groupBySku:
  ///   Merge products with same SKU across stores into unified entries
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<QueryProducts200Response?> queryProducts({ String? storeId, String? category, String? stockStatus, bool? onSale, String? search, bool? facets, bool? groupBySku, int? page, int? perPage, }) async {
    final response = await queryProductsWithHttpInfo( storeId: storeId, category: category, stockStatus: stockStatus, onSale: onSale, search: search, facets: facets, groupBySku: groupBySku, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryProducts200Response',) as QueryProducts200Response;
    
    }
    return null;
  }
}
