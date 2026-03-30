# mailodds.api.ManagedSPFApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createManagedSpf**](ManagedSPFApi.md#createmanagedspf) | **POST** /v1/sending-domains/{domain_id}/managed-spf | Create managed SPF record
[**getManagedSpf**](ManagedSPFApi.md#getmanagedspf) | **GET** /v1/sending-domains/{domain_id}/managed-spf | Get managed SPF record
[**refreshManagedSpf**](ManagedSPFApi.md#refreshmanagedspf) | **POST** /v1/sending-domains/{domain_id}/managed-spf/refresh | Refresh managed SPF record
[**updateManagedSpf**](ManagedSPFApi.md#updatemanagedspf) | **PUT** /v1/sending-domains/{domain_id}/managed-spf | Update managed SPF settings


# **createManagedSpf**
> createManagedSpf(domainId)

Create managed SPF record

Create a managed SPF record for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ManagedSPFApi();
final domainId = domainId_example; // String | 

try {
    api_instance.createManagedSpf(domainId);
} catch (e) {
    print('Exception when calling ManagedSPFApi->createManagedSpf: $e\n');
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

# **getManagedSpf**
> getManagedSpf(domainId)

Get managed SPF record

Retrieve the managed SPF record for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ManagedSPFApi();
final domainId = domainId_example; // String | 

try {
    api_instance.getManagedSpf(domainId);
} catch (e) {
    print('Exception when calling ManagedSPFApi->getManagedSpf: $e\n');
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

# **refreshManagedSpf**
> refreshManagedSpf(domainId)

Refresh managed SPF record

Re-resolve DNS and refresh the managed SPF record for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ManagedSPFApi();
final domainId = domainId_example; // String | 

try {
    api_instance.refreshManagedSpf(domainId);
} catch (e) {
    print('Exception when calling ManagedSPFApi->refreshManagedSpf: $e\n');
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

# **updateManagedSpf**
> updateManagedSpf(domainId)

Update managed SPF settings

Update managed SPF settings such as enabling or disabling for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ManagedSPFApi();
final domainId = domainId_example; // String | 

try {
    api_instance.updateManagedSpf(domainId);
} catch (e) {
    print('Exception when calling ManagedSPFApi->updateManagedSpf: $e\n');
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

