# mailodds.api.BlacklistMonitoringApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBlacklistMonitor**](BlacklistMonitoringApi.md#addblacklistmonitor) | **POST** /v1/blacklist-monitors | Add blacklist monitor
[**deleteBlacklistMonitor**](BlacklistMonitoringApi.md#deleteblacklistmonitor) | **DELETE** /v1/blacklist-monitors/{monitor_id} | Delete a blacklist monitor
[**getBlacklistHistory**](BlacklistMonitoringApi.md#getblacklisthistory) | **GET** /v1/blacklist-monitors/{monitor_id}/history | Get blacklist check history
[**listBlacklistMonitors**](BlacklistMonitoringApi.md#listblacklistmonitors) | **GET** /v1/blacklist-monitors | List blacklist monitors
[**runBlacklistCheck**](BlacklistMonitoringApi.md#runblacklistcheck) | **POST** /v1/blacklist-monitors/{monitor_id}/check | Run blacklist check


# **addBlacklistMonitor**
> AddBlacklistMonitor201Response addBlacklistMonitor(addBlacklistMonitorRequest)

Add blacklist monitor

Add an IP address or domain to monitor against DNS blacklists. An initial check is run immediately.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BlacklistMonitoringApi();
final addBlacklistMonitorRequest = AddBlacklistMonitorRequest(); // AddBlacklistMonitorRequest | 

try {
    final result = api_instance.addBlacklistMonitor(addBlacklistMonitorRequest);
    print(result);
} catch (e) {
    print('Exception when calling BlacklistMonitoringApi->addBlacklistMonitor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addBlacklistMonitorRequest** | [**AddBlacklistMonitorRequest**](AddBlacklistMonitorRequest.md)|  | 

### Return type

[**AddBlacklistMonitor201Response**](AddBlacklistMonitor201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBlacklistMonitor**
> DeletePolicyRule200Response deleteBlacklistMonitor(monitorId)

Delete a blacklist monitor

Permanently remove a blacklist monitor and its check history.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BlacklistMonitoringApi();
final monitorId = monitorId_example; // String | Monitor UUID

try {
    final result = api_instance.deleteBlacklistMonitor(monitorId);
    print(result);
} catch (e) {
    print('Exception when calling BlacklistMonitoringApi->deleteBlacklistMonitor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**| Monitor UUID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlacklistHistory**
> GetBlacklistHistory200Response getBlacklistHistory(monitorId, page, perPage)

Get blacklist check history

Get the listing and delisting timeline for a monitored IP or domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BlacklistMonitoringApi();
final monitorId = monitorId_example; // String | Monitor UUID
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.getBlacklistHistory(monitorId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling BlacklistMonitoringApi->getBlacklistHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**| Monitor UUID | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**GetBlacklistHistory200Response**](GetBlacklistHistory200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlacklistMonitors**
> ListBlacklistMonitors200Response listBlacklistMonitors()

List blacklist monitors

List all blacklist monitors for the authenticated account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BlacklistMonitoringApi();

try {
    final result = api_instance.listBlacklistMonitors();
    print(result);
} catch (e) {
    print('Exception when calling BlacklistMonitoringApi->listBlacklistMonitors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListBlacklistMonitors200Response**](ListBlacklistMonitors200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runBlacklistCheck**
> RunBlacklistCheck200Response runBlacklistCheck(monitorId)

Run blacklist check

Run an on-demand DNSBL check for a monitored IP or domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BlacklistMonitoringApi();
final monitorId = monitorId_example; // String | Monitor UUID

try {
    final result = api_instance.runBlacklistCheck(monitorId);
    print(result);
} catch (e) {
    print('Exception when calling BlacklistMonitoringApi->runBlacklistCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**| Monitor UUID | 

### Return type

[**RunBlacklistCheck200Response**](RunBlacklistCheck200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

