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

final api = Mailodds().getSuppressionListsApi();
final AddSuppressionRequest addSuppressionRequest = ; // AddSuppressionRequest | 

try {
    final response = api.addSuppression(addSuppressionRequest);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getSuppressionListsApi();
final CheckSuppressionRequest checkSuppressionRequest = ; // CheckSuppressionRequest | 

try {
    final response = api.checkSuppression(checkSuppressionRequest);
    print(response);
} on DioException catch (e) {
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

# **getSuppressionStats**
> SuppressionStatsResponse getSuppressionStats()

Get suppression statistics

Get statistics about the suppression list.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSuppressionListsApi();

try {
    final response = api.getSuppressionStats();
    print(response);
} on DioException catch (e) {
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
> SuppressionListResponse listSuppression(page, perPage, type, search)

List suppression entries

List all suppression entries for the account.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSuppressionListsApi();
final int page = 56; // int | 
final int perPage = 56; // int | 
final String type = type_example; // String | 
final String search = search_example; // String | 

try {
    final response = api.listSuppression(page, perPage, type, search);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getSuppressionListsApi();
final RemoveSuppressionRequest removeSuppressionRequest = ; // RemoveSuppressionRequest | 

try {
    final response = api.removeSuppression(removeSuppressionRequest);
    print(response);
} on DioException catch (e) {
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

