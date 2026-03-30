# mailodds.api.GlobalSuppressionsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGlobalSuppressionOverride**](GlobalSuppressionsApi.md#addglobalsuppressionoverride) | **POST** /v1/global-suppressions/overrides | Add global suppression override
[**checkGlobalSuppression**](GlobalSuppressionsApi.md#checkglobalsuppression) | **GET** /v1/global-suppressions/check | Check global suppression
[**removeGlobalSuppressionOverride**](GlobalSuppressionsApi.md#removeglobalsuppressionoverride) | **DELETE** /v1/global-suppressions/overrides | Remove global suppression override


# **addGlobalSuppressionOverride**
> addGlobalSuppressionOverride()

Add global suppression override

Add an override to allow sending to a globally suppressed email address.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GlobalSuppressionsApi();

try {
    api_instance.addGlobalSuppressionOverride();
} catch (e) {
    print('Exception when calling GlobalSuppressionsApi->addGlobalSuppressionOverride: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkGlobalSuppression**
> checkGlobalSuppression()

Check global suppression

Check if an email address is globally suppressed.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GlobalSuppressionsApi();

try {
    api_instance.checkGlobalSuppression();
} catch (e) {
    print('Exception when calling GlobalSuppressionsApi->checkGlobalSuppression: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeGlobalSuppressionOverride**
> removeGlobalSuppressionOverride()

Remove global suppression override

Remove an override for a globally suppressed email address.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GlobalSuppressionsApi();

try {
    api_instance.removeGlobalSuppressionOverride();
} catch (e) {
    print('Exception when calling GlobalSuppressionsApi->removeGlobalSuppressionOverride: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

