# mailodds.api.ProductsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchProducts**](ProductsApi.md#batchproducts) | **POST** /v1/stores/{store_id}/products/batch | Batch push products
[**bulkUpdateProducts**](ProductsApi.md#bulkupdateproducts) | **PATCH** /v1/store-products/bulk | Bulk update products
[**getProduct**](ProductsApi.md#getproduct) | **GET** /v1/store-products/{product_id} | Get a product
[**queryProducts**](ProductsApi.md#queryproducts) | **GET** /v1/store-products | Query products


# **batchProducts**
> BatchProductsResponse batchProducts(storeId, batchProductsRequest)

Batch push products

Push up to 100 products to a custom platform store. Creates new products or updates existing ones matched by external_id. Only available for stores with platform=custom.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProductsApi();
final storeId = storeId_example; // String | Store connection UUID
final batchProductsRequest = BatchProductsRequest(); // BatchProductsRequest | 

try {
    final result = api_instance.batchProducts(storeId, batchProductsRequest);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->batchProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**| Store connection UUID | 
 **batchProductsRequest** | [**BatchProductsRequest**](BatchProductsRequest.md)|  | 

### Return type

[**BatchProductsResponse**](BatchProductsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpdateProducts**
> BulkUpdateProducts200Response bulkUpdateProducts(bulkUpdateProductsRequest)

Bulk update products

Bulk update product visibility. Maximum 500 products per request.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProductsApi();
final bulkUpdateProductsRequest = BulkUpdateProductsRequest(); // BulkUpdateProductsRequest | 

try {
    final result = api_instance.bulkUpdateProducts(bulkUpdateProductsRequest);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->bulkUpdateProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkUpdateProductsRequest** | [**BulkUpdateProductsRequest**](BulkUpdateProductsRequest.md)|  | 

### Return type

[**BulkUpdateProducts200Response**](BulkUpdateProducts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProduct**
> GetProduct200Response getProduct(productId)

Get a product

Get detailed information about a specific product.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProductsApi();
final productId = productId_example; // String | Product UUID

try {
    final result = api_instance.getProduct(productId);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->getProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**| Product UUID | 

### Return type

[**GetProduct200Response**](GetProduct200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryProducts**
> QueryProducts200Response queryProducts(storeId, category, stockStatus, onSale, search, facets, groupBySku, page, perPage)

Query products

Search and filter products across all connected stores. Supports faceted search and cross-store SKU deduplication for unified inventory views.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProductsApi();
final storeId = storeId_example; // String | Filter by store connection UUID
final category = category_example; // String | Filter by category name
final stockStatus = stockStatus_example; // String | Filter by stock status
final onSale = true; // bool | Filter to products currently on sale
final search = search_example; // String | Search by title or SKU
final facets = true; // bool | Include facet aggregations (categories, price ranges, stores)
final groupBySku = true; // bool | Merge products with same SKU across stores into unified entries
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.queryProducts(storeId, category, stockStatus, onSale, search, facets, groupBySku, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ProductsApi->queryProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**| Filter by store connection UUID | [optional] 
 **category** | **String**| Filter by category name | [optional] 
 **stockStatus** | **String**| Filter by stock status | [optional] 
 **onSale** | **bool**| Filter to products currently on sale | [optional] 
 **search** | **String**| Search by title or SKU | [optional] 
 **facets** | **bool**| Include facet aggregations (categories, price ranges, stores) | [optional] [default to false]
 **groupBySku** | **bool**| Merge products with same SKU across stores into unified entries | [optional] [default to false]
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**QueryProducts200Response**](QueryProducts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

