# mailodds.api.ContactListsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appendToContactList**](ContactListsApi.md#appendtocontactlist) | **POST** /v1/contact-lists/{list_id}/append | Append to contact list
[**createContactList**](ContactListsApi.md#createcontactlist) | **POST** /v1/contact-lists | Create contact list
[**getInactiveContactsReport**](ContactListsApi.md#getinactivecontactsreport) | **GET** /v1/contacts/inactive-report | Get inactive contacts report
[**listContactLists**](ContactListsApi.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
[**queryContactList**](ContactListsApi.md#querycontactlist) | **POST** /v1/contact-lists/{list_id}/query | Query contact list


# **appendToContactList**
> AppendToContactList200Response appendToContactList(listId, appendToContactListRequest)

Append to contact list

Append validated emails from additional jobs to an existing contact list. Duplicates are automatically skipped.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactListsApi();
final listId = listId_example; // String | Contact list UUID
final appendToContactListRequest = AppendToContactListRequest(); // AppendToContactListRequest | 

try {
    final result = api_instance.appendToContactList(listId, appendToContactListRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->appendToContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list UUID | 
 **appendToContactListRequest** | [**AppendToContactListRequest**](AppendToContactListRequest.md)|  | 

### Return type

[**AppendToContactList200Response**](AppendToContactList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContactList**
> CreateContactList201Response createContactList(createContactListRequest)

Create contact list

Create a new contact list from one or more completed validation jobs. Only accepted (valid) emails are included.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactListsApi();
final createContactListRequest = CreateContactListRequest(); // CreateContactListRequest | 

try {
    final result = api_instance.createContactList(createContactListRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->createContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactListRequest** | [**CreateContactListRequest**](CreateContactListRequest.md)|  | 

### Return type

[**CreateContactList201Response**](CreateContactList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInactiveContactsReport**
> GetInactiveContactsReport200Response getInactiveContactsReport(days)

Get inactive contacts report

Get a report of contacts across all lists with no engagement activity (opens, clicks) in the specified period.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactListsApi();
final days = 56; // int | Inactivity threshold in days

try {
    final result = api_instance.getInactiveContactsReport(days);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->getInactiveContactsReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int**| Inactivity threshold in days | [optional] [default to 90]

### Return type

[**GetInactiveContactsReport200Response**](GetInactiveContactsReport200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactLists**
> ListContactLists200Response listContactLists(page, perPage)

List contact lists

List contact lists for the authenticated account. Contact lists are built from validated email jobs.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactListsApi();
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.listContactLists(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->listContactLists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 20]

### Return type

[**ListContactLists200Response**](ListContactLists200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryContactList**
> QueryContactList200Response queryContactList(listId, queryContactListRequest)

Query contact list

Query contact list entries with structured filters. Supports filtering by validation status, domain, and other attributes.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactListsApi();
final listId = listId_example; // String | Contact list UUID
final queryContactListRequest = QueryContactListRequest(); // QueryContactListRequest | 

try {
    final result = api_instance.queryContactList(listId, queryContactListRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->queryContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list UUID | 
 **queryContactListRequest** | [**QueryContactListRequest**](QueryContactListRequest.md)|  | 

### Return type

[**QueryContactList200Response**](QueryContactList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

