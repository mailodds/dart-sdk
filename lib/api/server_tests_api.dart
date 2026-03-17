//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ServerTestsApi {
  ServerTestsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get server test
  ///
  /// Get the detailed results of a specific server test.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///   Server test UUID
  Future<Response> getServerTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/server-tests/{test_id}'
      .replaceAll('{test_id}', testId);

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

  /// Get server test
  ///
  /// Get the detailed results of a specific server test.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///   Server test UUID
  Future<RunServerTest201Response?> getServerTest(String testId,) async {
    final response = await getServerTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunServerTest201Response',) as RunServerTest201Response;
    
    }
    return null;
  }

  /// List server tests
  ///
  /// List past server test results with pagination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> listServerTestsWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/server-tests';

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

  /// List server tests
  ///
  /// List past server test results with pagination.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ListServerTests200Response?> listServerTests({ int? page, int? perPage, }) async {
    final response = await listServerTestsWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListServerTests200Response',) as ListServerTests200Response;
    
    }
    return null;
  }

  /// Run server test
  ///
  /// Run an SMTP handshake test and MX configuration audit for a domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RunServerTestRequest] runServerTestRequest (required):
  Future<Response> runServerTestWithHttpInfo(RunServerTestRequest runServerTestRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/server-tests';

    // ignore: prefer_final_locals
    Object? postBody = runServerTestRequest;

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

  /// Run server test
  ///
  /// Run an SMTP handshake test and MX configuration audit for a domain.
  ///
  /// Parameters:
  ///
  /// * [RunServerTestRequest] runServerTestRequest (required):
  Future<RunServerTest201Response?> runServerTest(RunServerTestRequest runServerTestRequest,) async {
    final response = await runServerTestWithHttpInfo(runServerTestRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunServerTest201Response',) as RunServerTest201Response;
    
    }
    return null;
  }
}
