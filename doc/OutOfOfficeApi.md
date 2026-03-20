# mailodds.api.OutOfOfficeApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchCheckOoo**](OutOfOfficeApi.md#batchcheckooo) | **POST** /v1/out-of-office/batch-check | Batch check OOO status
[**deleteOooContact**](OutOfOfficeApi.md#deleteooocontact) | **DELETE** /v1/out-of-office/{email} | Delete OOO contact
[**getOooStatus**](OutOfOfficeApi.md#getooostatus) | **GET** /v1/out-of-office/{email}/status | Get OOO status for email
[**listOooContacts**](OutOfOfficeApi.md#listooocontacts) | **GET** /v1/out-of-office | List out-of-office contacts
[**updateOooContact**](OutOfOfficeApi.md#updateooocontact) | **PATCH** /v1/out-of-office/{email} | Update OOO contact


# **batchCheckOoo**
> BatchCheckOoo200Response batchCheckOoo(batchCheckOooRequest)

Batch check OOO status

Check OOO status for up to 1000 email addresses at once. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OutOfOfficeApi();
final batchCheckOooRequest = BatchCheckOooRequest(); // BatchCheckOooRequest | 

try {
    final result = api_instance.batchCheckOoo(batchCheckOooRequest);
    print(result);
} catch (e) {
    print('Exception when calling OutOfOfficeApi->batchCheckOoo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchCheckOooRequest** | [**BatchCheckOooRequest**](BatchCheckOooRequest.md)|  | 

### Return type

[**BatchCheckOoo200Response**](BatchCheckOoo200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOooContact**
> DeleteOooContact200Response deleteOooContact(email)

Delete OOO contact

Clear out-of-office status for an email address. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OutOfOfficeApi();
final email = email_example; // String | 

try {
    final result = api_instance.deleteOooContact(email);
    print(result);
} catch (e) {
    print('Exception when calling OutOfOfficeApi->deleteOooContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**DeleteOooContact200Response**](DeleteOooContact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOooStatus**
> GetOooStatus200Response getOooStatus(email)

Get OOO status for email

Check if a specific email address is currently out-of-office. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OutOfOfficeApi();
final email = email_example; // String | 

try {
    final result = api_instance.getOooStatus(email);
    print(result);
} catch (e) {
    print('Exception when calling OutOfOfficeApi->getOooStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**GetOooStatus200Response**](GetOooStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOooContacts**
> ListOooContacts200Response listOooContacts(activeOnly, page, perPage)

List out-of-office contacts

List contacts detected as out-of-office. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OutOfOfficeApi();
final activeOnly = true; // bool | Only return currently active OOO contacts
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.listOooContacts(activeOnly, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling OutOfOfficeApi->listOooContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activeOnly** | **bool**| Only return currently active OOO contacts | [optional] [default to true]
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 100]

### Return type

[**ListOooContacts200Response**](ListOooContacts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOooContact**
> Object updateOooContact(email, updateOooContactRequest)

Update OOO contact

Manually set or clear out-of-office status for an email. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OutOfOfficeApi();
final email = email_example; // String | 
final updateOooContactRequest = UpdateOooContactRequest(); // UpdateOooContactRequest | 

try {
    final result = api_instance.updateOooContact(email, updateOooContactRequest);
    print(result);
} catch (e) {
    print('Exception when calling OutOfOfficeApi->updateOooContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **updateOooContactRequest** | [**UpdateOooContactRequest**](UpdateOooContactRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

