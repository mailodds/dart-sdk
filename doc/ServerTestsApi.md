# mailodds.api.ServerTestsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getServerTest**](ServerTestsApi.md#getservertest) | **GET** /v1/server-tests/{test_id} | Get server test
[**listServerTests**](ServerTestsApi.md#listservertests) | **GET** /v1/server-tests | List server tests
[**runServerTest**](ServerTestsApi.md#runservertest) | **POST** /v1/server-tests | Run server test


# **getServerTest**
> RunServerTest201Response getServerTest(testId)

Get server test

Get the detailed results of a specific server test.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ServerTestsApi();
final testId = testId_example; // String | Server test UUID

try {
    final result = api_instance.getServerTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling ServerTestsApi->getServerTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**| Server test UUID | 

### Return type

[**RunServerTest201Response**](RunServerTest201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServerTests**
> ListServerTests200Response listServerTests(page, perPage)

List server tests

List past server test results with pagination.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ServerTestsApi();
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.listServerTests(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ServerTestsApi->listServerTests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**ListServerTests200Response**](ListServerTests200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runServerTest**
> RunServerTest201Response runServerTest(runServerTestRequest)

Run server test

Run an SMTP handshake test and MX configuration audit for a domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ServerTestsApi();
final runServerTestRequest = RunServerTestRequest(); // RunServerTestRequest | 

try {
    final result = api_instance.runServerTest(runServerTestRequest);
    print(result);
} catch (e) {
    print('Exception when calling ServerTestsApi->runServerTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runServerTestRequest** | [**RunServerTestRequest**](RunServerTestRequest.md)|  | 

### Return type

[**RunServerTest201Response**](RunServerTest201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

