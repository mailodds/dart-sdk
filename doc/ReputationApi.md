# mailodds.api.ReputationApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReputation**](ReputationApi.md#getreputation) | **GET** /v1/reputation | Get account reputation
[**getReputationTimeline**](ReputationApi.md#getreputationtimeline) | **GET** /v1/reputation/timeline | Get reputation timeline


# **getReputation**
> GetReputation200Response getReputation(period)

Get account reputation

Get the aggregate reputation score and breakdown for the account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationApi();
final period = period_example; // String | Evaluation period

try {
    final result = api_instance.getReputation(period);
    print(result);
} catch (e) {
    print('Exception when calling ReputationApi->getReputation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Evaluation period | [optional] [default to '7d']

### Return type

[**GetReputation200Response**](GetReputation200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReputationTimeline**
> GetReputationTimeline200Response getReputationTimeline(period)

Get reputation timeline

Get reputation metrics over time.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationApi();
final period = period_example; // String | Timeline period

try {
    final result = api_instance.getReputationTimeline(period);
    print(result);
} catch (e) {
    print('Exception when calling ReputationApi->getReputationTimeline: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Timeline period | [optional] [default to '30d']

### Return type

[**GetReputationTimeline200Response**](GetReputationTimeline200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

