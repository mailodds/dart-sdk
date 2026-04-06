//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class StorefrontDomainsApi {
  StorefrontDomainsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a custom storefront domain
  ///
  /// Register a custom domain (e.g., shop.merchant.com) for a storefront store. If a Cloudflare DNS provider is connected, NS records are auto-configured.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateStorefrontDomainRequest] createStorefrontDomainRequest (required):
  Future<Response> createStorefrontDomainWithHttpInfo(CreateStorefrontDomainRequest createStorefrontDomainRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/storefront-domains';

    // ignore: prefer_final_locals
    Object? postBody = createStorefrontDomainRequest;

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

  /// Add a custom storefront domain
  ///
  /// Register a custom domain (e.g., shop.merchant.com) for a storefront store. If a Cloudflare DNS provider is connected, NS records are auto-configured.
  ///
  /// Parameters:
  ///
  /// * [CreateStorefrontDomainRequest] createStorefrontDomainRequest (required):
  Future<void> createStorefrontDomain(CreateStorefrontDomainRequest createStorefrontDomainRequest,) async {
    final response = await createStorefrontDomainWithHttpInfo(createStorefrontDomainRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a storefront domain
  ///
  /// Remove a custom storefront domain. Cleans up DNS records (if auto-configured), TLS certificates, and edge node config.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> deleteStorefrontDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/storefront-domains/{domain_id}'
      .replaceAll('{domain_id}', domainId);

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

  /// Delete a storefront domain
  ///
  /// Remove a custom storefront domain. Cleans up DNS records (if auto-configured), TLS certificates, and edge node config.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> deleteStorefrontDomain(String domainId,) async {
    final response = await deleteStorefrontDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get storefront domain details
  ///
  /// Get a custom domain with status, NS record instructions, and certificate info.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> getStorefrontDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/storefront-domains/{domain_id}'
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

  /// Get storefront domain details
  ///
  /// Get a custom domain with status, NS record instructions, and certificate info.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> getStorefrontDomain(String domainId,) async {
    final response = await getStorefrontDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List storefront domains
  ///
  /// List all custom storefront domains for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listStorefrontDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/storefront-domains';

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

  /// List storefront domains
  ///
  /// List all custom storefront domains for the account.
  Future<void> listStorefrontDomains() async {
    final response = await listStorefrontDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Verify storefront domain DNS
  ///
  /// Trigger manual DNS verification for a custom domain. Rate limited to 5 per hour per domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> verifyStorefrontDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/storefront-domains/{domain_id}/verify'
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

  /// Verify storefront domain DNS
  ///
  /// Trigger manual DNS verification for a custom domain. Rate limited to 5 per hour per domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> verifyStorefrontDomain(String domainId,) async {
    final response = await verifyStorefrontDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
