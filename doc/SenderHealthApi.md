# mailodds.api.SenderHealthApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSenderHealth**](SenderHealthApi.md#getsenderhealth) | **GET** /v1/sender-health | Get sender health score
[**getSenderHealthTrend**](SenderHealthApi.md#getsenderhealthtrend) | **GET** /v1/sender-health/trend | Get sender health trend


# **getSenderHealth**
> GetSenderHealth200Response getSenderHealth(period)

Get sender health score

Get an aggregate sender health score (0-100) across all sending domains. Factors in delivery rate, bounce rate, complaint rate, and authentication status.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SenderHealthApi();
final period = period_example; // String | Time period for health calculation

try {
    final result = api_instance.getSenderHealth(period);
    print(result);
} catch (e) {
    print('Exception when calling SenderHealthApi->getSenderHealth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Time period for health calculation | [optional] [default to '30d']

### Return type

[**GetSenderHealth200Response**](GetSenderHealth200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSenderHealthTrend**
> GetSenderHealthTrend200Response getSenderHealthTrend(period)

Get sender health trend

Get historical sender health scores over time for trend analysis. Returns daily data points for the requested period.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SenderHealthApi();
final period = period_example; // String | Time period for trend data

try {
    final result = api_instance.getSenderHealthTrend(period);
    print(result);
} catch (e) {
    print('Exception when calling SenderHealthApi->getSenderHealthTrend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Time period for trend data | [optional] [default to '30d']

### Return type

[**GetSenderHealthTrend200Response**](GetSenderHealthTrend200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

