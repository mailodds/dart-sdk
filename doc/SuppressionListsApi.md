# mailodds.api.SuppressionListsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSuppression**](SuppressionListsApi.md#addsuppression) | **POST** /v1/suppression | Add suppression entries
[**checkSuppression**](SuppressionListsApi.md#checksuppression) | **POST** /v1/suppression/check | Check suppression status
[**getSuppressionAuditLog**](SuppressionListsApi.md#getsuppressionauditlog) | **GET** /v1/suppression/audit | Get suppression audit log
[**getSuppressionStats**](SuppressionListsApi.md#getsuppressionstats) | **GET** /v1/suppression/stats | Get suppression statistics
[**listSuppression**](SuppressionListsApi.md#listsuppression) | **GET** /v1/suppression | List suppression entries
[**removeSuppression**](SuppressionListsApi.md#removesuppression) | **DELETE** /v1/suppression | Remove suppression entries


# **addSuppression**
> AddSuppressionResponse addSuppression(addSuppressionRequest)

Add suppression entries

Add emails or domains to the suppression list.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SuppressionListsApi();
final addSuppressionRequest = AddSuppressionRequest(); // AddSuppressionRequest | 

try {
    final result = api_instance.addSuppression(addSuppressionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SuppressionListsApi->addSuppression: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addSuppressionRequest** | [**AddSuppressionRequest**](AddSuppressionRequest.md)|  | 

### Return type

[**AddSuppressionResponse**](AddSuppressionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkSuppression**
> SuppressionCheckResponse checkSuppression(checkSuppressionRequest)

Check suppression status

Check if an email is suppressed.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SuppressionListsApi();
final checkSuppressionRequest = CheckSuppressionRequest(); // CheckSuppressionRequest | 

try {
    final result = api_instance.checkSuppression(checkSuppressionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SuppressionListsApi->checkSuppression: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkSuppressionRequest** | [**CheckSuppressionRequest**](CheckSuppressionRequest.md)|  | 

### Return type

[**SuppressionCheckResponse**](SuppressionCheckResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuppressionAuditLog**
> SuppressionAuditResponse getSuppressionAuditLog(page, limit)

Get suppression audit log

Get a chronological log of suppression list changes (additions, removals).

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SuppressionListsApi();
final page = 56; // int | 
final limit = 56; // int | 

try {
    final result = api_instance.getSuppressionAuditLog(page, limit);
    print(result);
} catch (e) {
    print('Exception when calling SuppressionListsApi->getSuppressionAuditLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 20]

### Return type

[**SuppressionAuditResponse**](SuppressionAuditResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuppressionStats**
> SuppressionStatsResponse getSuppressionStats()

Get suppression statistics

Get statistics about the suppression list.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SuppressionListsApi();

try {
    final result = api_instance.getSuppressionStats();
    print(result);
} catch (e) {
    print('Exception when calling SuppressionListsApi->getSuppressionStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SuppressionStatsResponse**](SuppressionStatsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSuppression**
> SuppressionListResponse listSuppression(page, perPage, type, search, source_)

List suppression entries

List all suppression entries for the account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SuppressionListsApi();
final page = 56; // int | 
final perPage = 56; // int | 
final type = type_example; // String | 
final search = search_example; // String | 
final source_ = source__example; // String | Filter by entry source (e.g. api, bounce, complaint)

try {
    final result = api_instance.listSuppression(page, perPage, type, search, source_);
    print(result);
} catch (e) {
    print('Exception when calling SuppressionListsApi->listSuppression: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 50]
 **type** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **source_** | **String**| Filter by entry source (e.g. api, bounce, complaint) | [optional] 

### Return type

[**SuppressionListResponse**](SuppressionListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSuppression**
> RemoveSuppression200Response removeSuppression(removeSuppressionRequest)

Remove suppression entries

Remove emails or domains from the suppression list.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SuppressionListsApi();
final removeSuppressionRequest = RemoveSuppressionRequest(); // RemoveSuppressionRequest | 

try {
    final result = api_instance.removeSuppression(removeSuppressionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SuppressionListsApi->removeSuppression: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeSuppressionRequest** | [**RemoveSuppressionRequest**](RemoveSuppressionRequest.md)|  | 

### Return type

[**RemoveSuppression200Response**](RemoveSuppression200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

