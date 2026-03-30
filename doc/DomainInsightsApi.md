# mailodds.api.DomainInsightsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDomainHookEffectiveness**](DomainInsightsApi.md#getdomainhookeffectiveness) | **GET** /v1/sending-domains/{domain_id}/insights/hook-effectiveness | Get hook effectiveness metrics
[**getDomainInsightsFunnel**](DomainInsightsApi.md#getdomaininsightsfunnel) | **GET** /v1/sending-domains/{domain_id}/insights/funnel | Get domain engagement funnel
[**getDomainInsightsTrends**](DomainInsightsApi.md#getdomaininsightstrends) | **GET** /v1/sending-domains/{domain_id}/insights/trends | Get domain engagement trends


# **getDomainHookEffectiveness**
> GetDomainHookEffectiveness200Response getDomainHookEffectiveness(domainId, days)

Get hook effectiveness metrics

Get webhook delivery effectiveness metrics for a sending domain. Requires Pro+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DomainInsightsApi();
final domainId = domainId_example; // String | Sending domain ID
final days = 56; // int | Lookback period in days

try {
    final result = api_instance.getDomainHookEffectiveness(domainId, days);
    print(result);
} catch (e) {
    print('Exception when calling DomainInsightsApi->getDomainHookEffectiveness: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Sending domain ID | 
 **days** | **int**| Lookback period in days | [optional] [default to 30]

### Return type

[**GetDomainHookEffectiveness200Response**](GetDomainHookEffectiveness200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainInsightsFunnel**
> GetDomainInsightsFunnel200Response getDomainInsightsFunnel(domainId, days)

Get domain engagement funnel

Get engagement funnel for a sending domain (sent > delivered > opened > clicked > converted). Requires Pro+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DomainInsightsApi();
final domainId = domainId_example; // String | Sending domain ID
final days = 56; // int | Lookback period in days

try {
    final result = api_instance.getDomainInsightsFunnel(domainId, days);
    print(result);
} catch (e) {
    print('Exception when calling DomainInsightsApi->getDomainInsightsFunnel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Sending domain ID | 
 **days** | **int**| Lookback period in days | [optional] [default to 30]

### Return type

[**GetDomainInsightsFunnel200Response**](GetDomainInsightsFunnel200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainInsightsTrends**
> GetDomainInsightsTrends200Response getDomainInsightsTrends(domainId, days)

Get domain engagement trends

Get daily engagement trend data for a sending domain. Requires Pro+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DomainInsightsApi();
final domainId = domainId_example; // String | Sending domain ID
final days = 56; // int | Lookback period in days

try {
    final result = api_instance.getDomainInsightsTrends(domainId, days);
    print(result);
} catch (e) {
    print('Exception when calling DomainInsightsApi->getDomainInsightsTrends: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Sending domain ID | 
 **days** | **int**| Lookback period in days | [optional] [default to 30]

### Return type

[**GetDomainInsightsTrends200Response**](GetDomainInsightsTrends200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

