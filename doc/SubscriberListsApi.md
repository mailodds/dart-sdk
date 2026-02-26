# mailodds.api.SubscriberListsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmSubscription**](SubscriberListsApi.md#confirmsubscription) | **GET** /v1/confirm/{token} | Confirm subscription
[**createList**](SubscriberListsApi.md#createlist) | **POST** /v1/lists | Create a subscriber list
[**deleteList**](SubscriberListsApi.md#deletelist) | **DELETE** /v1/lists/{list_id} | Delete a subscriber list
[**getList**](SubscriberListsApi.md#getlist) | **GET** /v1/lists/{list_id} | Get a subscriber list
[**getLists**](SubscriberListsApi.md#getlists) | **GET** /v1/lists | List subscriber lists
[**getSubscribers**](SubscriberListsApi.md#getsubscribers) | **GET** /v1/lists/{list_id}/subscribers | List subscribers
[**subscribe**](SubscriberListsApi.md#subscribe) | **POST** /v1/subscribe/{list_id} | Subscribe to a list
[**unsubscribeSubscriber**](SubscriberListsApi.md#unsubscribesubscriber) | **DELETE** /v1/lists/{list_id}/subscribers/{subscriber_id} | Unsubscribe a subscriber


# **confirmSubscription**
> ConfirmSubscription200Response confirmSubscription(token)

Confirm subscription

Confirm a pending subscription via the token sent in the confirmation email. No authentication required. Redirects to the list's configured redirect URL if set, otherwise returns JSON. Tokens expire after 72 hours.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final String token = token_example; // String | Confirmation token from email

try {
    final response = api.confirmSubscription(token);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->confirmSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Confirmation token from email | 

### Return type

[**ConfirmSubscription200Response**](ConfirmSubscription200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createList**
> CreateList201Response createList(createListRequest)

Create a subscriber list

Create a new subscriber list. Use lists to organize subscribers and manage double opt-in confirmation flows.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final CreateListRequest createListRequest = ; // CreateListRequest | 

try {
    final response = api.createList(createListRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->createList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createListRequest** | [**CreateListRequest**](CreateListRequest.md)|  | 

### Return type

[**CreateList201Response**](CreateList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteList**
> DeletePolicyRule200Response deleteList(listId)

Delete a subscriber list

Soft-delete a subscriber list. Existing subscribers are retained but the list is no longer usable.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final String listId = listId_example; // String | List UUID

try {
    final response = api.deleteList(listId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->deleteList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| List UUID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getList**
> CreateList201Response getList(listId)

Get a subscriber list

Get details of a specific subscriber list including subscriber and confirmed counts.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final String listId = listId_example; // String | List UUID

try {
    final response = api.getList(listId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->getList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| List UUID | 

### Return type

[**CreateList201Response**](CreateList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLists**
> GetLists200Response getLists(page, perPage)

List subscriber lists

List all subscriber lists for the authenticated account with pagination.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final int page = 56; // int | Page number
final int perPage = 56; // int | Items per page

try {
    final response = api.getLists(page, perPage);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->getLists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 1]
 **perPage** | **int**| Items per page | [optional] [default to 25]

### Return type

[**GetLists200Response**](GetLists200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscribers**
> GetSubscribers200Response getSubscribers(listId, page, perPage, status)

List subscribers

List paginated subscribers for a specific list. Optionally filter by status.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final String listId = listId_example; // String | List UUID
final int page = 56; // int | Page number
final int perPage = 56; // int | Items per page
final String status = status_example; // String | Filter by subscriber status

try {
    final response = api.getSubscribers(listId, page, perPage, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->getSubscribers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| List UUID | 
 **page** | **int**| Page number | [optional] [default to 1]
 **perPage** | **int**| Items per page | [optional] [default to 50]
 **status** | **String**| Filter by subscriber status | [optional] 

### Return type

[**GetSubscribers200Response**](GetSubscribers200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscribe**
> UnsubscribeSubscriber200Response subscribe(listId, subscribeRequest)

Subscribe to a list

Add a subscriber to a list and initiate the double opt-in confirmation flow. The subscriber receives a confirmation email and must click the link to confirm. Rate limited to 10 requests/min per IP and 1000/hour per account.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final String listId = listId_example; // String | List UUID
final SubscribeRequest subscribeRequest = ; // SubscribeRequest | 

try {
    final response = api.subscribe(listId, subscribeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->subscribe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| List UUID | 
 **subscribeRequest** | [**SubscribeRequest**](SubscribeRequest.md)|  | 

### Return type

[**UnsubscribeSubscriber200Response**](UnsubscribeSubscriber200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsubscribeSubscriber**
> UnsubscribeSubscriber200Response unsubscribeSubscriber(listId, subscriberId)

Unsubscribe a subscriber

Set a subscriber's status to unsubscribed. The consent record is retained for compliance.

### Example
```dart
import 'package:mailodds/api.dart';

final api = Mailodds().getSubscriberListsApi();
final String listId = listId_example; // String | List UUID
final String subscriberId = subscriberId_example; // String | Subscriber UUID

try {
    final response = api.unsubscribeSubscriber(listId, subscriberId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SubscriberListsApi->unsubscribeSubscriber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| List UUID | 
 **subscriberId** | **String**| Subscriber UUID | 

### Return type

[**UnsubscribeSubscriber200Response**](UnsubscribeSubscriber200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

