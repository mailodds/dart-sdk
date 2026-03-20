# mailodds.api.DeliverabilityAdvisorApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dismissDeliverabilityRecommendation**](DeliverabilityAdvisorApi.md#dismissdeliverabilityrecommendation) | **POST** /v1/deliverability/recommendations/{recommendation_id}/dismiss | Dismiss a deliverability recommendation
[**getDeliverabilityRecommendations**](DeliverabilityAdvisorApi.md#getdeliverabilityrecommendations) | **GET** /v1/deliverability/recommendations | Get deliverability recommendations


# **dismissDeliverabilityRecommendation**
> dismissDeliverabilityRecommendation(recommendationId)

Dismiss a deliverability recommendation

Dismiss a deliverability recommendation so it no longer appears.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeliverabilityAdvisorApi();
final recommendationId = recommendationId_example; // String | 

try {
    api_instance.dismissDeliverabilityRecommendation(recommendationId);
} catch (e) {
    print('Exception when calling DeliverabilityAdvisorApi->dismissDeliverabilityRecommendation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recommendationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliverabilityRecommendations**
> getDeliverabilityRecommendations()

Get deliverability recommendations

Retrieve actionable deliverability recommendations for the account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeliverabilityAdvisorApi();

try {
    api_instance.getDeliverabilityRecommendations();
} catch (e) {
    print('Exception when calling DeliverabilityAdvisorApi->getDeliverabilityRecommendations: $e\n');
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

