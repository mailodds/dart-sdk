//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ValidationPoliciesApi {
  ValidationPoliciesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add rule to policy
  ///
  /// Add a new rule to an existing policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  ///
  /// * [PolicyRule] policyRule (required):
  Future<Response> addPolicyRuleWithHttpInfo(int policyId, PolicyRule policyRule,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/{policy_id}/rules'
      .replaceAll('{policy_id}', policyId.toString());

    // ignore: prefer_final_locals
    Object? postBody = policyRule;

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

  /// Add rule to policy
  ///
  /// Add a new rule to an existing policy.
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  ///
  /// * [PolicyRule] policyRule (required):
  Future<AddPolicyRule201Response?> addPolicyRule(int policyId, PolicyRule policyRule,) async {
    final response = await addPolicyRuleWithHttpInfo(policyId, policyRule,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddPolicyRule201Response',) as AddPolicyRule201Response;
    
    }
    return null;
  }

  /// Create policy
  ///
  /// Create a new validation policy with rules.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePolicyRequest] createPolicyRequest (required):
  Future<Response> createPolicyWithHttpInfo(CreatePolicyRequest createPolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies';

    // ignore: prefer_final_locals
    Object? postBody = createPolicyRequest;

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

  /// Create policy
  ///
  /// Create a new validation policy with rules.
  ///
  /// Parameters:
  ///
  /// * [CreatePolicyRequest] createPolicyRequest (required):
  Future<PolicyResponse?> createPolicy(CreatePolicyRequest createPolicyRequest,) async {
    final response = await createPolicyWithHttpInfo(createPolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyResponse',) as PolicyResponse;
    
    }
    return null;
  }

  /// Create policy from preset
  ///
  /// Create a policy using a preset template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePolicyFromPresetRequest] createPolicyFromPresetRequest (required):
  Future<Response> createPolicyFromPresetWithHttpInfo(CreatePolicyFromPresetRequest createPolicyFromPresetRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/from-preset';

    // ignore: prefer_final_locals
    Object? postBody = createPolicyFromPresetRequest;

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

  /// Create policy from preset
  ///
  /// Create a policy using a preset template.
  ///
  /// Parameters:
  ///
  /// * [CreatePolicyFromPresetRequest] createPolicyFromPresetRequest (required):
  Future<PolicyResponse?> createPolicyFromPreset(CreatePolicyFromPresetRequest createPolicyFromPresetRequest,) async {
    final response = await createPolicyFromPresetWithHttpInfo(createPolicyFromPresetRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyResponse',) as PolicyResponse;
    
    }
    return null;
  }

  /// Delete policy
  ///
  /// Delete a policy and all its rules.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  Future<Response> deletePolicyWithHttpInfo(int policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/{policy_id}'
      .replaceAll('{policy_id}', policyId.toString());

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

  /// Delete policy
  ///
  /// Delete a policy and all its rules.
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  Future<DeletePolicy200Response?> deletePolicy(int policyId,) async {
    final response = await deletePolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletePolicy200Response',) as DeletePolicy200Response;
    
    }
    return null;
  }

  /// Delete rule
  ///
  /// Delete a rule from a policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  ///
  /// * [int] ruleId (required):
  Future<Response> deletePolicyRuleWithHttpInfo(int policyId, int ruleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/{policy_id}/rules/{rule_id}'
      .replaceAll('{policy_id}', policyId.toString())
      .replaceAll('{rule_id}', ruleId.toString());

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

  /// Delete rule
  ///
  /// Delete a rule from a policy.
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  ///
  /// * [int] ruleId (required):
  Future<DeletePolicyRule200Response?> deletePolicyRule(int policyId, int ruleId,) async {
    final response = await deletePolicyRuleWithHttpInfo(policyId, ruleId,);
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

  /// Get policy
  ///
  /// Get a single policy with its rules.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  Future<Response> getPolicyWithHttpInfo(int policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/{policy_id}'
      .replaceAll('{policy_id}', policyId.toString());

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

  /// Get policy
  ///
  /// Get a single policy with its rules.
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  Future<PolicyResponse?> getPolicy(int policyId,) async {
    final response = await getPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyResponse',) as PolicyResponse;
    
    }
    return null;
  }

  /// Get policy presets
  ///
  /// Get available preset templates for quick policy creation.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPolicyPresetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/presets';

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

  /// Get policy presets
  ///
  /// Get available preset templates for quick policy creation.
  Future<PolicyPresetsResponse?> getPolicyPresets() async {
    final response = await getPolicyPresetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyPresetsResponse',) as PolicyPresetsResponse;
    
    }
    return null;
  }

  /// List policies
  ///
  /// List all validation policies for your account. Includes plan limits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] includeRules:
  ///   Include full rules in response
  Future<Response> listPoliciesWithHttpInfo({ bool? includeRules, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeRules != null) {
      queryParams.addAll(_queryParams('', 'include_rules', includeRules));
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

  /// List policies
  ///
  /// List all validation policies for your account. Includes plan limits.
  ///
  /// Parameters:
  ///
  /// * [bool] includeRules:
  ///   Include full rules in response
  Future<PolicyListResponse?> listPolicies({ bool? includeRules, }) async {
    final response = await listPoliciesWithHttpInfo( includeRules: includeRules, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyListResponse',) as PolicyListResponse;
    
    }
    return null;
  }

  /// Test policy evaluation
  ///
  /// Test how a policy would evaluate a validation result without affecting production.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TestPolicyRequest] testPolicyRequest (required):
  Future<Response> testPolicyWithHttpInfo(TestPolicyRequest testPolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/test';

    // ignore: prefer_final_locals
    Object? postBody = testPolicyRequest;

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

  /// Test policy evaluation
  ///
  /// Test how a policy would evaluate a validation result without affecting production.
  ///
  /// Parameters:
  ///
  /// * [TestPolicyRequest] testPolicyRequest (required):
  Future<PolicyTestResponse?> testPolicy(TestPolicyRequest testPolicyRequest,) async {
    final response = await testPolicyWithHttpInfo(testPolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyTestResponse',) as PolicyTestResponse;
    
    }
    return null;
  }

  /// Update policy
  ///
  /// Update a policy's settings (name, enabled, default).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  ///
  /// * [UpdatePolicyRequest] updatePolicyRequest (required):
  Future<Response> updatePolicyWithHttpInfo(int policyId, UpdatePolicyRequest updatePolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/{policy_id}'
      .replaceAll('{policy_id}', policyId.toString());

    // ignore: prefer_final_locals
    Object? postBody = updatePolicyRequest;

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

  /// Update policy
  ///
  /// Update a policy's settings (name, enabled, default).
  ///
  /// Parameters:
  ///
  /// * [int] policyId (required):
  ///
  /// * [UpdatePolicyRequest] updatePolicyRequest (required):
  Future<PolicyResponse?> updatePolicy(int policyId, UpdatePolicyRequest updatePolicyRequest,) async {
    final response = await updatePolicyWithHttpInfo(policyId, updatePolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyResponse',) as PolicyResponse;
    
    }
    return null;
  }
}
