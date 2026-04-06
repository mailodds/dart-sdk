# mailodds.api.DNSProviderApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connectDnsProvider**](DNSProviderApi.md#connectdnsprovider) | **POST** /v1/account/dns-provider | Connect DNS provider
[**disconnectDnsProvider**](DNSProviderApi.md#disconnectdnsprovider) | **DELETE** /v1/account/dns-provider | Disconnect DNS provider
[**getDnsProvider**](DNSProviderApi.md#getdnsprovider) | **GET** /v1/account/dns-provider | Get DNS provider status


# **connectDnsProvider**
> connectDnsProvider(connectDnsProviderRequest)

Connect DNS provider

Store a Cloudflare API token on the account for automated DNS configuration. Token is validated, zones are discovered, and write permission is tested before storage.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DNSProviderApi();
final connectDnsProviderRequest = ConnectDnsProviderRequest(); // ConnectDnsProviderRequest | 

try {
    api_instance.connectDnsProvider(connectDnsProviderRequest);
} catch (e) {
    print('Exception when calling DNSProviderApi->connectDnsProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectDnsProviderRequest** | [**ConnectDnsProviderRequest**](ConnectDnsProviderRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disconnectDnsProvider**
> disconnectDnsProvider()

Disconnect DNS provider

Remove the stored DNS provider token and clear zone cache.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DNSProviderApi();

try {
    api_instance.disconnectDnsProvider();
} catch (e) {
    print('Exception when calling DNSProviderApi->disconnectDnsProvider: $e\n');
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

# **getDnsProvider**
> getDnsProvider()

Get DNS provider status

Get the DNS provider connection status. Token is never exposed in the response.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DNSProviderApi();

try {
    api_instance.getDnsProvider();
} catch (e) {
    print('Exception when calling DNSProviderApi->getDnsProvider: $e\n');
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

