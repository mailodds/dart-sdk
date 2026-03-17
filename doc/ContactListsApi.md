# mailodds.api.ContactListsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContact**](ContactListsApi.md#addcontact) | **POST** /v1/contact-lists/{list_id}/contacts | Add contact to list
[**appendToContactList**](ContactListsApi.md#appendtocontactlist) | **POST** /v1/contact-lists/{list_id}/append | Append to contact list
[**createContactList**](ContactListsApi.md#createcontactlist) | **POST** /v1/contact-lists | Create contact list
[**deleteContact**](ContactListsApi.md#deletecontact) | **DELETE** /v1/contact-lists/{list_id}/contacts/{contact_id} | Delete contact
[**deleteContactList**](ContactListsApi.md#deletecontactlist) | **DELETE** /v1/contact-lists/{list_id} | Delete a contact list
[**exportContactList**](ContactListsApi.md#exportcontactlist) | **GET** /v1/contact-lists/{list_id}/export | Export contact list
[**getInactiveContactsReport**](ContactListsApi.md#getinactivecontactsreport) | **GET** /v1/contacts/inactive-report | Get inactive contacts report
[**importContactList**](ContactListsApi.md#importcontactlist) | **POST** /v1/contact-lists/{list_id}/import | Import contacts from CSV
[**listContactLists**](ContactListsApi.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
[**queryContactList**](ContactListsApi.md#querycontactlist) | **POST** /v1/contact-lists/{list_id}/query | Query contact list
[**updateContact**](ContactListsApi.md#updatecontact) | **PATCH** /v1/contact-lists/{list_id}/contacts/{contact_id} | Update contact


# **addContact**
> AddContact201Response addContact(listId, addContactRequest)

Add contact to list

Add a single contact to a contact list.

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
final listId = listId_example; // String | Contact list ID
final addContactRequest = AddContactRequest(); // AddContactRequest | 

try {
    final result = api_instance.addContact(listId, addContactRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->addContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list ID | 
 **addContactRequest** | [**AddContactRequest**](AddContactRequest.md)|  | 

### Return type

[**AddContact201Response**](AddContact201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **deleteContact**
> DeletePolicyRule200Response deleteContact(listId, contactId)

Delete contact

Remove a single contact from a contact list.

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
final listId = listId_example; // String | Contact list ID
final contactId = contactId_example; // String | Contact ID

try {
    final result = api_instance.deleteContact(listId, contactId);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->deleteContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list ID | 
 **contactId** | **String**| Contact ID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContactList**
> DeletePolicyRule200Response deleteContactList(listId)

Delete a contact list

Permanently delete a contact list and all its entries.

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

try {
    final result = api_instance.deleteContactList(listId);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->deleteContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list UUID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportContactList**
> String exportContactList(listId)

Export contact list

Export a contact list as CSV.

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
final listId = listId_example; // String | Contact list ID

try {
    final result = api_instance.exportContactList(listId);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->exportContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list ID | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

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

# **importContactList**
> ImportContactList200Response importContactList(listId, file, columnMapping, consentSource, tags)

Import contacts from CSV

Import contacts into a list from a CSV file (max 10MB).

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
final listId = listId_example; // String | Contact list ID
final file = BINARY_DATA_HERE; // MultipartFile | CSV file (max 10MB)
final columnMapping = columnMapping_example; // String | JSON mapping of CSV columns to contact fields
final consentSource = consentSource_example; // String | Source of consent for imported contacts
final tags = tags_example; // String | JSON array of tags to apply

try {
    final result = api_instance.importContactList(listId, file, columnMapping, consentSource, tags);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->importContactList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list ID | 
 **file** | **MultipartFile**| CSV file (max 10MB) | 
 **columnMapping** | **String**| JSON mapping of CSV columns to contact fields | [optional] 
 **consentSource** | **String**| Source of consent for imported contacts | [optional] 
 **tags** | **String**| JSON array of tags to apply | [optional] 

### Return type

[**ImportContactList200Response**](ImportContactList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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

# **updateContact**
> AddContact201Response updateContact(listId, contactId, updateContactRequest)

Update contact

Update a single contact in a contact list.

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
final listId = listId_example; // String | Contact list ID
final contactId = contactId_example; // String | Contact ID
final updateContactRequest = UpdateContactRequest(); // UpdateContactRequest | 

try {
    final result = api_instance.updateContact(listId, contactId, updateContactRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactListsApi->updateContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Contact list ID | 
 **contactId** | **String**| Contact ID | 
 **updateContactRequest** | [**UpdateContactRequest**](UpdateContactRequest.md)|  | 

### Return type

[**AddContact201Response**](AddContact201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

