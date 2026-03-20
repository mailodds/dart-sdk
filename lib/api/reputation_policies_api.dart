//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ReputationPoliciesApi {
  ReputationPoliciesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a reputation policy
  ///
  /// Create a new reputation policy with custom rules and thresholds.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createReputationPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies';

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

  /// Create a reputation policy
  ///
  /// Create a new reputation policy with custom rules and thresholds.
  Future<void> createReputationPolicy() async {
    final response = await createReputationPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a reputation policy from preset
  ///
  /// Create a reputation policy from a predefined preset template.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createReputationPolicyFromPresetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies/from-preset';

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

  /// Create a reputation policy from preset
  ///
  /// Create a reputation policy from a predefined preset template.
  Future<void> createReputationPolicyFromPreset() async {
    final response = await createReputationPolicyFromPresetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a reputation policy
  ///
  /// Soft-delete a reputation policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> deleteReputationPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies/{policy_id}'
      .replaceAll('{policy_id}', policyId);

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

  /// Delete a reputation policy
  ///
  /// Soft-delete a reputation policy.
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<void> deleteReputationPolicy(String policyId,) async {
    final response = await deleteReputationPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a reputation policy
  ///
  /// Retrieve a single reputation policy by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> getReputationPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies/{policy_id}'
      .replaceAll('{policy_id}', policyId);

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

  /// Get a reputation policy
  ///
  /// Retrieve a single reputation policy by ID.
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<void> getReputationPolicy(String policyId,) async {
    final response = await getReputationPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get reputation policy status
  ///
  /// Evaluate a policy and return per-domain status results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> getReputationPolicyStatusWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies/{policy_id}/status'
      .replaceAll('{policy_id}', policyId);

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

  /// Get reputation policy status
  ///
  /// Evaluate a policy and return per-domain status results.
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<void> getReputationPolicyStatus(String policyId,) async {
    final response = await getReputationPolicyStatusWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List reputation policies
  ///
  /// List all reputation policies for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listReputationPoliciesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies';

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

  /// List reputation policies
  ///
  /// List all reputation policies for the account.
  Future<void> listReputationPolicies() async {
    final response = await listReputationPoliciesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Test a reputation policy
  ///
  /// Dry-run evaluation of a reputation policy without applying actions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> testReputationPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies/{policy_id}/test'
      .replaceAll('{policy_id}', policyId);

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

  /// Test a reputation policy
  ///
  /// Dry-run evaluation of a reputation policy without applying actions.
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<void> testReputationPolicy(String policyId,) async {
    final response = await testReputationPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a reputation policy
  ///
  /// Update an existing reputation policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> updateReputationPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/reputation-policies/{policy_id}'
      .replaceAll('{policy_id}', policyId);

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

  /// Update a reputation policy
  ///
  /// Update an existing reputation policy.
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<void> updateReputationPolicy(String policyId,) async {
    final response = await updateReputationPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
