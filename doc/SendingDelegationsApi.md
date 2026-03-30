# mailodds.api.SendingDelegationsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDelegation**](SendingDelegationsApi.md#createdelegation) | **POST** /v1/sending-domains/{domain_id}/delegations | Create a sending delegation
[**listDelegations**](SendingDelegationsApi.md#listdelegations) | **GET** /v1/sending-domains/{domain_id}/delegations | List sending delegations
[**revokeDelegation**](SendingDelegationsApi.md#revokedelegation) | **DELETE** /v1/sending-domains/{domain_id}/delegations/{delegation_id} | Revoke a sending delegation


# **createDelegation**
> createDelegation(domainId)

Create a sending delegation

Create a sending delegation granting another account permission to send from this domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDelegationsApi();
final domainId = domainId_example; // String | 

try {
    api_instance.createDelegation(domainId);
} catch (e) {
    print('Exception when calling SendingDelegationsApi->createDelegation: $e\n');
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

# **listDelegations**
> listDelegations(domainId)

List sending delegations

List all sending delegations for a domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDelegationsApi();
final domainId = domainId_example; // String | 

try {
    api_instance.listDelegations(domainId);
} catch (e) {
    print('Exception when calling SendingDelegationsApi->listDelegations: $e\n');
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

# **revokeDelegation**
> revokeDelegation(domainId, delegationId)

Revoke a sending delegation

Revoke a sending delegation, removing the delegate account permission to send.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SendingDelegationsApi();
final domainId = domainId_example; // String | 
final delegationId = delegationId_example; // String | 

try {
    api_instance.revokeDelegation(domainId, delegationId);
} catch (e) {
    print('Exception when calling SendingDelegationsApi->revokeDelegation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 
 **delegationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

