//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ManagedSPFApi {
  ManagedSPFApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create managed SPF record
  ///
  /// Create a managed SPF record for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> createManagedSpfWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/managed-spf'
      .replaceAll('{domain_id}', domainId);

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

  /// Create managed SPF record
  ///
  /// Create a managed SPF record for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> createManagedSpf(String domainId,) async {
    final response = await createManagedSpfWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get managed SPF record
  ///
  /// Retrieve the managed SPF record for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> getManagedSpfWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/managed-spf'
      .replaceAll('{domain_id}', domainId);

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

  /// Get managed SPF record
  ///
  /// Retrieve the managed SPF record for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> getManagedSpf(String domainId,) async {
    final response = await getManagedSpfWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Refresh managed SPF record
  ///
  /// Re-resolve DNS and refresh the managed SPF record for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> refreshManagedSpfWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/managed-spf/refresh'
      .replaceAll('{domain_id}', domainId);

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

  /// Refresh managed SPF record
  ///
  /// Re-resolve DNS and refresh the managed SPF record for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> refreshManagedSpf(String domainId,) async {
    final response = await refreshManagedSpfWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update managed SPF settings
  ///
  /// Update managed SPF settings such as enabling or disabling for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> updateManagedSpfWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/managed-spf'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update managed SPF settings
  ///
  /// Update managed SPF settings such as enabling or disabling for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> updateManagedSpf(String domainId,) async {
    final response = await updateManagedSpfWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
