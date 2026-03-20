//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ConfigurationSetsApi {
  ConfigurationSetsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a configuration set
  ///
  /// Create a new configuration set for grouping sending behavior.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createConfigurationSetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration-sets';

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

  /// Create a configuration set
  ///
  /// Create a new configuration set for grouping sending behavior.
  Future<void> createConfigurationSet() async {
    final response = await createConfigurationSetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a configuration set
  ///
  /// Delete a configuration set by name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> deleteConfigurationSetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration-sets/{name}'
      .replaceAll('{name}', name);

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

  /// Delete a configuration set
  ///
  /// Delete a configuration set by name.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> deleteConfigurationSet(String name,) async {
    final response = await deleteConfigurationSetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a configuration set
  ///
  /// Retrieve a configuration set by name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getConfigurationSetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration-sets/{name}'
      .replaceAll('{name}', name);

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

  /// Get a configuration set
  ///
  /// Retrieve a configuration set by name.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> getConfigurationSet(String name,) async {
    final response = await getConfigurationSetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get configuration set metrics
  ///
  /// Retrieve sending metrics for a configuration set.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getConfigurationSetMetricsWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration-sets/{name}/metrics'
      .replaceAll('{name}', name);

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

  /// Get configuration set metrics
  ///
  /// Retrieve sending metrics for a configuration set.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> getConfigurationSetMetrics(String name,) async {
    final response = await getConfigurationSetMetricsWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List configuration sets
  ///
  /// List all configuration sets for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listConfigurationSetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration-sets';

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

  /// List configuration sets
  ///
  /// List all configuration sets for the account.
  Future<void> listConfigurationSets() async {
    final response = await listConfigurationSetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a configuration set
  ///
  /// Update an existing configuration set by name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> updateConfigurationSetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration-sets/{name}'
      .replaceAll('{name}', name);

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

  /// Update a configuration set
  ///
  /// Update an existing configuration set by name.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> updateConfigurationSet(String name,) async {
    final response = await updateConfigurationSetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
