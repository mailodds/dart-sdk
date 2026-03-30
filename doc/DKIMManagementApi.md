# mailodds.api.DKIMManagementApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDkimDnsRecord**](DKIMManagementApi.md#getdkimdnsrecord) | **GET** /v1/sending-domains/{domain_id}/dkim/dns-record | Get DKIM DNS record
[**rotateDkim**](DKIMManagementApi.md#rotatedkim) | **POST** /v1/sending-domains/{domain_id}/dkim/rotate | Rotate DKIM keys


# **getDkimDnsRecord**
> getDkimDnsRecord(domainId)

Get DKIM DNS record

Retrieve the current DKIM DNS record and selector for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DKIMManagementApi();
final domainId = domainId_example; // String | 

try {
    api_instance.getDkimDnsRecord(domainId);
} catch (e) {
    print('Exception when calling DKIMManagementApi->getDkimDnsRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateDkim**
> rotateDkim(domainId)

Rotate DKIM keys

Generate a new DKIM key pair and rotate the selector for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DKIMManagementApi();
final domainId = domainId_example; // String | 

try {
    api_instance.rotateDkim(domainId);
} catch (e) {
    print('Exception when calling DKIMManagementApi->rotateDkim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

