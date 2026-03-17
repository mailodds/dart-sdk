//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AlertRulesApi {
  AlertRulesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create alert rule
  ///
  /// Create a new metric threshold alert rule. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAlertRuleRequest] createAlertRuleRequest (required):
  Future<Response> createAlertRuleWithHttpInfo(CreateAlertRuleRequest createAlertRuleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alert-rules';

    // ignore: prefer_final_locals
    Object? postBody = createAlertRuleRequest;

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

  /// Create alert rule
  ///
  /// Create a new metric threshold alert rule. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [CreateAlertRuleRequest] createAlertRuleRequest (required):
  Future<CreateAlertRule201Response?> createAlertRule(CreateAlertRuleRequest createAlertRuleRequest,) async {
    final response = await createAlertRuleWithHttpInfo(createAlertRuleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateAlertRule201Response',) as CreateAlertRule201Response;
    
    }
    return null;
  }

  /// Delete alert rule
  ///
  /// Delete an alert rule. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ruleId (required):
  ///   Alert rule ID
  Future<Response> deleteAlertRuleWithHttpInfo(String ruleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alert-rules/{rule_id}'
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

  /// Delete alert rule
  ///
  /// Delete an alert rule. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] ruleId (required):
  ///   Alert rule ID
  Future<DeletePolicyRule200Response?> deleteAlertRule(String ruleId,) async {
    final response = await deleteAlertRuleWithHttpInfo(ruleId,);
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

  /// Get alert rule
  ///
  /// Get a single alert rule by ID. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ruleId (required):
  ///   Alert rule ID
  Future<Response> getAlertRuleWithHttpInfo(String ruleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alert-rules/{rule_id}'
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

  /// Get alert rule
  ///
  /// Get a single alert rule by ID. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] ruleId (required):
  ///   Alert rule ID
  Future<CreateAlertRule201Response?> getAlertRule(String ruleId,) async {
    final response = await getAlertRuleWithHttpInfo(ruleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateAlertRule201Response',) as CreateAlertRule201Response;
    
    }
    return null;
  }

  /// List alert rules
  ///
  /// List all configured alert rules. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAlertRulesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alert-rules';

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

  /// List alert rules
  ///
  /// List all configured alert rules. Requires Growth+ plan.
  Future<ListAlertRules200Response?> listAlertRules() async {
    final response = await listAlertRulesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListAlertRules200Response',) as ListAlertRules200Response;
    
    }
    return null;
  }

  /// Update alert rule
  ///
  /// Update an existing alert rule. Requires Growth+ plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ruleId (required):
  ///   Alert rule ID
  ///
  /// * [UpdateAlertRuleRequest] updateAlertRuleRequest (required):
  Future<Response> updateAlertRuleWithHttpInfo(String ruleId, UpdateAlertRuleRequest updateAlertRuleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/alert-rules/{rule_id}'
      .replaceAll('{rule_id}', ruleId);

    // ignore: prefer_final_locals
    Object? postBody = updateAlertRuleRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update alert rule
  ///
  /// Update an existing alert rule. Requires Growth+ plan.
  ///
  /// Parameters:
  ///
  /// * [String] ruleId (required):
  ///   Alert rule ID
  ///
  /// * [UpdateAlertRuleRequest] updateAlertRuleRequest (required):
  Future<CreateAlertRule201Response?> updateAlertRule(String ruleId, UpdateAlertRuleRequest updateAlertRuleRequest,) async {
    final response = await updateAlertRuleWithHttpInfo(ruleId, updateAlertRuleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateAlertRule201Response',) as CreateAlertRule201Response;
    
    }
    return null;
  }
}
