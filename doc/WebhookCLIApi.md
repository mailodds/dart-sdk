# mailodds.api.WebhookCLIApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhookCliSession**](WebhookCLIApi.md#createwebhookclisession) | **POST** /v1/webhook-cli/sessions | Create CLI forwarding session
[**deleteWebhookCliSession**](WebhookCLIApi.md#deletewebhookclisession) | **DELETE** /v1/webhook-cli/sessions/{session_id} | Close CLI session
[**listWebhookDeliveries**](WebhookCLIApi.md#listwebhookdeliveries) | **GET** /v1/webhook-cli/deliveries | List recent webhook deliveries
[**replayWebhookDelivery**](WebhookCLIApi.md#replaywebhookdelivery) | **POST** /v1/webhook-cli/deliveries/{delivery_id}/replay | Replay webhook delivery


# **createWebhookCliSession**
> CreateWebhookCliSession201Response createWebhookCliSession(createWebhookCliSessionRequest)

Create CLI forwarding session

Register a new session for receiving webhook events via SSE.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhookCLIApi();
final createWebhookCliSessionRequest = CreateWebhookCliSessionRequest(); // CreateWebhookCliSessionRequest | 

try {
    final result = api_instance.createWebhookCliSession(createWebhookCliSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling WebhookCLIApi->createWebhookCliSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWebhookCliSessionRequest** | [**CreateWebhookCliSessionRequest**](CreateWebhookCliSessionRequest.md)|  | [optional] 

### Return type

[**CreateWebhookCliSession201Response**](CreateWebhookCliSession201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhookCliSession**
> DeleteWebhookCliSession200Response deleteWebhookCliSession(sessionId)

Close CLI session

Close a webhook CLI forwarding session.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhookCLIApi();
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.deleteWebhookCliSession(sessionId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookCLIApi->deleteWebhookCliSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 

### Return type

[**DeleteWebhookCliSession200Response**](DeleteWebhookCliSession200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebhookDeliveries**
> ListWebhookDeliveries200Response listWebhookDeliveries(limit)

List recent webhook deliveries

List recent webhook deliveries for replay.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhookCLIApi();
final limit = 56; // int | Maximum deliveries to return

try {
    final result = api_instance.listWebhookDeliveries(limit);
    print(result);
} catch (e) {
    print('Exception when calling WebhookCLIApi->listWebhookDeliveries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum deliveries to return | [optional] [default to 50]

### Return type

[**ListWebhookDeliveries200Response**](ListWebhookDeliveries200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replayWebhookDelivery**
> ReplayWebhookDelivery200Response replayWebhookDelivery(deliveryId)

Replay webhook delivery

Replay a historical webhook delivery to active CLI sessions.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WebhookCLIApi();
final deliveryId = 56; // int | 

try {
    final result = api_instance.replayWebhookDelivery(deliveryId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookCLIApi->replayWebhookDelivery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryId** | **int**|  | 

### Return type

[**ReplayWebhookDelivery200Response**](ReplayWebhookDelivery200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

