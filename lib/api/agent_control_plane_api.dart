//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class AgentControlPlaneApi {
  AgentControlPlaneApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get MCP capabilities
  ///
  /// Returns a static capability manifest listing all MCP tools organized by pillar. Used by AI agents for tool discovery and scope-based self-correction.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMcpCapabilitiesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mcp/capabilities';

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

  /// Get MCP capabilities
  ///
  /// Returns a static capability manifest listing all MCP tools organized by pillar. Used by AI agents for tool discovery and scope-based self-correction.
  Future<McpCapabilities?> getMcpCapabilities() async {
    final response = await getMcpCapabilitiesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'McpCapabilities',) as McpCapabilities;
    
    }
    return null;
  }
}
