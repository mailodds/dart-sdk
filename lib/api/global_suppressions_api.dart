//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class GlobalSuppressionsApi {
  GlobalSuppressionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add global suppression override
  ///
  /// Add an override to allow sending to a globally suppressed email address.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> addGlobalSuppressionOverrideWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/global-suppressions/overrides';

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

  /// Add global suppression override
  ///
  /// Add an override to allow sending to a globally suppressed email address.
  Future<void> addGlobalSuppressionOverride() async {
    final response = await addGlobalSuppressionOverrideWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Check global suppression
  ///
  /// Check if an email address is globally suppressed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> checkGlobalSuppressionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/global-suppressions/check';

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

  /// Check global suppression
  ///
  /// Check if an email address is globally suppressed.
  Future<void> checkGlobalSuppression() async {
    final response = await checkGlobalSuppressionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove global suppression override
  ///
  /// Remove an override for a globally suppressed email address.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> removeGlobalSuppressionOverrideWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/global-suppressions/overrides';

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

  /// Remove global suppression override
  ///
  /// Remove an override for a globally suppressed email address.
  Future<void> removeGlobalSuppressionOverride() async {
    final response = await removeGlobalSuppressionOverrideWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
