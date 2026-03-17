# mailodds.api.BounceAnalysisApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBounceAnalysis**](BounceAnalysisApi.md#createbounceanalysis) | **POST** /v1/bounce-analyses | Analyze bounce logs
[**crossReferenceBounces**](BounceAnalysisApi.md#crossreferencebounces) | **GET** /v1/bounce-analyses/{analysis_id}/cross-reference | Cross-reference bounces with validation logs
[**deleteBounceAnalysis**](BounceAnalysisApi.md#deletebounceanalysis) | **DELETE** /v1/bounce-analyses/{analysis_id} | Delete bounce analysis
[**getBounceAnalysis**](BounceAnalysisApi.md#getbounceanalysis) | **GET** /v1/bounce-analyses/{analysis_id} | Get bounce analysis
[**getBounceRecords**](BounceAnalysisApi.md#getbouncerecords) | **GET** /v1/bounce-analyses/{analysis_id}/records | Get bounce records


# **createBounceAnalysis**
> BounceAnalysisResponse createBounceAnalysis(createBounceAnalysisRequest)

Analyze bounce logs

Submit bounce log data for analysis. Identifies patterns, categorizes bounce types, and provides remediation recommendations.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BounceAnalysisApi();
final createBounceAnalysisRequest = CreateBounceAnalysisRequest(); // CreateBounceAnalysisRequest | 

try {
    final result = api_instance.createBounceAnalysis(createBounceAnalysisRequest);
    print(result);
} catch (e) {
    print('Exception when calling BounceAnalysisApi->createBounceAnalysis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBounceAnalysisRequest** | [**CreateBounceAnalysisRequest**](CreateBounceAnalysisRequest.md)|  | 

### Return type

[**BounceAnalysisResponse**](BounceAnalysisResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **crossReferenceBounces**
> CrossReferenceBounces200Response crossReferenceBounces(analysisId)

Cross-reference bounces with validation logs

Match bounced emails against your validation history to identify emails that were validated as deliverable but later bounced.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BounceAnalysisApi();
final analysisId = analysisId_example; // String | Bounce analysis UUID

try {
    final result = api_instance.crossReferenceBounces(analysisId);
    print(result);
} catch (e) {
    print('Exception when calling BounceAnalysisApi->crossReferenceBounces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysisId** | **String**| Bounce analysis UUID | 

### Return type

[**CrossReferenceBounces200Response**](CrossReferenceBounces200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBounceAnalysis**
> DeletePolicyRule200Response deleteBounceAnalysis(analysisId)

Delete bounce analysis

Delete a bounce analysis and all associated records.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BounceAnalysisApi();
final analysisId = analysisId_example; // String | Bounce analysis ID

try {
    final result = api_instance.deleteBounceAnalysis(analysisId);
    print(result);
} catch (e) {
    print('Exception when calling BounceAnalysisApi->deleteBounceAnalysis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysisId** | **String**| Bounce analysis ID | 

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceAnalysis**
> BounceAnalysisResponse getBounceAnalysis(analysisId)

Get bounce analysis

Get the results of a bounce analysis including category breakdown, top offenders, and recommendations.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BounceAnalysisApi();
final analysisId = analysisId_example; // String | Bounce analysis UUID

try {
    final result = api_instance.getBounceAnalysis(analysisId);
    print(result);
} catch (e) {
    print('Exception when calling BounceAnalysisApi->getBounceAnalysis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysisId** | **String**| Bounce analysis UUID | 

### Return type

[**BounceAnalysisResponse**](BounceAnalysisResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBounceRecords**
> GetBounceRecords200Response getBounceRecords(analysisId, page, perPage, type)

Get bounce records

Get individual bounce records from an analysis with pagination.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BounceAnalysisApi();
final analysisId = analysisId_example; // String | Bounce analysis UUID
final page = 56; // int | Page number
final perPage = 56; // int | Items per page
final type = type_example; // String | Filter by bounce type

try {
    final result = api_instance.getBounceRecords(analysisId, page, perPage, type);
    print(result);
} catch (e) {
    print('Exception when calling BounceAnalysisApi->getBounceRecords: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analysisId** | **String**| Bounce analysis UUID | 
 **page** | **int**| Page number | [optional] [default to 1]
 **perPage** | **int**| Items per page | [optional] [default to 50]
 **type** | **String**| Filter by bounce type | [optional] 

### Return type

[**GetBounceRecords200Response**](GetBounceRecords200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

