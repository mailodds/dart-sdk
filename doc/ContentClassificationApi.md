# mailodds.api.ContentClassificationApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classifyContent**](ContentClassificationApi.md#classifycontent) | **POST** /v1/content-check | Classify email content


# **classifyContent**
> ClassifyContent200Response classifyContent(classifyContentRequest)

Classify email content

Run LLM-powered content analysis on email content. Detects spam signals, compliance issues, and content quality. Provide either subject+html_body or raw content text.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContentClassificationApi();
final classifyContentRequest = ClassifyContentRequest(); // ClassifyContentRequest | 

try {
    final result = api_instance.classifyContent(classifyContentRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContentClassificationApi->classifyContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classifyContentRequest** | [**ClassifyContentRequest**](ClassifyContentRequest.md)|  | 

### Return type

[**ClassifyContent200Response**](ClassifyContent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

