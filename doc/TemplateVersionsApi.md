# mailodds.api.TemplateVersionsApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**canaryTemplateVersion**](TemplateVersionsApi.md#canarytemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions/{version_id}/canary | Start canary deployment
[**createTemplateVersion**](TemplateVersionsApi.md#createtemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions | Create a template version
[**getTemplateVersion**](TemplateVersionsApi.md#gettemplateversion) | **GET** /v1/campaigns/{campaign_id}/template-versions/{version_id} | Get a template version
[**listTemplateVersions**](TemplateVersionsApi.md#listtemplateversions) | **GET** /v1/campaigns/{campaign_id}/template-versions | List template versions
[**promoteTemplateVersion**](TemplateVersionsApi.md#promotetemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions/{version_id}/promote | Promote a template version
[**rollbackTemplateVersion**](TemplateVersionsApi.md#rollbacktemplateversion) | **POST** /v1/campaigns/{campaign_id}/template-versions/rollback | Rollback template version
[**updateTemplateVersion**](TemplateVersionsApi.md#updatetemplateversion) | **PUT** /v1/campaigns/{campaign_id}/template-versions/{version_id} | Update a template version


# **canaryTemplateVersion**
> canaryTemplateVersion(campaignId, versionId)

Start canary deployment

Start a canary deployment for a template version with a specified traffic percentage.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 
final versionId = versionId_example; // String | 

try {
    api_instance.canaryTemplateVersion(campaignId, versionId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->canaryTemplateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **versionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplateVersion**
> createTemplateVersion(campaignId)

Create a template version

Create a new template version for a campaign.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 

try {
    api_instance.createTemplateVersion(campaignId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->createTemplateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplateVersion**
> getTemplateVersion(campaignId, versionId)

Get a template version

Retrieve a specific template version by ID.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 
final versionId = versionId_example; // String | 

try {
    api_instance.getTemplateVersion(campaignId, versionId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->getTemplateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **versionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplateVersions**
> listTemplateVersions(campaignId)

List template versions

List all template versions for a campaign.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 

try {
    api_instance.listTemplateVersions(campaignId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->listTemplateVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteTemplateVersion**
> promoteTemplateVersion(campaignId, versionId)

Promote a template version

Promote a template version to active for the campaign.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 
final versionId = versionId_example; // String | 

try {
    api_instance.promoteTemplateVersion(campaignId, versionId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->promoteTemplateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **versionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rollbackTemplateVersion**
> rollbackTemplateVersion(campaignId)

Rollback template version

Rollback the canary deployment and revert to the previous active version.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 

try {
    api_instance.rollbackTemplateVersion(campaignId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->rollbackTemplateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateVersion**
> updateTemplateVersion(campaignId, versionId)

Update a template version

Update an existing template version.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TemplateVersionsApi();
final campaignId = campaignId_example; // String | 
final versionId = versionId_example; // String | 

try {
    api_instance.updateTemplateVersion(campaignId, versionId);
} catch (e) {
    print('Exception when calling TemplateVersionsApi->updateTemplateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **versionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

