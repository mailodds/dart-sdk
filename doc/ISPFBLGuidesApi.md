# mailodds.api.ISPFBLGuidesApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIspFblGuide**](ISPFBLGuidesApi.md#getispfblguide) | **GET** /v1/isp-fbl/guides/{isp_id} | Get ISP FBL guide
[**listIspFblGuides**](ISPFBLGuidesApi.md#listispfblguides) | **GET** /v1/isp-fbl/guides | List ISP FBL guides


# **getIspFblGuide**
> getIspFblGuide(ispId)

Get ISP FBL guide

Retrieve a specific ISP feedback loop setup guide.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ISPFBLGuidesApi();
final ispId = ispId_example; // String | 

try {
    api_instance.getIspFblGuide(ispId);
} catch (e) {
    print('Exception when calling ISPFBLGuidesApi->getIspFblGuide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ispId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIspFblGuides**
> listIspFblGuides()

List ISP FBL guides

List all ISP feedback loop setup guides.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ISPFBLGuidesApi();

try {
    api_instance.listIspFblGuides();
} catch (e) {
    print('Exception when calling ISPFBLGuidesApi->listIspFblGuides: $e\n');
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

