//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class DKIMManagementApi {
  DKIMManagementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get DKIM DNS record
  ///
  /// Retrieve the current DKIM DNS record and selector for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> getDkimDnsRecordWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/dkim/dns-record'
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

  /// Get DKIM DNS record
  ///
  /// Retrieve the current DKIM DNS record and selector for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> getDkimDnsRecord(String domainId,) async {
    final response = await getDkimDnsRecordWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Rotate DKIM keys
  ///
  /// Generate a new DKIM key pair and rotate the selector for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> rotateDkimWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/dkim/rotate'
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

  /// Rotate DKIM keys
  ///
  /// Generate a new DKIM key pair and rotate the selector for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> rotateDkim(String domainId,) async {
    final response = await rotateDkimWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
