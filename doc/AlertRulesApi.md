# mailodds.api.AlertRulesApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlertRule**](AlertRulesApi.md#createalertrule) | **POST** /v1/alert-rules | Create alert rule
[**deleteAlertRule**](AlertRulesApi.md#deletealertrule) | **DELETE** /v1/alert-rules/{rule_id} | Delete alert rule
[**getAlertRule**](AlertRulesApi.md#getalertrule) | **GET** /v1/alert-rules/{rule_id} | Get alert rule
[**listAlertRules**](AlertRulesApi.md#listalertrules) | **GET** /v1/alert-rules | List alert rules
[**updateAlertRule**](AlertRulesApi.md#updatealertrule) | **PUT** /v1/alert-rules/{rule_id} | Update alert rule


# **createAlertRule**
> CreateAlertRule201Response createAlertRule(createAlertRuleRequest)

Create alert rule

Create a new metric threshold alert rule. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AlertRulesApi();
final createAlertRuleRequest = CreateAlertRuleRequest(); // CreateAlertRuleRequest | 

try {
    final result = api_instance.createAlertRule(createAlertRuleRequest);
    print(result);
} catch (e) {
    print('Exception when calling AlertRulesApi->createAlertRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAlertRuleRequest** | [**CreateAlertRuleRequest**](CreateAlertRuleRequest.md)|  | 

### Return type

[**CreateAlertRule201Response**](CreateAlertRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlertRule**
> DeletePolicyRule200Response deleteAlertRule(ruleId)

Delete alert rule

Delete an alert rule. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AlertRulesApi();
final ruleId = ruleId_example; // String | Alert rule ID

try {
    final result = api_instance.deleteAlertRule(ruleId);
    print(result);
} catch (e) {
    print('Exception when calling AlertRulesApi->deleteAlertRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Alert rule ID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlertRule**
> CreateAlertRule201Response getAlertRule(ruleId)

Get alert rule

Get a single alert rule by ID. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AlertRulesApi();
final ruleId = ruleId_example; // String | Alert rule ID

try {
    final result = api_instance.getAlertRule(ruleId);
    print(result);
} catch (e) {
    print('Exception when calling AlertRulesApi->getAlertRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Alert rule ID | 

### Return type

[**CreateAlertRule201Response**](CreateAlertRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAlertRules**
> ListAlertRules200Response listAlertRules()

List alert rules

List all configured alert rules. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AlertRulesApi();

try {
    final result = api_instance.listAlertRules();
    print(result);
} catch (e) {
    print('Exception when calling AlertRulesApi->listAlertRules: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAlertRules200Response**](ListAlertRules200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAlertRule**
> CreateAlertRule201Response updateAlertRule(ruleId, updateAlertRuleRequest)

Update alert rule

Update an existing alert rule. Requires Growth+ plan.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AlertRulesApi();
final ruleId = ruleId_example; // String | Alert rule ID
final updateAlertRuleRequest = UpdateAlertRuleRequest(); // UpdateAlertRuleRequest | 

try {
    final result = api_instance.updateAlertRule(ruleId, updateAlertRuleRequest);
    print(result);
} catch (e) {
    print('Exception when calling AlertRulesApi->updateAlertRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Alert rule ID | 
 **updateAlertRuleRequest** | [**UpdateAlertRuleRequest**](UpdateAlertRuleRequest.md)|  | 

### Return type

[**CreateAlertRule201Response**](CreateAlertRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

