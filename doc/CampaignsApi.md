# mailodds.api.CampaignsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelCampaign**](CampaignsApi.md#cancelcampaign) | **POST** /v1/campaigns/{campaign_id}/cancel | Cancel a campaign
[**createCampaign**](CampaignsApi.md#createcampaign) | **POST** /v1/campaigns | Create a campaign
[**createCampaignVariant**](CampaignsApi.md#createcampaignvariant) | **POST** /v1/campaigns/{campaign_id}/variants | Create A/B variant
[**getCampaign**](CampaignsApi.md#getcampaign) | **GET** /v1/campaigns/{campaign_id} | Get campaign with stats
[**listCampaigns**](CampaignsApi.md#listcampaigns) | **GET** /v1/campaigns | List campaigns
[**scheduleCampaign**](CampaignsApi.md#schedulecampaign) | **POST** /v1/campaigns/{campaign_id}/schedule | Schedule a campaign
[**sendCampaign**](CampaignsApi.md#sendcampaign) | **POST** /v1/campaigns/{campaign_id}/send | Send a campaign


# **cancelCampaign**
> CampaignResponse cancelCampaign(campaignId)

Cancel a campaign

Cancel a scheduled or in-progress campaign. Messages already delivered are not recalled.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.cancelCampaign(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->cancelCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaign**
> CampaignResponse createCampaign(createCampaignRequest)

Create a campaign

Create a new email campaign. Campaigns target a subscriber list and support A/B variant testing.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final createCampaignRequest = CreateCampaignRequest(); // CreateCampaignRequest | 

try {
    final result = api_instance.createCampaign(createCampaignRequest);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->createCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCampaignRequest** | [**CreateCampaignRequest**](CreateCampaignRequest.md)|  | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCampaignVariant**
> CreateCampaignVariant201Response createCampaignVariant(campaignId, createVariantRequest)

Create A/B variant

Add an A/B test variant to a campaign. Each variant has its own subject, body, and traffic weight. The campaign must be in draft status.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final campaignId = campaignId_example; // String | Campaign UUID
final createVariantRequest = CreateVariantRequest(); // CreateVariantRequest | 

try {
    final result = api_instance.createCampaignVariant(campaignId, createVariantRequest);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->createCampaignVariant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 
 **createVariantRequest** | [**CreateVariantRequest**](CreateVariantRequest.md)|  | 

### Return type

[**CreateCampaignVariant201Response**](CreateCampaignVariant201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCampaign**
> CampaignResponse getCampaign(campaignId)

Get campaign with stats

Get a campaign by ID including delivery statistics and engagement metrics.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.getCampaign(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->getCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCampaigns**
> ListCampaigns200Response listCampaigns(page, perPage, status)

List campaigns

List all campaigns for the authenticated account with pagination.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final page = 56; // int | Page number
final perPage = 56; // int | Items per page
final status = status_example; // String | Filter by campaign status

try {
    final result = api_instance.listCampaigns(page, perPage, status);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->listCampaigns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 1]
 **perPage** | **int**| Items per page | [optional] [default to 25]
 **status** | **String**| Filter by campaign status | [optional] 

### Return type

[**ListCampaigns200Response**](ListCampaigns200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduleCampaign**
> CampaignResponse scheduleCampaign(campaignId, scheduleCampaignRequest)

Schedule a campaign

Schedule a campaign for future delivery. Provide a send_at timestamp in ISO 8601 format.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final campaignId = campaignId_example; // String | Campaign UUID
final scheduleCampaignRequest = ScheduleCampaignRequest(); // ScheduleCampaignRequest | 

try {
    final result = api_instance.scheduleCampaign(campaignId, scheduleCampaignRequest);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->scheduleCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 
 **scheduleCampaignRequest** | [**ScheduleCampaignRequest**](ScheduleCampaignRequest.md)|  | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendCampaign**
> CampaignResponse sendCampaign(campaignId)

Send a campaign

Begin sending a campaign immediately. The campaign must be in draft status with at least one variant and a target list.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CampaignsApi();
final campaignId = campaignId_example; // String | Campaign UUID

try {
    final result = api_instance.sendCampaign(campaignId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignsApi->sendCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**| Campaign UUID | 

### Return type

[**CampaignResponse**](CampaignResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

