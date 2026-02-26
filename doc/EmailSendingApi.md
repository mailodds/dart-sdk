# mailodds.api.EmailSendingApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deliverBatch**](EmailSendingApi.md#deliverbatch) | **POST** /v1/deliver/batch | Send to multiple recipients (max 100)
[**deliverEmail**](EmailSendingApi.md#deliveremail) | **POST** /v1/deliver | Send a single email


# **deliverBatch**
> BatchDeliverResponse deliverBatch(batchDeliverRequest)

Send to multiple recipients (max 100)

Send a single message to up to 100 recipients. Shares the same message body across all recipients. Each recipient is processed independently.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getEmailSendingApi();
final BatchDeliverRequest batchDeliverRequest = ; // BatchDeliverRequest | 

try {
    final response = api.deliverBatch(batchDeliverRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EmailSendingApi->deliverBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchDeliverRequest** | [**BatchDeliverRequest**](BatchDeliverRequest.md)|  | 

### Return type

[**BatchDeliverResponse**](BatchDeliverResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deliverEmail**
> DeliverResponse deliverEmail(deliverRequest)

Send a single email

Send a transactional email through the safety pipeline. Validates recipients, checks domain ownership, and queues for delivery. Requires a verified sending domain.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getEmailSendingApi();
final DeliverRequest deliverRequest = ; // DeliverRequest | 

try {
    final response = api.deliverEmail(deliverRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EmailSendingApi->deliverEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliverRequest** | [**DeliverRequest**](DeliverRequest.md)|  | 

### Return type

[**DeliverResponse**](DeliverResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

