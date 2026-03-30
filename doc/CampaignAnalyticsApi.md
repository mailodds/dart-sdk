# mailodds.api.CampaignAnalyticsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCampaignABResults**](CampaignAnalyticsApi.md#getcampaignabresults) | **GET** /v1/campaigns/{campaign_id}/ab-results | Get A/B test results
[**getCampaignAttribution**](CampaignAnalyticsApi.md#getcampaignattribution) | **GET** /v1/campaigns/{campaign_id}/conversions/attribution | Get campaign attribution
[**getCampaignDeliveryConfidence**](CampaignAnalyticsApi.md#getcampaigndeliveryconfidence) | **GET** /v1/campaigns/{campaign_id}/delivery-confidence | Get pre-send delivery confidence
[**getCampaignFunnel**](CampaignAnalyticsApi.md#getcampaignfunnel) | **GET** /v1/campaigns/{campaign_id}/funnel | Get campaign funnel
[**getCampaignProviderIntelligence**](CampaignAnalyticsApi.md#getcampaignproviderintelligence) | **GET** /v1/campaigns/{campaign_id}/provider-intelligence | Get provider intelligence


# **getCampaignABResults**
> GetCampaignABResults200Response getCampaignABResults(campaignId)

Get A/B test results

Get per-variant performance metrics for an A/B test campaign including open rate, click rate, and statistical confidence.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignAnalyticsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.getCampaignABResults(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignAnalyticsApi->getCampaignABResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**GetCampaignABResults200Response**](GetCampaignABResults200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignAttribution**
> GetCampaignAttribution200Response getCampaignAttribution(campaignId)

Get campaign attribution

Get first-touch and last-touch attribution comparison for campaign conversions.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignAnalyticsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.getCampaignAttribution(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignAnalyticsApi->getCampaignAttribution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**GetCampaignAttribution200Response**](GetCampaignAttribution200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignDeliveryConfidence**
> GetCampaignDeliveryConfidence200Response getCampaignDeliveryConfidence(campaignId)

Get pre-send delivery confidence

Get a predicted delivery confidence score before sending a campaign. Evaluates list quality, sender reputation, and domain authentication.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignAnalyticsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.getCampaignDeliveryConfidence(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignAnalyticsApi->getCampaignDeliveryConfidence: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**GetCampaignDeliveryConfidence200Response**](GetCampaignDeliveryConfidence200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignFunnel**
> GetCampaignFunnel200Response getCampaignFunnel(campaignId)

Get campaign funnel

Get the full delivery and engagement funnel for a campaign showing progression from sent through delivered, opened, and clicked.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignAnalyticsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.getCampaignFunnel(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignAnalyticsApi->getCampaignFunnel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**GetCampaignFunnel200Response**](GetCampaignFunnel200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaignProviderIntelligence**
> GetCampaignProviderIntelligence200Response getCampaignProviderIntelligence(campaignId)

Get provider intelligence

Get per-provider delivery and engagement breakdown for a campaign (e.g. Gmail, Outlook, Yahoo).

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignAnalyticsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.getCampaignProviderIntelligence(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignAnalyticsApi->getCampaignProviderIntelligence: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**GetCampaignProviderIntelligence200Response**](GetCampaignProviderIntelligence200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

