# mailodds.api.StoreConnectionsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStore**](StoreConnectionsApi.md#createstore) | **POST** /v1/stores | Create a store connection
[**disconnectStore**](StoreConnectionsApi.md#disconnectstore) | **DELETE** /v1/stores/{store_id} | Disconnect a store
[**getStore**](StoreConnectionsApi.md#getstore) | **GET** /v1/stores/{store_id} | Get a store connection
[**getSyncJobErrors**](StoreConnectionsApi.md#getsyncjoberrors) | **GET** /v1/stores/{store_id}/sync-jobs/{job_id}/errors | Get sync job errors
[**listStores**](StoreConnectionsApi.md#liststores) | **GET** /v1/stores | List store connections
[**listSyncJobs**](StoreConnectionsApi.md#listsyncjobs) | **GET** /v1/stores/{store_id}/sync-jobs | List sync jobs
[**triggerSync**](StoreConnectionsApi.md#triggersync) | **POST** /v1/stores/{store_id}/sync | Trigger product sync
[**updateStore**](StoreConnectionsApi.md#updatestore) | **PUT** /v1/stores/{store_id} | Update a store connection


# **createStore**
> CreateStore201Response createStore(createStoreRequest)

Create a store connection

Connect an e-commerce store (WooCommerce, PrestaShop, Shopify, or product feed). After creation, trigger a sync to import products.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final createStoreRequest = CreateStoreRequest(); // CreateStoreRequest | 

try {
    final result = api_instance.createStore(createStoreRequest);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->createStore: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createStoreRequest** | [**CreateStoreRequest**](CreateStoreRequest.md)|  | 

### Return type

[**CreateStore201Response**](CreateStore201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disconnectStore**
> DisconnectStore200Response disconnectStore(storeId)

Disconnect a store

Disconnect a store and deactivate its products. Products are retained but marked inactive.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.disconnectStore(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->disconnectStore: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**DisconnectStore200Response**](DisconnectStore200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStore**
> CreateStore201Response getStore(storeId)

Get a store connection

Get details of a specific store connection including sync status and product count.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getStore(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->getStore: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**CreateStore201Response**](CreateStore201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSyncJobErrors**
> GetSyncJobErrors200Response getSyncJobErrors(storeId, jobId, page, perPage)

Get sync job errors

Get error details for a sync job.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final storeId = storeId_example; // String | 
final jobId = jobId_example; // String | 
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.getSyncJobErrors(storeId, jobId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->getSyncJobErrors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 
 **jobId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 50]

### Return type

[**GetSyncJobErrors200Response**](GetSyncJobErrors200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStores**
> ListStores200Response listStores(status)

List store connections

List all store connections for the authenticated account. Optionally filter by status.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final status = status_example; // String | Filter by connection status

try {
    final result = api_instance.listStores(status);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->listStores: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Filter by connection status | [optional] 

### Return type

[**ListStores200Response**](ListStores200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSyncJobs**
> ListSyncJobs200Response listSyncJobs(storeId, page, perPage)

List sync jobs

List sync job history for a store.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final storeId = storeId_example; // String | 
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.listSyncJobs(storeId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->listSyncJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**ListSyncJobs200Response**](ListSyncJobs200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerSync**
> SyncResponse triggerSync(storeId, idempotencyKey)

Trigger product sync

Trigger a manual product sync for a store. Supports idempotency via the Idempotency-Key header (5 minute TTL).

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final storeId = storeId_example; // String | 
final idempotencyKey = idempotencyKey_example; // String | Idempotency key to prevent duplicate syncs (5 min TTL)

try {
    final result = api_instance.triggerSync(storeId, idempotencyKey);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->triggerSync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 
 **idempotencyKey** | **String**| Idempotency key to prevent duplicate syncs (5 min TTL) | [optional] 

### Return type

[**SyncResponse**](SyncResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStore**
> CreateStore201Response updateStore(storeId, updateStoreRequest)

Update a store connection

Update store settings such as name, sync interval, or credentials.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StoreConnectionsApi();
final storeId = storeId_example; // String | 
final updateStoreRequest = UpdateStoreRequest(); // UpdateStoreRequest | 

try {
    final result = api_instance.updateStore(storeId, updateStoreRequest);
    print(result);
} catch (e) {
    print('Exception when calling StoreConnectionsApi->updateStore: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 
 **updateStoreRequest** | [**UpdateStoreRequest**](UpdateStoreRequest.md)|  | 

### Return type

[**CreateStore201Response**](CreateStore201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

