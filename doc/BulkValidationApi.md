# mailodds.api.BulkValidationApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelJob**](BulkValidationApi.md#canceljob) | **POST** /v1/jobs/{job_id}/cancel | Cancel a job
[**createJob**](BulkValidationApi.md#createjob) | **POST** /v1/jobs | Create bulk validation job (JSON)
[**createJobFromS3**](BulkValidationApi.md#createjobfroms3) | **POST** /v1/jobs/upload/s3 | Create job from S3 upload
[**createJobUpload**](BulkValidationApi.md#createjobupload) | **POST** /v1/jobs/upload | Create bulk validation job (file upload)
[**deleteJob**](BulkValidationApi.md#deletejob) | **DELETE** /v1/jobs/{job_id} | Delete a job
[**getJob**](BulkValidationApi.md#getjob) | **GET** /v1/jobs/{job_id} | Get job status
[**getJobResults**](BulkValidationApi.md#getjobresults) | **GET** /v1/jobs/{job_id}/results | Get job results
[**getPresignedUpload**](BulkValidationApi.md#getpresignedupload) | **POST** /v1/jobs/upload/presigned | Get S3 presigned upload URL
[**listJobs**](BulkValidationApi.md#listjobs) | **GET** /v1/jobs | List validation jobs


# **cancelJob**
> JobResponse cancelJob(jobId)

Cancel a job

Cancel a pending or processing job. Partial results are preserved.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final jobId = jobId_example; // String | 

try {
    final result = api_instance.cancelJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->cancelJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJob**
> JobResponse createJob(createJobRequest)

Create bulk validation job (JSON)

Create a new bulk validation job by submitting a JSON array of emails.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final createJobRequest = CreateJobRequest(); // CreateJobRequest | 

try {
    final result = api_instance.createJob(createJobRequest);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->createJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createJobRequest** | [**CreateJobRequest**](CreateJobRequest.md)|  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJobFromS3**
> JobResponse createJobFromS3(createJobFromS3Request)

Create job from S3 upload

Create a validation job from a file previously uploaded to S3.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final createJobFromS3Request = CreateJobFromS3Request(); // CreateJobFromS3Request | 

try {
    final result = api_instance.createJobFromS3(createJobFromS3Request);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->createJobFromS3: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createJobFromS3Request** | [**CreateJobFromS3Request**](CreateJobFromS3Request.md)|  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJobUpload**
> JobResponse createJobUpload(file, dedup, metadata)

Create bulk validation job (file upload)

Create a new bulk validation job by uploading a CSV, Excel, or TXT file.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final file = BINARY_DATA_HERE; // MultipartFile | CSV, Excel (.xlsx, .xls), ODS, or TXT file
final dedup = true; // bool | Remove duplicate emails
final metadata = metadata_example; // String | JSON metadata for the job

try {
    final result = api_instance.createJobUpload(file, dedup, metadata);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->createJobUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| CSV, Excel (.xlsx, .xls), ODS, or TXT file | 
 **dedup** | **bool**| Remove duplicate emails | [optional] [default to false]
 **metadata** | **String**| JSON metadata for the job | [optional] 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJob**
> DeleteJob200Response deleteJob(jobId)

Delete a job

Permanently delete a completed or cancelled job and its results.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final jobId = jobId_example; // String | 

try {
    final result = api_instance.deleteJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->deleteJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 

### Return type

[**DeleteJob200Response**](DeleteJob200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> JobResponse getJob(jobId)

Get job status

Get the status and details of a specific validation job.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final jobId = jobId_example; // String | 

try {
    final result = api_instance.getJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->getJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobResults**
> ResultsResponse getJobResults(jobId, format, filter, page, perPage)

Get job results

Download validation results in JSON, CSV, or NDJSON format.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final jobId = jobId_example; // String | 
final format = format_example; // String | 
final filter = filter_example; // String | 
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.getJobResults(jobId, format, filter, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->getJobResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 
 **format** | **String**|  | [optional] [default to 'json']
 **filter** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 1000]

### Return type

[**ResultsResponse**](ResultsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/x-ndjson

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPresignedUpload**
> PresignedUploadResponse getPresignedUpload(getPresignedUploadRequest)

Get S3 presigned upload URL

Get a presigned URL for uploading large files (>10MB) directly to S3.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final getPresignedUploadRequest = GetPresignedUploadRequest(); // GetPresignedUploadRequest | 

try {
    final result = api_instance.getPresignedUpload(getPresignedUploadRequest);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->getPresignedUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getPresignedUploadRequest** | [**GetPresignedUploadRequest**](GetPresignedUploadRequest.md)|  | 

### Return type

[**PresignedUploadResponse**](PresignedUploadResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJobs**
> JobListResponse listJobs(cursor, limit, status)

List validation jobs

List all validation jobs for the authenticated account.

### Example
```dart
import 'package:mailodds/api.dart';
// TODO Configure HTTP Bearer authorization: BearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('BearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BulkValidationApi();
final cursor = cursor_example; // String | Pagination cursor (ISO timestamp from previous response)
final limit = 56; // int | Results per page
final status = status_example; // String | 

try {
    final result = api_instance.listJobs(cursor, limit, status);
    print(result);
} catch (e) {
    print('Exception when calling BulkValidationApi->listJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**| Pagination cursor (ISO timestamp from previous response) | [optional] 
 **limit** | **int**| Results per page | [optional] [default to 50]
 **status** | **String**|  | [optional] 

### Return type

[**JobListResponse**](JobListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

