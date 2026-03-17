# mailodds.api.DMARCMonitoringApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDmarcDomain**](DMARCMonitoringApi.md#adddmarcdomain) | **POST** /v1/dmarc-domains | Add DMARC domain
[**deleteDmarcDomain**](DMARCMonitoringApi.md#deletedmarcdomain) | **DELETE** /v1/dmarc-domains/{domain_id} | Delete a DMARC domain
[**getDmarcDomain**](DMARCMonitoringApi.md#getdmarcdomain) | **GET** /v1/dmarc-domains/{domain_id} | Get DMARC domain
[**getDmarcRecommendation**](DMARCMonitoringApi.md#getdmarcrecommendation) | **GET** /v1/dmarc-domains/{domain_id}/recommendation | Get DMARC policy recommendation
[**getDmarcSources**](DMARCMonitoringApi.md#getdmarcsources) | **GET** /v1/dmarc-domains/{domain_id}/sources | Get DMARC sending sources
[**getDmarcTrend**](DMARCMonitoringApi.md#getdmarctrend) | **GET** /v1/dmarc-domains/{domain_id}/trend | Get DMARC trend
[**listDmarcDomains**](DMARCMonitoringApi.md#listdmarcdomains) | **GET** /v1/dmarc-domains | List DMARC domains
[**verifyDmarcDomain**](DMARCMonitoringApi.md#verifydmarcdomain) | **POST** /v1/dmarc-domains/{domain_id}/verify | Verify DMARC DNS records


# **addDmarcDomain**
> AddDmarcDomain201Response addDmarcDomain(addDmarcDomainRequest)

Add DMARC domain

Add a domain for DMARC monitoring. A unique reporting address is generated for receiving aggregate DMARC reports.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final addDmarcDomainRequest = AddDmarcDomainRequest(); // AddDmarcDomainRequest | 

try {
    final result = api_instance.addDmarcDomain(addDmarcDomainRequest);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->addDmarcDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addDmarcDomainRequest** | [**AddDmarcDomainRequest**](AddDmarcDomainRequest.md)|  | 

### Return type

[**AddDmarcDomain201Response**](AddDmarcDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDmarcDomain**
> DeletePolicyRule200Response deleteDmarcDomain(domainId)

Delete a DMARC domain

Delete a DMARC domain and all its associated reports.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final domainId = domainId_example; // String | DMARC domain UUID

try {
    final result = api_instance.deleteDmarcDomain(domainId);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->deleteDmarcDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| DMARC domain UUID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcDomain**
> GetDmarcDomain200Response getDmarcDomain(domainId, days)

Get DMARC domain

Get a single DMARC domain with summary statistics including pass/fail rates.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final domainId = domainId_example; // String | DMARC domain UUID
final days = 56; // int | Number of days for summary stats

try {
    final result = api_instance.getDmarcDomain(domainId, days);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->getDmarcDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| DMARC domain UUID | 
 **days** | **int**| Number of days for summary stats | [optional] [default to 30]

### Return type

[**GetDmarcDomain200Response**](GetDmarcDomain200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcRecommendation**
> GetDmarcRecommendation200Response getDmarcRecommendation(domainId)

Get DMARC policy recommendation

Get a recommendation for upgrading the domain's DMARC policy based on alignment data.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final domainId = domainId_example; // String | DMARC domain UUID

try {
    final result = api_instance.getDmarcRecommendation(domainId);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->getDmarcRecommendation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| DMARC domain UUID | 

### Return type

[**GetDmarcRecommendation200Response**](GetDmarcRecommendation200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcSources**
> GetDmarcSources200Response getDmarcSources(domainId, days, page, perPage)

Get DMARC sending sources

Get sending IPs that have sent email for this domain with their DKIM/SPF alignment status.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final domainId = domainId_example; // String | DMARC domain UUID
final days = 56; // int | Number of days to look back
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.getDmarcSources(domainId, days, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->getDmarcSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| DMARC domain UUID | 
 **days** | **int**| Number of days to look back | [optional] [default to 30]
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**GetDmarcSources200Response**](GetDmarcSources200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDmarcTrend**
> GetDmarcTrend200Response getDmarcTrend(domainId, days)

Get DMARC trend

Get daily pass/fail trend data for DMARC authentication over the specified period.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final domainId = domainId_example; // String | DMARC domain UUID
final days = 56; // int | Number of days of trend data

try {
    final result = api_instance.getDmarcTrend(domainId, days);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->getDmarcTrend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| DMARC domain UUID | 
 **days** | **int**| Number of days of trend data | [optional] [default to 30]

### Return type

[**GetDmarcTrend200Response**](GetDmarcTrend200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDmarcDomains**
> ListDmarcDomains200Response listDmarcDomains()

List DMARC domains

List all domains being monitored for DMARC compliance.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();

try {
    final result = api_instance.listDmarcDomains();
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->listDmarcDomains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListDmarcDomains200Response**](ListDmarcDomains200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyDmarcDomain**
> AddDmarcDomain201Response verifyDmarcDomain(domainId)

Verify DMARC DNS records

Check that the domain has the correct DMARC TXT record pointing to the MailOdds reporting address.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DMARCMonitoringApi();
final domainId = domainId_example; // String | DMARC domain UUID

try {
    final result = api_instance.verifyDmarcDomain(domainId);
    print(result);
} catch (e) {
    print('Exception when calling DMARCMonitoringApi->verifyDmarcDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| DMARC domain UUID | 

### Return type

[**AddDmarcDomain201Response**](AddDmarcDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

