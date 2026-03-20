# mailodds.api.SpamChecksApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSpamCheck**](SpamChecksApi.md#deletespamcheck) | **DELETE** /v1/spam-checks/{check_id} | Delete spam check
[**getSpamCheck**](SpamChecksApi.md#getspamcheck) | **GET** /v1/spam-checks/{check_id} | Get spam check
[**listSpamChecks**](SpamChecksApi.md#listspamchecks) | **GET** /v1/spam-checks | List spam checks
[**runSpamCheck**](SpamChecksApi.md#runspamcheck) | **POST** /v1/spam-checks | Run spam check


# **deleteSpamCheck**
> DeletePolicyRule200Response deleteSpamCheck(checkId)

Delete spam check

Delete a spam check result.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpamChecksApi();
final checkId = checkId_example; // String | 

try {
    final result = api_instance.deleteSpamCheck(checkId);
    print(result);
} catch (e) {
    print('Exception when calling SpamChecksApi->deleteSpamCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkId** | **String**|  | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpamCheck**
> RunSpamCheck201Response getSpamCheck(checkId)

Get spam check

Get the detailed result of a specific spam check.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpamChecksApi();
final checkId = checkId_example; // String | 

try {
    final result = api_instance.getSpamCheck(checkId);
    print(result);
} catch (e) {
    print('Exception when calling SpamChecksApi->getSpamCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkId** | **String**|  | 

### Return type

[**RunSpamCheck201Response**](RunSpamCheck201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSpamChecks**
> ListSpamChecks200Response listSpamChecks(page, perPage)

List spam checks

List past spam check results with pagination.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpamChecksApi();
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.listSpamChecks(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling SpamChecksApi->listSpamChecks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**ListSpamChecks200Response**](ListSpamChecks200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runSpamCheck**
> RunSpamCheck201Response runSpamCheck(runSpamCheckRequest)

Run spam check

Run backend spam checks on email sending parameters. Checks domain reputation, link safety, and subject line quality.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpamChecksApi();
final runSpamCheckRequest = RunSpamCheckRequest(); // RunSpamCheckRequest | 

try {
    final result = api_instance.runSpamCheck(runSpamCheckRequest);
    print(result);
} catch (e) {
    print('Exception when calling SpamChecksApi->runSpamCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runSpamCheckRequest** | [**RunSpamCheckRequest**](RunSpamCheckRequest.md)|  | 

### Return type

[**RunSpamCheck201Response**](RunSpamCheck201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

