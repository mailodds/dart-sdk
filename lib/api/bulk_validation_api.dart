//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BulkValidationApi {
  BulkValidationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel a job
  ///
  /// Cancel a pending or processing job. Partial results are preserved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<Response> cancelJobWithHttpInfo(String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/{job_id}/cancel'
      .replaceAll('{job_id}', jobId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel a job
  ///
  /// Cancel a pending or processing job. Partial results are preserved.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<JobResponse?> cancelJob(String jobId,) async {
    final response = await cancelJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobResponse',) as JobResponse;
    
    }
    return null;
  }

  /// Create bulk validation job (JSON)
  ///
  /// Create a new bulk validation job by submitting a JSON array of emails.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateJobRequest] createJobRequest (required):
  Future<Response> createJobWithHttpInfo(CreateJobRequest createJobRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs';

    // ignore: prefer_final_locals
    Object? postBody = createJobRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create bulk validation job (JSON)
  ///
  /// Create a new bulk validation job by submitting a JSON array of emails.
  ///
  /// Parameters:
  ///
  /// * [CreateJobRequest] createJobRequest (required):
  Future<JobResponse?> createJob(CreateJobRequest createJobRequest,) async {
    final response = await createJobWithHttpInfo(createJobRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobResponse',) as JobResponse;
    
    }
    return null;
  }

  /// Create job from S3 upload
  ///
  /// Create a validation job from a file previously uploaded to S3.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateJobFromS3Request] createJobFromS3Request (required):
  Future<Response> createJobFromS3WithHttpInfo(CreateJobFromS3Request createJobFromS3Request,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/upload/s3';

    // ignore: prefer_final_locals
    Object? postBody = createJobFromS3Request;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create job from S3 upload
  ///
  /// Create a validation job from a file previously uploaded to S3.
  ///
  /// Parameters:
  ///
  /// * [CreateJobFromS3Request] createJobFromS3Request (required):
  Future<JobResponse?> createJobFromS3(CreateJobFromS3Request createJobFromS3Request,) async {
    final response = await createJobFromS3WithHttpInfo(createJobFromS3Request,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobResponse',) as JobResponse;
    
    }
    return null;
  }

  /// Create bulk validation job (file upload)
  ///
  /// Create a new bulk validation job by uploading a CSV, Excel, or TXT file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   CSV, Excel (.xlsx, .xls), ODS, or TXT file
  ///
  /// * [bool] dedup:
  ///   Remove duplicate emails
  ///
  /// * [String] metadata:
  ///   JSON metadata for the job
  Future<Response> createJobUploadWithHttpInfo(MultipartFile file, { bool? dedup, String? metadata, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/upload';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    // ignore: unnecessary_null_comparison
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (dedup != null) {
      hasFields = true;
      mp.fields[r'dedup'] = parameterToString(dedup);
    }
    if (metadata != null) {
      hasFields = true;
      mp.fields[r'metadata'] = parameterToString(metadata);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create bulk validation job (file upload)
  ///
  /// Create a new bulk validation job by uploading a CSV, Excel, or TXT file.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   CSV, Excel (.xlsx, .xls), ODS, or TXT file
  ///
  /// * [bool] dedup:
  ///   Remove duplicate emails
  ///
  /// * [String] metadata:
  ///   JSON metadata for the job
  Future<JobResponse?> createJobUpload(MultipartFile file, { bool? dedup, String? metadata, }) async {
    final response = await createJobUploadWithHttpInfo(file,  dedup: dedup, metadata: metadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobResponse',) as JobResponse;
    
    }
    return null;
  }

  /// Delete a job
  ///
  /// Permanently delete a completed or cancelled job and its results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<Response> deleteJobWithHttpInfo(String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/{job_id}'
      .replaceAll('{job_id}', jobId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a job
  ///
  /// Permanently delete a completed or cancelled job and its results.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<DeleteJob200Response?> deleteJob(String jobId,) async {
    final response = await deleteJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteJob200Response',) as DeleteJob200Response;
    
    }
    return null;
  }

  /// Get job status
  ///
  /// Get the status and details of a specific validation job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<Response> getJobWithHttpInfo(String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/{job_id}'
      .replaceAll('{job_id}', jobId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get job status
  ///
  /// Get the status and details of a specific validation job.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<JobResponse?> getJob(String jobId,) async {
    final response = await getJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobResponse',) as JobResponse;
    
    }
    return null;
  }

  /// Get job results
  ///
  /// Download validation results in JSON, CSV, or NDJSON format.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///
  /// * [String] format:
  ///
  /// * [String] filter:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> getJobResultsWithHttpInfo(String jobId, { String? format, String? filter, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/{job_id}/results'
      .replaceAll('{job_id}', jobId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (format != null) {
      queryParams.addAll(_queryParams('', 'format', format));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get job results
  ///
  /// Download validation results in JSON, CSV, or NDJSON format.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  ///
  /// * [String] format:
  ///
  /// * [String] filter:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ResultsResponse?> getJobResults(String jobId, { String? format, String? filter, int? page, int? perPage, }) async {
    final response = await getJobResultsWithHttpInfo(jobId,  format: format, filter: filter, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultsResponse',) as ResultsResponse;
    
    }
    return null;
  }

  /// Get S3 presigned upload URL
  ///
  /// Get a presigned URL for uploading large files (>10MB) directly to S3.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetPresignedUploadRequest] getPresignedUploadRequest (required):
  Future<Response> getPresignedUploadWithHttpInfo(GetPresignedUploadRequest getPresignedUploadRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs/upload/presigned';

    // ignore: prefer_final_locals
    Object? postBody = getPresignedUploadRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get S3 presigned upload URL
  ///
  /// Get a presigned URL for uploading large files (>10MB) directly to S3.
  ///
  /// Parameters:
  ///
  /// * [GetPresignedUploadRequest] getPresignedUploadRequest (required):
  Future<PresignedUploadResponse?> getPresignedUpload(GetPresignedUploadRequest getPresignedUploadRequest,) async {
    final response = await getPresignedUploadWithHttpInfo(getPresignedUploadRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PresignedUploadResponse',) as PresignedUploadResponse;
    
    }
    return null;
  }

  /// List validation jobs
  ///
  /// List all validation jobs for the authenticated account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] status:
  Future<Response> listJobsWithHttpInfo({ int? page, int? perPage, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/jobs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List validation jobs
  ///
  /// List all validation jobs for the authenticated account.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] status:
  Future<JobListResponse?> listJobs({ int? page, int? perPage, String? status, }) async {
    final response = await listJobsWithHttpInfo( page: page, perPage: perPage, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobListResponse',) as JobListResponse;
    
    }
    return null;
  }
}
