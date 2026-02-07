# mailodds.api.ValidationPoliciesApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPolicyRule**](ValidationPoliciesApi.md#addpolicyrule) | **POST** /v1/policies/{policy_id}/rules | Add rule to policy
[**createPolicy**](ValidationPoliciesApi.md#createpolicy) | **POST** /v1/policies | Create policy
[**createPolicyFromPreset**](ValidationPoliciesApi.md#createpolicyfrompreset) | **POST** /v1/policies/from-preset | Create policy from preset
[**deletePolicy**](ValidationPoliciesApi.md#deletepolicy) | **DELETE** /v1/policies/{policy_id} | Delete policy
[**deletePolicyRule**](ValidationPoliciesApi.md#deletepolicyrule) | **DELETE** /v1/policies/{policy_id}/rules/{rule_id} | Delete rule
[**getPolicy**](ValidationPoliciesApi.md#getpolicy) | **GET** /v1/policies/{policy_id} | Get policy
[**getPolicyPresets**](ValidationPoliciesApi.md#getpolicypresets) | **GET** /v1/policies/presets | Get policy presets
[**listPolicies**](ValidationPoliciesApi.md#listpolicies) | **GET** /v1/policies | List policies
[**testPolicy**](ValidationPoliciesApi.md#testpolicy) | **POST** /v1/policies/test | Test policy evaluation
[**updatePolicy**](ValidationPoliciesApi.md#updatepolicy) | **PUT** /v1/policies/{policy_id} | Update policy


# **addPolicyRule**
> AddPolicyRule201Response addPolicyRule(policyId, policyRule)

Add rule to policy

Add a new rule to an existing policy.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final policyId = 56; // int | 
final policyRule = PolicyRule(); // PolicyRule | 

try {
    final result = api_instance.addPolicyRule(policyId, policyRule);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->addPolicyRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **int**|  | 
 **policyRule** | [**PolicyRule**](PolicyRule.md)|  | 

### Return type

[**AddPolicyRule201Response**](AddPolicyRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPolicy**
> PolicyResponse createPolicy(createPolicyRequest)

Create policy

Create a new validation policy with rules.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final createPolicyRequest = CreatePolicyRequest(); // CreatePolicyRequest | 

try {
    final result = api_instance.createPolicy(createPolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->createPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPolicyRequest** | [**CreatePolicyRequest**](CreatePolicyRequest.md)|  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPolicyFromPreset**
> PolicyResponse createPolicyFromPreset(createPolicyFromPresetRequest)

Create policy from preset

Create a policy using a preset template.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final createPolicyFromPresetRequest = CreatePolicyFromPresetRequest(); // CreatePolicyFromPresetRequest | 

try {
    final result = api_instance.createPolicyFromPreset(createPolicyFromPresetRequest);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->createPolicyFromPreset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPolicyFromPresetRequest** | [**CreatePolicyFromPresetRequest**](CreatePolicyFromPresetRequest.md)|  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePolicy**
> DeletePolicy200Response deletePolicy(policyId)

Delete policy

Delete a policy and all its rules.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final policyId = 56; // int | 

try {
    final result = api_instance.deletePolicy(policyId);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->deletePolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **int**|  | 

### Return type

[**DeletePolicy200Response**](DeletePolicy200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePolicyRule**
> DeletePolicyRule200Response deletePolicyRule(policyId, ruleId)

Delete rule

Delete a rule from a policy.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final policyId = 56; // int | 
final ruleId = 56; // int | 

try {
    final result = api_instance.deletePolicyRule(policyId, ruleId);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->deletePolicyRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **int**|  | 
 **ruleId** | **int**|  | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolicy**
> PolicyResponse getPolicy(policyId)

Get policy

Get a single policy with its rules.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final policyId = 56; // int | 

try {
    final result = api_instance.getPolicy(policyId);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->getPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **int**|  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolicyPresets**
> PolicyPresetsResponse getPolicyPresets()

Get policy presets

Get available preset templates for quick policy creation.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();

try {
    final result = api_instance.getPolicyPresets();
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->getPolicyPresets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PolicyPresetsResponse**](PolicyPresetsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPolicies**
> PolicyListResponse listPolicies(includeRules)

List policies

List all validation policies for your account. Includes plan limits.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final includeRules = true; // bool | Include full rules in response

try {
    final result = api_instance.listPolicies(includeRules);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->listPolicies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeRules** | **bool**| Include full rules in response | [optional] [default to false]

### Return type

[**PolicyListResponse**](PolicyListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testPolicy**
> PolicyTestResponse testPolicy(testPolicyRequest)

Test policy evaluation

Test how a policy would evaluate a validation result without affecting production.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final testPolicyRequest = TestPolicyRequest(); // TestPolicyRequest | 

try {
    final result = api_instance.testPolicy(testPolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->testPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testPolicyRequest** | [**TestPolicyRequest**](TestPolicyRequest.md)|  | 

### Return type

[**PolicyTestResponse**](PolicyTestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePolicy**
> PolicyResponse updatePolicy(policyId, updatePolicyRequest)

Update policy

Update a policy's settings (name, enabled, default).

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ValidationPoliciesApi();
final policyId = 56; // int | 
final updatePolicyRequest = UpdatePolicyRequest(); // UpdatePolicyRequest | 

try {
    final result = api_instance.updatePolicy(policyId, updatePolicyRequest);
    print(result);
} catch (e) {
    print('Exception when calling ValidationPoliciesApi->updatePolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **int**|  | 
 **updatePolicyRequest** | [**UpdatePolicyRequest**](UpdatePolicyRequest.md)|  | 

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

