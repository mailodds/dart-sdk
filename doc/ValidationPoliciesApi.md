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

final api = Mailodds().getValidationPoliciesApi();
final int policyId = 56; // int | 
final PolicyRule policyRule = ; // PolicyRule | 

try {
    final response = api.addPolicyRule(policyId, policyRule);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final CreatePolicyRequest createPolicyRequest = ; // CreatePolicyRequest | 

try {
    final response = api.createPolicy(createPolicyRequest);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final CreatePolicyFromPresetRequest createPolicyFromPresetRequest = ; // CreatePolicyFromPresetRequest | 

try {
    final response = api.createPolicyFromPreset(createPolicyFromPresetRequest);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final int policyId = 56; // int | 

try {
    final response = api.deletePolicy(policyId);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final int policyId = 56; // int | 
final int ruleId = 56; // int | 

try {
    final response = api.deletePolicyRule(policyId, ruleId);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final int policyId = 56; // int | 

try {
    final response = api.getPolicy(policyId);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();

try {
    final response = api.getPolicyPresets();
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final bool includeRules = true; // bool | Include full rules in response

try {
    final response = api.listPolicies(includeRules);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final TestPolicyRequest testPolicyRequest = ; // TestPolicyRequest | 

try {
    final response = api.testPolicy(testPolicyRequest);
    print(response);
} on DioException catch (e) {
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

final api = Mailodds().getValidationPoliciesApi();
final int policyId = 56; // int | 
final UpdatePolicyRequest updatePolicyRequest = ; // UpdatePolicyRequest | 

try {
    final response = api.updatePolicy(policyId, updatePolicyRequest);
    print(response);
} on DioException catch (e) {
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

