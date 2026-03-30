# mailodds.api.ReputationPoliciesApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReputationPolicy**](ReputationPoliciesApi.md#createreputationpolicy) | **POST** /v1/reputation-policies | Create a reputation policy
[**createReputationPolicyFromPreset**](ReputationPoliciesApi.md#createreputationpolicyfrompreset) | **POST** /v1/reputation-policies/from-preset | Create a reputation policy from preset
[**deleteReputationPolicy**](ReputationPoliciesApi.md#deletereputationpolicy) | **DELETE** /v1/reputation-policies/{policy_id} | Delete a reputation policy
[**getReputationPolicy**](ReputationPoliciesApi.md#getreputationpolicy) | **GET** /v1/reputation-policies/{policy_id} | Get a reputation policy
[**getReputationPolicyStatus**](ReputationPoliciesApi.md#getreputationpolicystatus) | **GET** /v1/reputation-policies/{policy_id}/status | Get reputation policy status
[**listReputationPolicies**](ReputationPoliciesApi.md#listreputationpolicies) | **GET** /v1/reputation-policies | List reputation policies
[**testReputationPolicy**](ReputationPoliciesApi.md#testreputationpolicy) | **POST** /v1/reputation-policies/{policy_id}/test | Test a reputation policy
[**updateReputationPolicy**](ReputationPoliciesApi.md#updatereputationpolicy) | **PUT** /v1/reputation-policies/{policy_id} | Update a reputation policy


# **createReputationPolicy**
> createReputationPolicy()

Create a reputation policy

Create a new reputation policy with custom rules and thresholds.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();

try {
    api_instance.createReputationPolicy();
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->createReputationPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createReputationPolicyFromPreset**
> createReputationPolicyFromPreset()

Create a reputation policy from preset

Create a reputation policy from a predefined preset template.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();

try {
    api_instance.createReputationPolicyFromPreset();
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->createReputationPolicyFromPreset: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReputationPolicy**
> deleteReputationPolicy(policyId)

Delete a reputation policy

Soft-delete a reputation policy.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();
final policyId = policyId_example; // String | 

try {
    api_instance.deleteReputationPolicy(policyId);
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->deleteReputationPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReputationPolicy**
> getReputationPolicy(policyId)

Get a reputation policy

Retrieve a single reputation policy by ID.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();
final policyId = policyId_example; // String | 

try {
    api_instance.getReputationPolicy(policyId);
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->getReputationPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReputationPolicyStatus**
> getReputationPolicyStatus(policyId)

Get reputation policy status

Evaluate a policy and return per-domain status results.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();
final policyId = policyId_example; // String | 

try {
    api_instance.getReputationPolicyStatus(policyId);
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->getReputationPolicyStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listReputationPolicies**
> listReputationPolicies()

List reputation policies

List all reputation policies for the account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();

try {
    api_instance.listReputationPolicies();
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->listReputationPolicies: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testReputationPolicy**
> testReputationPolicy(policyId)

Test a reputation policy

Dry-run evaluation of a reputation policy without applying actions.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();
final policyId = policyId_example; // String | 

try {
    api_instance.testReputationPolicy(policyId);
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->testReputationPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReputationPolicy**
> updateReputationPolicy(policyId)

Update a reputation policy

Update an existing reputation policy.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReputationPoliciesApi();
final policyId = policyId_example; // String | 

try {
    api_instance.updateReputationPolicy(policyId);
} catch (e) {
    print('Exception when calling ReputationPoliciesApi->updateReputationPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

