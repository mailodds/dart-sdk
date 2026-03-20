# mailodds.api.EngagementApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDisengagedContacts**](EngagementApi.md#getdisengagedcontacts) | **GET** /v1/engagement/disengaged | List disengaged contacts
[**getEngagementScore**](EngagementApi.md#getengagementscore) | **GET** /v1/engagement/score/{email} | Get engagement score
[**getEngagementSummary**](EngagementApi.md#getengagementsummary) | **GET** /v1/engagement/summary | Get engagement summary
[**suppressDisengaged**](EngagementApi.md#suppressdisengaged) | **POST** /v1/engagement/suppress-disengaged | Suppress disengaged contacts


# **getDisengagedContacts**
> GetDisengagedContacts200Response getDisengagedContacts(inactiveDays, minSends, domainId, page, perPage)

List disengaged contacts

List contacts that have not engaged within the specified period. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EngagementApi();
final inactiveDays = 56; // int | Days of inactivity
final minSends = 56; // int | Minimum emails sent to qualify
final domainId = domainId_example; // String | Filter by sending domain ID
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.getDisengagedContacts(inactiveDays, minSends, domainId, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling EngagementApi->getDisengagedContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inactiveDays** | **int**| Days of inactivity | [optional] [default to 90]
 **minSends** | **int**| Minimum emails sent to qualify | [optional] [default to 5]
 **domainId** | **String**| Filter by sending domain ID | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 100]

### Return type

[**GetDisengagedContacts200Response**](GetDisengagedContacts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEngagementScore**
> GetEngagementScore200Response getEngagementScore(email)

Get engagement score

Get the engagement score for a specific email address. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EngagementApi();
final email = email_example; // String | 

try {
    final result = api_instance.getEngagementScore(email);
    print(result);
} catch (e) {
    print('Exception when calling EngagementApi->getEngagementScore: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**GetEngagementScore200Response**](GetEngagementScore200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEngagementSummary**
> GetBounceStatsSummary200Response getEngagementSummary(domainId)

Get engagement summary

Get aggregate engagement metrics across all contacts. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EngagementApi();
final domainId = domainId_example; // String | Filter by sending domain ID

try {
    final result = api_instance.getEngagementSummary(domainId);
    print(result);
} catch (e) {
    print('Exception when calling EngagementApi->getEngagementSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**| Filter by sending domain ID | [optional] 

### Return type

[**GetBounceStatsSummary200Response**](GetBounceStatsSummary200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suppressDisengaged**
> SuppressDisengaged200Response suppressDisengaged(suppressDisengagedRequest)

Suppress disengaged contacts

Add disengaged contacts to the suppression list. Supports dry_run mode. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EngagementApi();
final suppressDisengagedRequest = SuppressDisengagedRequest(); // SuppressDisengagedRequest | 

try {
    final result = api_instance.suppressDisengaged(suppressDisengagedRequest);
    print(result);
} catch (e) {
    print('Exception when calling EngagementApi->suppressDisengaged: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **suppressDisengagedRequest** | [**SuppressDisengagedRequest**](SuppressDisengagedRequest.md)|  | 

### Return type

[**SuppressDisengaged200Response**](SuppressDisengaged200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

