//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class OutOfOfficeApi {
  OutOfOfficeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Batch check OOO status
  ///
  /// Check OOO status for up to 1000 email addresses at once. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BatchCheckOooRequest] batchCheckOooRequest (required):
  Future<Response> batchCheckOooWithHttpInfo(BatchCheckOooRequest batchCheckOooRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/out-of-office/batch-check';

    // ignore: prefer_final_locals
    Object? postBody = batchCheckOooRequest;

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

  /// Batch check OOO status
  ///
  /// Check OOO status for up to 1000 email addresses at once. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [BatchCheckOooRequest] batchCheckOooRequest (required):
  Future<BatchCheckOoo200Response?> batchCheckOoo(BatchCheckOooRequest batchCheckOooRequest,) async {
    final response = await batchCheckOooWithHttpInfo(batchCheckOooRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchCheckOoo200Response',) as BatchCheckOoo200Response;
    
    }
    return null;
  }

  /// Delete OOO contact
  ///
  /// Clear out-of-office status for an email address. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> deleteOooContactWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/out-of-office/{email}'
      .replaceAll('{email}', email);

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

  /// Delete OOO contact
  ///
  /// Clear out-of-office status for an email address. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<DeleteOooContact200Response?> deleteOooContact(String email,) async {
    final response = await deleteOooContactWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteOooContact200Response',) as DeleteOooContact200Response;
    
    }
    return null;
  }

  /// Get OOO status for email
  ///
  /// Check if a specific email address is currently out-of-office. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> getOooStatusWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/out-of-office/{email}/status'
      .replaceAll('{email}', email);

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

  /// Get OOO status for email
  ///
  /// Check if a specific email address is currently out-of-office. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<GetOooStatus200Response?> getOooStatus(String email,) async {
    final response = await getOooStatusWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetOooStatus200Response',) as GetOooStatus200Response;
    
    }
    return null;
  }

  /// List out-of-office contacts
  ///
  /// List contacts detected as out-of-office. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] activeOnly:
  ///   Only return currently active OOO contacts
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> listOooContactsWithHttpInfo({ bool? activeOnly, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/out-of-office';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'active_only', activeOnly));
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

  /// List out-of-office contacts
  ///
  /// List contacts detected as out-of-office. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [bool] activeOnly:
  ///   Only return currently active OOO contacts
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ListOooContacts200Response?> listOooContacts({ bool? activeOnly, int? page, int? perPage, }) async {
    final response = await listOooContactsWithHttpInfo( activeOnly: activeOnly, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOooContacts200Response',) as ListOooContacts200Response;
    
    }
    return null;
  }

  /// Update OOO contact
  ///
  /// Manually set or clear out-of-office status for an email. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///
  /// * [UpdateOooContactRequest] updateOooContactRequest (required):
  Future<Response> updateOooContactWithHttpInfo(String email, UpdateOooContactRequest updateOooContactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/out-of-office/{email}'
      .replaceAll('{email}', email);

    // ignore: prefer_final_locals
    Object? postBody = updateOooContactRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update OOO contact
  ///
  /// Manually set or clear out-of-office status for an email. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///
  /// * [UpdateOooContactRequest] updateOooContactRequest (required):
  Future<Object?> updateOooContact(String email, UpdateOooContactRequest updateOooContactRequest,) async {
    final response = await updateOooContactWithHttpInfo(email, updateOooContactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
