# mailodds.api.PixelSettingsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPixelSettings**](PixelSettingsApi.md#getpixelsettings) | **GET** /v1/pixel-settings | Get pixel settings
[**updatePixelSettings**](PixelSettingsApi.md#updatepixelsettings) | **PATCH** /v1/pixel-settings | Update pixel settings


# **getPixelSettings**
> GetPixelSettings200Response getPixelSettings()

Get pixel settings

Get the web pixel tracking configuration.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PixelSettingsApi();

try {
    final result = api_instance.getPixelSettings();
    print(result);
} catch (e) {
    print('Exception when calling PixelSettingsApi->getPixelSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetPixelSettings200Response**](GetPixelSettings200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePixelSettings**
> GetPixelSettings200Response updatePixelSettings(updatePixelSettingsRequest)

Update pixel settings

Update the web pixel subscribe list configuration.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PixelSettingsApi();
final updatePixelSettingsRequest = UpdatePixelSettingsRequest(); // UpdatePixelSettingsRequest | 

try {
    final result = api_instance.updatePixelSettings(updatePixelSettingsRequest);
    print(result);
} catch (e) {
    print('Exception when calling PixelSettingsApi->updatePixelSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updatePixelSettingsRequest** | [**UpdatePixelSettingsRequest**](UpdatePixelSettingsRequest.md)|  | 

### Return type

[**GetPixelSettings200Response**](GetPixelSettings200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

