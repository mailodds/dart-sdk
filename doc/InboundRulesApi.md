# mailodds.api.InboundRulesApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInboundRule**](InboundRulesApi.md#createinboundrule) | **POST** /v1/sending-domains/{domain_id}/inbound-rules | Create an inbound rule
[**deleteInboundRule**](InboundRulesApi.md#deleteinboundrule) | **DELETE** /v1/sending-domains/{domain_id}/inbound-rules/{rule_id} | Delete an inbound rule
[**dryRunInboundRules**](InboundRulesApi.md#dryruninboundrules) | **POST** /v1/sending-domains/{domain_id}/inbound-rules/dry-run | Dry-run inbound rules
[**getInboundRule**](InboundRulesApi.md#getinboundrule) | **GET** /v1/sending-domains/{domain_id}/inbound-rules/{rule_id} | Get an inbound rule
[**listInboundRules**](InboundRulesApi.md#listinboundrules) | **GET** /v1/sending-domains/{domain_id}/inbound-rules | List inbound rules
[**updateInboundRule**](InboundRulesApi.md#updateinboundrule) | **PUT** /v1/sending-domains/{domain_id}/inbound-rules/{rule_id} | Update an inbound rule


# **createInboundRule**
> createInboundRule(domainId)

Create an inbound rule

Create an inbound routing rule for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundRulesApi();
final domainId = domainId_example; // String | 

try {
    api_instance.createInboundRule(domainId);
} catch (e) {
    print('Exception when calling InboundRulesApi->createInboundRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInboundRule**
> deleteInboundRule(domainId, ruleId)

Delete an inbound rule

Delete an inbound routing rule.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundRulesApi();
final domainId = domainId_example; // String | 
final ruleId = ruleId_example; // String | 

try {
    api_instance.deleteInboundRule(domainId, ruleId);
} catch (e) {
    print('Exception when calling InboundRulesApi->deleteInboundRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 
 **ruleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dryRunInboundRules**
> dryRunInboundRules(domainId)

Dry-run inbound rules

Evaluate inbound rules against a test message without side effects.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundRulesApi();
final domainId = domainId_example; // String | 

try {
    api_instance.dryRunInboundRules(domainId);
} catch (e) {
    print('Exception when calling InboundRulesApi->dryRunInboundRules: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInboundRule**
> getInboundRule(domainId, ruleId)

Get an inbound rule

Retrieve a specific inbound routing rule by ID.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundRulesApi();
final domainId = domainId_example; // String | 
final ruleId = ruleId_example; // String | 

try {
    api_instance.getInboundRule(domainId, ruleId);
} catch (e) {
    print('Exception when calling InboundRulesApi->getInboundRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 
 **ruleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInboundRules**
> listInboundRules(domainId)

List inbound rules

List all inbound routing rules for a sending domain.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundRulesApi();
final domainId = domainId_example; // String | 

try {
    api_instance.listInboundRules(domainId);
} catch (e) {
    print('Exception when calling InboundRulesApi->listInboundRules: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInboundRule**
> updateInboundRule(domainId, ruleId)

Update an inbound rule

Update an existing inbound routing rule.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboundRulesApi();
final domainId = domainId_example; // String | 
final ruleId = ruleId_example; // String | 

try {
    api_instance.updateInboundRule(domainId, ruleId);
} catch (e) {
    print('Exception when calling InboundRulesApi->updateInboundRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **String**|  | 
 **ruleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

