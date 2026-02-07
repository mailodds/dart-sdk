# mailodds.api.SystemApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTelemetrySummary**](SystemApi.md#gettelemetrysummary) | **GET** /v1/telemetry/summary | Get validation telemetry
[**healthCheck**](SystemApi.md#healthcheck) | **GET** /health | Health check


# **getTelemetrySummary**
> TelemetrySummary getTelemetrySummary(window)

Get validation telemetry

Get validation metrics for your account. Useful for building dashboards and monitoring. Supports ETag caching.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SystemApi();
final window = window_example; // String | Time window for metrics

try {
    final result = api_instance.getTelemetrySummary(window);
    print(result);
} catch (e) {
    print('Exception when calling SystemApi->getTelemetrySummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **window** | **String**| Time window for metrics | [optional] [default to '24h']

### Return type

[**TelemetrySummary**](TelemetrySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthCheck**
> HealthCheck200Response healthCheck()

Health check

Check API health status. No authentication required.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = SystemApi();

try {
    final result = api_instance.healthCheck();
    print(result);
} catch (e) {
    print('Exception when calling SystemApi->healthCheck: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheck200Response**](HealthCheck200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

