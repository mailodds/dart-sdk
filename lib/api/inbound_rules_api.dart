//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class InboundRulesApi {
  InboundRulesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbound rule
  ///
  /// Create an inbound routing rule for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> createInboundRuleWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/inbound-rules'
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

  /// Create an inbound rule
  ///
  /// Create an inbound routing rule for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> createInboundRule(String domainId,) async {
    final response = await createInboundRuleWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an inbound rule
  ///
  /// Delete an inbound routing rule.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] ruleId (required):
  Future<Response> deleteInboundRuleWithHttpInfo(String domainId, String ruleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/inbound-rules/{rule_id}'
      .replaceAll('{domain_id}', domainId)
      .replaceAll('{rule_id}', ruleId);

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

  /// Delete an inbound rule
  ///
  /// Delete an inbound routing rule.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] ruleId (required):
  Future<void> deleteInboundRule(String domainId, String ruleId,) async {
    final response = await deleteInboundRuleWithHttpInfo(domainId, ruleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dry-run inbound rules
  ///
  /// Evaluate inbound rules against a test message without side effects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> dryRunInboundRulesWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/inbound-rules/dry-run'
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

  /// Dry-run inbound rules
  ///
  /// Evaluate inbound rules against a test message without side effects.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> dryRunInboundRules(String domainId,) async {
    final response = await dryRunInboundRulesWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an inbound rule
  ///
  /// Retrieve a specific inbound routing rule by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] ruleId (required):
  Future<Response> getInboundRuleWithHttpInfo(String domainId, String ruleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/inbound-rules/{rule_id}'
      .replaceAll('{domain_id}', domainId)
      .replaceAll('{rule_id}', ruleId);

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

  /// Get an inbound rule
  ///
  /// Retrieve a specific inbound routing rule by ID.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] ruleId (required):
  Future<void> getInboundRule(String domainId, String ruleId,) async {
    final response = await getInboundRuleWithHttpInfo(domainId, ruleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List inbound rules
  ///
  /// List all inbound routing rules for a sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<Response> listInboundRulesWithHttpInfo(String domainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/inbound-rules'
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

  /// List inbound rules
  ///
  /// List all inbound routing rules for a sending domain.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  Future<void> listInboundRules(String domainId,) async {
    final response = await listInboundRulesWithHttpInfo(domainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update an inbound rule
  ///
  /// Update an existing inbound routing rule.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] ruleId (required):
  Future<Response> updateInboundRuleWithHttpInfo(String domainId, String ruleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sending-domains/{domain_id}/inbound-rules/{rule_id}'
      .replaceAll('{domain_id}', domainId)
      .replaceAll('{rule_id}', ruleId);

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

  /// Update an inbound rule
  ///
  /// Update an existing inbound routing rule.
  ///
  /// Parameters:
  ///
  /// * [String] domainId (required):
  ///
  /// * [String] ruleId (required):
  Future<void> updateInboundRule(String domainId, String ruleId,) async {
    final response = await updateInboundRuleWithHttpInfo(domainId, ruleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
