//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DMARCMonitoringApi {
  DMARCMonitoringApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add DMARC domain
  ///
  /// Add a domain for DMARC monitoring. A unique reporting address is generated for receiving aggregate DMARC reports.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddDmarcDomainRequest] addDmarcDomainRequest (required):
  Future<Response> addDmarcDomainWithHttpInfo(AddDmarcDomainRequest addDmarcDomainRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains';

    // ignore: prefer_final_locals
    Object? postBody = addDmarcDomainRequest;

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

  /// Add DMARC domain
  ///
  /// Add a domain for DMARC monitoring. A unique reporting address is generated for receiving aggregate DMARC reports.
  ///
  /// Parameters:
  ///
  /// * [AddDmarcDomainRequest] addDmarcDomainRequest (required):
  Future<AddDmarcDomain201Response?> addDmarcDomain(AddDmarcDomainRequest addDmarcDomainRequest,) async {
    final response = await addDmarcDomainWithHttpInfo(addDmarcDomainRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddDmarcDomain201Response',) as AddDmarcDomain201Response;
    
    }
    return null;
  }

  /// Delete a DMARC domain
  ///
  /// Delete a DMARC domain and all its associated reports.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  Future<Response> deleteDmarcDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains/{domain_id}'
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

  /// Delete a DMARC domain
  ///
  /// Delete a DMARC domain and all its associated reports.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  Future<DeletePolicyRule200Response?> deleteDmarcDomain(String domainId,) async {
    final response = await deleteDmarcDomainWithHttpInfo(domainId,);
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

  /// Get DMARC domain
  ///
  /// Get a single DMARC domain with summary statistics including pass/fail rates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  ///
  /// * [int] days:
  ///   Number of days for summary stats
  Future<Response> getDmarcDomainWithHttpInfo(String domainId, { int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains/{domain_id}'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get DMARC domain
  ///
  /// Get a single DMARC domain with summary statistics including pass/fail rates.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  ///
  /// * [int] days:
  ///   Number of days for summary stats
  Future<GetDmarcDomain200Response?> getDmarcDomain(String domainId, { int? days, }) async {
    final response = await getDmarcDomainWithHttpInfo(domainId,  days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDmarcDomain200Response',) as GetDmarcDomain200Response;
    
    }
    return null;
  }

  /// Get DMARC policy recommendation
  ///
  /// Get a recommendation for upgrading the domain's DMARC policy based on alignment data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  Future<Response> getDmarcRecommendationWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains/{domain_id}/recommendation'
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

  /// Get DMARC policy recommendation
  ///
  /// Get a recommendation for upgrading the domain's DMARC policy based on alignment data.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  Future<GetDmarcRecommendation200Response?> getDmarcRecommendation(String domainId,) async {
    final response = await getDmarcRecommendationWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDmarcRecommendation200Response',) as GetDmarcRecommendation200Response;
    
    }
    return null;
  }

  /// Get DMARC sending sources
  ///
  /// Get sending IPs that have sent email for this domain with their DKIM/SPF alignment status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  ///
  /// * [int] days:
  ///   Number of days to look back
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> getDmarcSourcesWithHttpInfo(String domainId, { int? days, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains/{domain_id}/sources'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get DMARC sending sources
  ///
  /// Get sending IPs that have sent email for this domain with their DKIM/SPF alignment status.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  ///
  /// * [int] days:
  ///   Number of days to look back
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<GetDmarcSources200Response?> getDmarcSources(String domainId, { int? days, int? page, int? perPage, }) async {
    final response = await getDmarcSourcesWithHttpInfo(domainId,  days: days, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDmarcSources200Response',) as GetDmarcSources200Response;
    
    }
    return null;
  }

  /// Get DMARC trend
  ///
  /// Get daily pass/fail trend data for DMARC authentication over the specified period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  ///
  /// * [int] days:
  ///   Number of days of trend data
  Future<Response> getDmarcTrendWithHttpInfo(String domainId, { int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains/{domain_id}/trend'
      .replaceAll('{domain_id}', domainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get DMARC trend
  ///
  /// Get daily pass/fail trend data for DMARC authentication over the specified period.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  ///
  /// * [int] days:
  ///   Number of days of trend data
  Future<GetDmarcTrend200Response?> getDmarcTrend(String domainId, { int? days, }) async {
    final response = await getDmarcTrendWithHttpInfo(domainId,  days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDmarcTrend200Response',) as GetDmarcTrend200Response;
    
    }
    return null;
  }

  /// List DMARC domains
  ///
  /// List all domains being monitored for DMARC compliance.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDmarcDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains';

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

  /// List DMARC domains
  ///
  /// List all domains being monitored for DMARC compliance.
  Future<ListDmarcDomains200Response?> listDmarcDomains() async {
    final response = await listDmarcDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListDmarcDomains200Response',) as ListDmarcDomains200Response;
    
    }
    return null;
  }

  /// Verify DMARC DNS records
  ///
  /// Check that the domain has the correct DMARC TXT record pointing to the MailOdds reporting address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  Future<Response> verifyDmarcDomainWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dmarc-domains/{domain_id}/verify'
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

  /// Verify DMARC DNS records
  ///
  /// Check that the domain has the correct DMARC TXT record pointing to the MailOdds reporting address.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///   DMARC domain UUID
  Future<AddDmarcDomain201Response?> verifyDmarcDomain(String domainId,) async {
    final response = await verifyDmarcDomainWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddDmarcDomain201Response',) as AddDmarcDomain201Response;
    
    }
    return null;
  }
}
