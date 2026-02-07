//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailodds/api.dart';
import 'package:test/test.dart';


/// tests for BulkValidationApi
void main() {
  // final instance = BulkValidationApi();

  group('tests for BulkValidationApi', () {
    // Cancel a job
    //
    // Cancel a pending or processing job. Partial results are preserved.
    //
    //Future<JobResponse> cancelJob(String jobId) async
    test('test cancelJob', () async {
      // TODO
    });

    // Create bulk validation job (JSON)
    //
    // Create a new bulk validation job by submitting a JSON array of emails.
    //
    //Future<JobResponse> createJob(CreateJobRequest createJobRequest) async
    test('test createJob', () async {
      // TODO
    });

    // Create job from S3 upload
    //
    // Create a validation job from a file previously uploaded to S3.
    //
    //Future<JobResponse> createJobFromS3(CreateJobFromS3Request createJobFromS3Request) async
    test('test createJobFromS3', () async {
      // TODO
    });

    // Create bulk validation job (file upload)
    //
    // Create a new bulk validation job by uploading a CSV, Excel, or TXT file.
    //
    //Future<JobResponse> createJobUpload(MultipartFile file, { bool dedup, String metadata }) async
    test('test createJobUpload', () async {
      // TODO
    });

    // Delete a job
    //
    // Permanently delete a completed or cancelled job and its results.
    //
    //Future<DeleteJob200Response> deleteJob(String jobId) async
    test('test deleteJob', () async {
      // TODO
    });

    // Get job status
    //
    // Get the status and details of a specific validation job.
    //
    //Future<JobResponse> getJob(String jobId) async
    test('test getJob', () async {
      // TODO
    });

    // Get job results
    //
    // Download validation results in JSON, CSV, or NDJSON format.
    //
    //Future<ResultsResponse> getJobResults(String jobId, { String format, String filter, int page, int perPage }) async
    test('test getJobResults', () async {
      // TODO
    });

    // Get S3 presigned upload URL
    //
    // Get a presigned URL for uploading large files (>10MB) directly to S3.
    //
    //Future<PresignedUploadResponse> getPresignedUpload(GetPresignedUploadRequest getPresignedUploadRequest) async
    test('test getPresignedUpload', () async {
      // TODO
    });

    // List validation jobs
    //
    // List all validation jobs for the authenticated account.
    //
    //Future<JobListResponse> listJobs({ int page, int perPage, String status }) async
    test('test listJobs', () async {
      // TODO
    });

  });
}
