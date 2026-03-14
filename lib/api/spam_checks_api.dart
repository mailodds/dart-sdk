//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SpamChecksApi {
  SpamChecksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get spam check
  ///
  /// Get the detailed result of a specific spam check. Currently available to beta accounts only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] checkId (required):
  ///   Spam check UUID
  Future<Response> getSpamCheckWithHttpInfo(String checkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/spam-checks/{check_id}'
      .replaceAll('{check_id}', checkId);

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

  /// Get spam check
  ///
  /// Get the detailed result of a specific spam check. Currently available to beta accounts only.
  ///
  /// Parameters:
  ///
  /// * [String] checkId (required):
  ///   Spam check UUID
  Future<RunSpamCheck201Response?> getSpamCheck(String checkId,) async {
    final response = await getSpamCheckWithHttpInfo(checkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunSpamCheck201Response',) as RunSpamCheck201Response;
    
    }
    return null;
  }

  /// List spam checks
  ///
  /// List past spam check results with pagination. Currently available to beta accounts only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> listSpamChecksWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/spam-checks';

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

  /// List spam checks
  ///
  /// List past spam check results with pagination. Currently available to beta accounts only.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ListSpamChecks200Response?> listSpamChecks({ int? page, int? perPage, }) async {
    final response = await listSpamChecksWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSpamChecks200Response',) as ListSpamChecks200Response;
    
    }
    return null;
  }

  /// Run spam check
  ///
  /// Run backend spam checks on email sending parameters. Checks domain reputation, link safety, and subject line quality. Currently available to beta accounts only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunSpamCheckRequest] runSpamCheckRequest (required):
  Future<Response> runSpamCheckWithHttpInfo(RunSpamCheckRequest runSpamCheckRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/spam-checks';

    // ignore: prefer_final_locals
    Object? postBody = runSpamCheckRequest;

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

  /// Run spam check
  ///
  /// Run backend spam checks on email sending parameters. Checks domain reputation, link safety, and subject line quality. Currently available to beta accounts only.
  ///
  /// Parameters:
  ///
  /// * [RunSpamCheckRequest] runSpamCheckRequest (required):
  Future<RunSpamCheck201Response?> runSpamCheck(RunSpamCheckRequest runSpamCheckRequest,) async {
    final response = await runSpamCheckWithHttpInfo(runSpamCheckRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunSpamCheck201Response',) as RunSpamCheck201Response;
    
    }
    return null;
  }
}
