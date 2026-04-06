//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class DNSProviderApi {
  DNSProviderApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Connect DNS provider
  ///
  /// Store a Cloudflare API token on the account for automated DNS configuration. Token is validated, zones are discovered, and write permission is tested before storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ConnectDnsProviderRequest] connectDnsProviderRequest (required):
  Future<Response> connectDnsProviderWithHttpInfo(ConnectDnsProviderRequest connectDnsProviderRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/dns-provider';

    // ignore: prefer_final_locals
    Object? postBody = connectDnsProviderRequest;

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

  /// Connect DNS provider
  ///
  /// Store a Cloudflare API token on the account for automated DNS configuration. Token is validated, zones are discovered, and write permission is tested before storage.
  ///
  /// Parameters:
  ///
  /// * [ConnectDnsProviderRequest] connectDnsProviderRequest (required):
  Future<void> connectDnsProvider(ConnectDnsProviderRequest connectDnsProviderRequest,) async {
    final response = await connectDnsProviderWithHttpInfo(connectDnsProviderRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disconnect DNS provider
  ///
  /// Remove the stored DNS provider token and clear zone cache.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> disconnectDnsProviderWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/dns-provider';

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

  /// Disconnect DNS provider
  ///
  /// Remove the stored DNS provider token and clear zone cache.
  Future<void> disconnectDnsProvider() async {
    final response = await disconnectDnsProviderWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get DNS provider status
  ///
  /// Get the DNS provider connection status. Token is never exposed in the response.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDnsProviderWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/dns-provider';

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

  /// Get DNS provider status
  ///
  /// Get the DNS provider connection status. Token is never exposed in the response.
  Future<void> getDnsProvider() async {
    final response = await getDnsProviderWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
