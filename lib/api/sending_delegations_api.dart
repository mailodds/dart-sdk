//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class SendingDelegationsApi {
  SendingDelegationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a sending delegation
  ///
  /// Create a sending delegation granting another account permission to send from this domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> createDelegationWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/delegations'
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

  /// Create a sending delegation
  ///
  /// Create a sending delegation granting another account permission to send from this domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> createDelegation(String domainId,) async {
    final response = await createDelegationWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List sending delegations
  ///
  /// List all sending delegations for a domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> listDelegationsWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/delegations'
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

  /// List sending delegations
  ///
  /// List all sending delegations for a domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> listDelegations(String domainId,) async {
    final response = await listDelegationsWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke a sending delegation
  ///
  /// Revoke a sending delegation, removing the delegate account permission to send.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] delegationId (required):
  Future<Response> revokeDelegationWithHttpInfo(String domainId, String delegationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/delegations/{delegation_id}'
      .replaceAll('{domain_id}', domainId)
      .replaceAll('{delegation_id}', delegationId);

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

  /// Revoke a sending delegation
  ///
  /// Revoke a sending delegation, removing the delegate account permission to send.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] delegationId (required):
  Future<void> revokeDelegation(String domainId, String delegationId,) async {
    final response = await revokeDelegationWithHttpInfo(domainId, delegationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
