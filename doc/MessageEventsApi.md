# mailodds.api.MessageEventsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessageEvents**](MessageEventsApi.md#getmessageevents) | **GET** /v1/message-events | Get message events


# **getMessageEvents**
> GetMessageEvents200Response getMessageEvents(messageId)

Get message events

Get delivery and engagement events for a specific sent message. Returns events in chronological order with bot detection.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessageEventsApi();
final messageId = messageId_example; // String | UUID of the sent message

try {
    final result = api_instance.getMessageEvents(messageId);
    print(result);
} catch (e) {
    print('Exception when calling MessageEventsApi->getMessageEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| UUID of the sent message | 

### Return type

[**GetMessageEvents200Response**](GetMessageEvents200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

