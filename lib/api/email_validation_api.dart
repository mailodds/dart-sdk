//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailValidationApi {
  EmailValidationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Validate multiple emails (sync)
  ///
  /// Validate up to 100 email addresses synchronously. For larger lists, use the bulk jobs API.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateBatchRequest] validateBatchRequest (required):
  Future<Response> validateBatchWithHttpInfo(ValidateBatchRequest validateBatchRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validate/batch';

    // ignore: prefer_final_locals
    Object? postBody = validateBatchRequest;

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

  /// Validate multiple emails (sync)
  ///
  /// Validate up to 100 email addresses synchronously. For larger lists, use the bulk jobs API.
  ///
  /// Parameters:
  ///
  /// * [ValidateBatchRequest] validateBatchRequest (required):
  Future<ValidateBatch200Response?> validateBatch(ValidateBatchRequest validateBatchRequest,) async {
    final response = await validateBatchWithHttpInfo(validateBatchRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateBatch200Response',) as ValidateBatch200Response;
    
    }
    return null;
  }

  /// Validate single email
  ///
  /// Validate a single email address. Returns detailed validation results including status, sub-status, and recommended action.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateRequest] validateRequest (required):
  Future<Response> validateEmailWithHttpInfo(ValidateRequest validateRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validate';

    // ignore: prefer_final_locals
    Object? postBody = validateRequest;

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

  /// Validate single email
  ///
  /// Validate a single email address. Returns detailed validation results including status, sub-status, and recommended action.
  ///
  /// Parameters:
  ///
  /// * [ValidateRequest] validateRequest (required):
  Future<ValidationResponse?> validateEmail(ValidateRequest validateRequest,) async {
    final response = await validateEmailWithHttpInfo(validateRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidationResponse',) as ValidationResponse;
    
    }
    return null;
  }
}
