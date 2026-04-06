# mailodds.api.StorefrontDomainsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStorefrontDomain**](StorefrontDomainsApi.md#createstorefrontdomain) | **POST** /v1/storefront-domains | Add a custom storefront domain
[**deleteStorefrontDomain**](StorefrontDomainsApi.md#deletestorefrontdomain) | **DELETE** /v1/storefront-domains/{domain_id} | Delete a storefront domain
[**getStorefrontDomain**](StorefrontDomainsApi.md#getstorefrontdomain) | **GET** /v1/storefront-domains/{domain_id} | Get storefront domain details
[**listStorefrontDomains**](StorefrontDomainsApi.md#liststorefrontdomains) | **GET** /v1/storefront-domains | List storefront domains
[**verifyStorefrontDomain**](StorefrontDomainsApi.md#verifystorefrontdomain) | **POST** /v1/storefront-domains/{domain_id}/verify | Verify storefront domain DNS


# **createStorefrontDomain**
> createStorefrontDomain(createStorefrontDomainRequest)

Add a custom storefront domain

Register a custom domain (e.g., shop.merchant.com) for a storefront store. If a Cloudflare DNS provider is connected, NS records are auto-configured.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StorefrontDomainsApi();
final createStorefrontDomainRequest = CreateStorefrontDomainRequest(); // CreateStorefrontDomainRequest | 

try {
    api_instance.createStorefrontDomain(createStorefrontDomainRequest);
} catch (e) {
    print('Exception when calling StorefrontDomainsApi->createStorefrontDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createStorefrontDomainRequest** | [**CreateStorefrontDomainRequest**](CreateStorefrontDomainRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStorefrontDomain**
> deleteStorefrontDomain(domainId)

Delete a storefront domain

Remove a custom storefront domain. Cleans up DNS records (if auto-configured), TLS certificates, and edge node config.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StorefrontDomainsApi();
final domainId = domainId_example; // String | 

try {
    api_instance.deleteStorefrontDomain(domainId);
} catch (e) {
    print('Exception when calling StorefrontDomainsApi->deleteStorefrontDomain: $e\n');
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

# **getStorefrontDomain**
> getStorefrontDomain(domainId)

Get storefront domain details

Get a custom domain with status, NS record instructions, and certificate info.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StorefrontDomainsApi();
final domainId = domainId_example; // String | 

try {
    api_instance.getStorefrontDomain(domainId);
} catch (e) {
    print('Exception when calling StorefrontDomainsApi->getStorefrontDomain: $e\n');
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

# **listStorefrontDomains**
> listStorefrontDomains()

List storefront domains

List all custom storefront domains for the account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StorefrontDomainsApi();

try {
    api_instance.listStorefrontDomains();
} catch (e) {
    print('Exception when calling StorefrontDomainsApi->listStorefrontDomains: $e\n');
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

# **verifyStorefrontDomain**
> verifyStorefrontDomain(domainId)

Verify storefront domain DNS

Trigger manual DNS verification for a custom domain. Rate limited to 5 per hour per domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StorefrontDomainsApi();
final domainId = domainId_example; // String | 

try {
    api_instance.verifyStorefrontDomain(domainId);
} catch (e) {
    print('Exception when calling StorefrontDomainsApi->verifyStorefrontDomain: $e\n');
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

