//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SendingDomainsApi {
  SendingDomainsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a sending domain
  ///
  /// Register a new sending domain with NS delegation. After adding, configure DNS records and verify.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateSendingDomainRequest] createSendingDomainRequest (required):
  Future<Response> createSendingDomainWithHttpInfo(CreateSendingDomainRequest createSendingDomainRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains';

    // ignore: prefer_final_locals
    Object? postBody = createSendingDomainRequest;

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

  /// Add a sending domain
  ///
  /// Register a new sending domain with NS delegation. After adding, configure DNS records and verify.
  ///
  /// Parameters:
  ///
  /// * [CreateSendingDomainRequest] createSendingDomainRequest (required):
  Future<CreateSendingDomain201Response?> createSendingDomain(CreateSendingDomainRequest createSendingDomainRequest,) async {
    final response = await createSendingDomainWithHttpInfo(createSendingDomainRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSendingDomain201Response',) as CreateSendingDomain201Response;
    
    }
    return null;
  }

  /// Delete a sending domain
  ///
  /// Permanently remove a sending domain from the account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> deleteSendingDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}'
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

  /// Delete a sending domain
  ///
  /// Permanently remove a sending domain from the account.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<DeletePolicyRule200Response?> deleteSendingDomain(String domainId,) async {
    final response = await deleteSendingDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletePolicyRule200Response',) as DeletePolicyRule200Response;
    
    }
    return null;
  }

  /// Get a sending domain
  ///
  /// Get details of a specific sending domain including DNS verification status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> getSendingDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}'
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

  /// Get a sending domain
  ///
  /// Get details of a specific sending domain including DNS verification status.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<CreateSendingDomain201Response?> getSendingDomain(String domainId,) async {
    final response = await getSendingDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSendingDomain201Response',) as CreateSendingDomain201Response;
    
    }
    return null;
  }

  /// Get domain identity score
  ///
  /// Get a composite DNS health score for the sending domain, checking DKIM, SPF, DMARC, MX, and return path configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> getSendingDomainIdentityScoreWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/identity-score'
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

  /// Get domain identity score
  ///
  /// Get a composite DNS health score for the sending domain, checking DKIM, SPF, DMARC, MX, and return path configuration.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<GetSendingDomainIdentityScore200Response?> getSendingDomainIdentityScore(String domainId,) async {
    final response = await getSendingDomainIdentityScoreWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSendingDomainIdentityScore200Response',) as GetSendingDomainIdentityScore200Response;
    
    }
    return null;
  }

  /// Get sending statistics
  ///
  /// Get aggregate sending statistics across all domains for the account, including delivery rates, open rates, and click rates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Time period
  ///
  /// * [String] domainId:
  ///   Filter by domain
  Future<Response> getSendingStatsWithHttpInfo({ String? period, String? domainId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domain_id', domainId));
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

  /// Get sending statistics
  ///
  /// Get aggregate sending statistics across all domains for the account, including delivery rates, open rates, and click rates.
  ///
  /// Parameters:
  ///
  /// * [String] period:
  ///   Time period
  ///
  /// * [String] domainId:
  ///   Filter by domain
  Future<GetSendingStats200Response?> getSendingStats({ String? period, String? domainId, }) async {
    final response = await getSendingStatsWithHttpInfo( period: period, domainId: domainId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSendingStats200Response',) as GetSendingStats200Response;
    
    }
    return null;
  }

  /// List sending domains
  ///
  /// List all sending domains for the authenticated account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listSendingDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains';

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

  /// List sending domains
  ///
  /// List all sending domains for the authenticated account.
  Future<ListSendingDomains200Response?> listSendingDomains() async {
    final response = await listSendingDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSendingDomains200Response',) as ListSendingDomains200Response;
    
    }
    return null;
  }

  /// Verify domain DNS records
  ///
  /// Check and verify all DNS records (DKIM, SPF, DMARC, MX, return path) for the sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> verifySendingDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/verify'
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

  /// Verify domain DNS records
  ///
  /// Check and verify all DNS records (DKIM, SPF, DMARC, MX, return path) for the sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<CreateSendingDomain201Response?> verifySendingDomain(String domainId,) async {
    final response = await verifySendingDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSendingDomain201Response',) as CreateSendingDomain201Response;
    
    }
    return null;
  }
}
