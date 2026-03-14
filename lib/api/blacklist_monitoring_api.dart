//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BlacklistMonitoringApi {
  BlacklistMonitoringApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add blacklist monitor
  ///
  /// Add an IP address or domain to monitor against DNS blacklists. An initial check is run immediately.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddBlacklistMonitorRequest] addBlacklistMonitorRequest (required):
  Future<Response> addBlacklistMonitorWithHttpInfo(AddBlacklistMonitorRequest addBlacklistMonitorRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blacklist-monitors';

    // ignore: prefer_final_locals
    Object? postBody = addBlacklistMonitorRequest;

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

  /// Add blacklist monitor
  ///
  /// Add an IP address or domain to monitor against DNS blacklists. An initial check is run immediately.
  ///
  /// Parameters:
  ///
  /// * [AddBlacklistMonitorRequest] addBlacklistMonitorRequest (required):
  Future<AddBlacklistMonitor201Response?> addBlacklistMonitor(AddBlacklistMonitorRequest addBlacklistMonitorRequest,) async {
    final response = await addBlacklistMonitorWithHttpInfo(addBlacklistMonitorRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddBlacklistMonitor201Response',) as AddBlacklistMonitor201Response;
    
    }
    return null;
  }

  /// Get blacklist check history
  ///
  /// Get the listing and delisting timeline for a monitored IP or domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///   Monitor UUID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> getBlacklistHistoryWithHttpInfo(String monitorId, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blacklist-monitors/{monitor_id}/history'
      .replaceAll('{monitor_id}', monitorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get blacklist check history
  ///
  /// Get the listing and delisting timeline for a monitored IP or domain.
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///   Monitor UUID
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<GetBlacklistHistory200Response?> getBlacklistHistory(String monitorId, { int? page, int? perPage, }) async {
    final response = await getBlacklistHistoryWithHttpInfo(monitorId,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetBlacklistHistory200Response',) as GetBlacklistHistory200Response;
    
    }
    return null;
  }

  /// List blacklist monitors
  ///
  /// List all blacklist monitors for the authenticated account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listBlacklistMonitorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blacklist-monitors';

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

  /// List blacklist monitors
  ///
  /// List all blacklist monitors for the authenticated account.
  Future<ListBlacklistMonitors200Response?> listBlacklistMonitors() async {
    final response = await listBlacklistMonitorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListBlacklistMonitors200Response',) as ListBlacklistMonitors200Response;
    
    }
    return null;
  }

  /// Run blacklist check
  ///
  /// Run an on-demand DNSBL check for a monitored IP or domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///   Monitor UUID
  Future<Response> runBlacklistCheckWithHttpInfo(String monitorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blacklist-monitors/{monitor_id}/check'
      .replaceAll('{monitor_id}', monitorId);

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

  /// Run blacklist check
  ///
  /// Run an on-demand DNSBL check for a monitored IP or domain.
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///   Monitor UUID
  Future<RunBlacklistCheck200Response?> runBlacklistCheck(String monitorId,) async {
    final response = await runBlacklistCheckWithHttpInfo(monitorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunBlacklistCheck200Response',) as RunBlacklistCheck200Response;
    
    }
    return null;
  }
}
