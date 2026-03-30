# mailodds.api.InboundProcessingApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctInboundMessage**](InboundProcessingApi.md#correctinboundmessage) | **PATCH** /v1/inbound-messages/{message_id}/correction | Correct inbound message classification
[**getBounceStats**](InboundProcessingApi.md#getbouncestats) | **GET** /v1/bounce-stats | Get bounce statistics
[**getBounceStatsSummary**](InboundProcessingApi.md#getbouncestatssummary) | **GET** /v1/bounce-stats/summary | Get bounce statistics summary
[**getComplaintAssessment**](InboundProcessingApi.md#getcomplaintassessment) | **GET** /v1/complaint-assessment | Get complaint assessment
[**getInboundMessage**](InboundProcessingApi.md#getinboundmessage) | **GET** /v1/inbound-messages/{message_id} | Get inbound message
[**listInboundMessages**](InboundProcessingApi.md#listinboundmessages) | **GET** /v1/inbound-messages | List inbound messages


# **correctInboundMessage**
> GetInboundMessage200Response correctInboundMessage(messageId, correctInboundMessageRequest)

Correct inbound message classification

Submit a human correction for an inbound message classification. Requires Pro+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundProcessingApi();
final messageId = messageId_example; // String | 
final correctInboundMessageRequest = CorrectInboundMessageRequest(); // CorrectInboundMessageRequest | 

try {
    final result = api_instance.correctInboundMessage(messageId, correctInboundMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling InboundProcessingApi->correctInboundMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **correctInboundMessageRequest** | [**CorrectInboundMessageRequest**](CorrectInboundMessageRequest.md)|  | 

### Return type

[**GetInboundMessage200Response**](GetInboundMessage200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceStats**
> GetBounceStats200Response getBounceStats(domainId, period, groupBy)

Get bounce statistics

Get bounce and complaint statistics grouped by time period. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundProcessingApi();
final domainId = domainId_example; // String | Filter by sending domain ID
final period = period_example; // String | Time period
final groupBy = groupBy_example; // String | Grouping interval

try {
    final result = api_instance.getBounceStats(domainId, period, groupBy);
    print(result);
} catch (e) {
    print('Exception when calling InboundProcessingApi->getBounceStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Filter by sending domain ID | [optional] 
 **period** | **String**| Time period | [optional] [default to '7d']
 **groupBy** | **String**| Grouping interval | [optional] [default to 'day']

### Return type

[**GetBounceStats200Response**](GetBounceStats200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceStatsSummary**
> GetBounceStatsSummary200Response getBounceStatsSummary(domainId, period)

Get bounce statistics summary

Get aggregated bounce and complaint statistics. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundProcessingApi();
final domainId = domainId_example; // String | Filter by sending domain ID
final period = period_example; // String | Time period

try {
    final result = api_instance.getBounceStatsSummary(domainId, period);
    print(result);
} catch (e) {
    print('Exception when calling InboundProcessingApi->getBounceStatsSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Filter by sending domain ID | [optional] 
 **period** | **String**| Time period | [optional] [default to '30d']

### Return type

[**GetBounceStatsSummary200Response**](GetBounceStatsSummary200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComplaintAssessment**
> GetComplaintAssessment200Response getComplaintAssessment(domainId, period)

Get complaint assessment

Assess complaint risk based on recent inbound data. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundProcessingApi();
final domainId = domainId_example; // String | Filter by sending domain ID
final period = period_example; // String | Time period

try {
    final result = api_instance.getComplaintAssessment(domainId, period);
    print(result);
} catch (e) {
    print('Exception when calling InboundProcessingApi->getComplaintAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Filter by sending domain ID | [optional] 
 **period** | **String**| Time period | [optional] [default to '30d']

### Return type

[**GetComplaintAssessment200Response**](GetComplaintAssessment200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboundMessage**
> GetInboundMessage200Response getInboundMessage(messageId)

Get inbound message

Get a single inbound message with full body content. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundProcessingApi();
final messageId = messageId_example; // String | 

try {
    final result = api_instance.getInboundMessage(messageId);
    print(result);
} catch (e) {
    print('Exception when calling InboundProcessingApi->getInboundMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 

### Return type

[**GetInboundMessage200Response**](GetInboundMessage200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInboundMessages**
> ListInboundMessages200Response listInboundMessages(category, domainId, since, until, isRead, recipient, search, page, perPage)

List inbound messages

List inbound messages (bounces, complaints, replies, OOO). Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundProcessingApi();
final category = category_example; // String | Filter by category
final domainId = domainId_example; // String | Filter by sending domain ID
final since = 2013-10-20T19:20:30+01:00; // DateTime | Start date (ISO 8601)
final until = 2013-10-20T19:20:30+01:00; // DateTime | End date (ISO 8601)
final isRead = true; // bool | Filter by read status
final recipient = recipient_example; // String | Filter by original recipient
final search = search_example; // String | Search in subject and body
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.listInboundMessages(category, domainId, since, until, isRead, recipient, search, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling InboundProcessingApi->listInboundMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**| Filter by category | [optional] 
 **domainId** | **String**| Filter by sending domain ID | [optional] 
 **since** | **DateTime**| Start date (ISO 8601) | [optional] 
 **until** | **DateTime**| End date (ISO 8601) | [optional] 
 **isRead** | **bool**| Filter by read status | [optional] 
 **recipient** | **String**| Filter by original recipient | [optional] 
 **search** | **String**| Search in subject and body | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 50]

### Return type

[**ListInboundMessages200Response**](ListInboundMessages200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

