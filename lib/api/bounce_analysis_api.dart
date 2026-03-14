//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BounceAnalysisApi {
  BounceAnalysisApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Analyze bounce logs
  ///
  /// Submit bounce log data for analysis. Identifies patterns, categorizes bounce types, and provides remediation recommendations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateBounceAnalysisRequest] createBounceAnalysisRequest (required):
  Future<Response> createBounceAnalysisWithHttpInfo(CreateBounceAnalysisRequest createBounceAnalysisRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bounce-analyses';

    // ignore: prefer_final_locals
    Object? postBody = createBounceAnalysisRequest;

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

  /// Analyze bounce logs
  ///
  /// Submit bounce log data for analysis. Identifies patterns, categorizes bounce types, and provides remediation recommendations.
  ///
  /// Parameters:
  ///
  /// * [CreateBounceAnalysisRequest] createBounceAnalysisRequest (required):
  Future<BounceAnalysisResponse?> createBounceAnalysis(CreateBounceAnalysisRequest createBounceAnalysisRequest,) async {
    final response = await createBounceAnalysisWithHttpInfo(createBounceAnalysisRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BounceAnalysisResponse',) as BounceAnalysisResponse;
    
    }
    return null;
  }

  /// Cross-reference bounces with validation logs
  ///
  /// Match bounced emails against your validation history to identify emails that were validated as deliverable but later bounced.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] analysisId (required):
  ///   Bounce analysis UUID
  Future<Response> crossReferenceBouncesWithHttpInfo(String analysisId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bounce-analyses/{analysis_id}/cross-reference'
      .replaceAll('{analysis_id}', analysisId);

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

  /// Cross-reference bounces with validation logs
  ///
  /// Match bounced emails against your validation history to identify emails that were validated as deliverable but later bounced.
  ///
  /// Parameters:
  ///
  /// * [String] analysisId (required):
  ///   Bounce analysis UUID
  Future<CrossReferenceBounces200Response?> crossReferenceBounces(String analysisId,) async {
    final response = await crossReferenceBouncesWithHttpInfo(analysisId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CrossReferenceBounces200Response',) as CrossReferenceBounces200Response;
    
    }
    return null;
  }

  /// Get bounce analysis
  ///
  /// Get the results of a bounce analysis including category breakdown, top offenders, and recommendations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] analysisId (required):
  ///   Bounce analysis UUID
  Future<Response> getBounceAnalysisWithHttpInfo(String analysisId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bounce-analyses/{analysis_id}'
      .replaceAll('{analysis_id}', analysisId);

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

  /// Get bounce analysis
  ///
  /// Get the results of a bounce analysis including category breakdown, top offenders, and recommendations.
  ///
  /// Parameters:
  ///
  /// * [String] analysisId (required):
  ///   Bounce analysis UUID
  Future<BounceAnalysisResponse?> getBounceAnalysis(String analysisId,) async {
    final response = await getBounceAnalysisWithHttpInfo(analysisId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BounceAnalysisResponse',) as BounceAnalysisResponse;
    
    }
    return null;
  }

  /// Get bounce records
  ///
  /// Get individual bounce records from an analysis with pagination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] analysisId (required):
  ///   Bounce analysis UUID
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  ///
  /// * [String] type:
  ///   Filter by bounce type
  Future<Response> getBounceRecordsWithHttpInfo(String analysisId, { int? page, int? perPage, String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/bounce-analyses/{analysis_id}/records'
      .replaceAll('{analysis_id}', analysisId);

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
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Get bounce records
  ///
  /// Get individual bounce records from an analysis with pagination.
  ///
  /// Parameters:
  ///
  /// * [String] analysisId (required):
  ///   Bounce analysis UUID
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  ///
  /// * [String] type:
  ///   Filter by bounce type
  Future<GetBounceRecords200Response?> getBounceRecords(String analysisId, { int? page, int? perPage, String? type, }) async {
    final response = await getBounceRecordsWithHttpInfo(analysisId,  page: page, perPage: perPage, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetBounceRecords200Response',) as GetBounceRecords200Response;
    
    }
    return null;
  }
}
