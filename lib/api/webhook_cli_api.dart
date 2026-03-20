//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class WebhookCLIApi {
  WebhookCLIApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create CLI forwarding session
  ///
  /// Register a new session for receiving webhook events via SSE.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateWebhookCliSessionRequest] createWebhookCliSessionRequest:
  Future<Response> createWebhookCliSessionWithHttpInfo({ CreateWebhookCliSessionRequest? createWebhookCliSessionRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-cli/sessions';

    // ignore: prefer_final_locals
    Object? postBody = createWebhookCliSessionRequest;

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

  /// Create CLI forwarding session
  ///
  /// Register a new session for receiving webhook events via SSE.
  ///
  /// Parameters:
  ///
  /// * [CreateWebhookCliSessionRequest] createWebhookCliSessionRequest:
  Future<CreateWebhookCliSession201Response?> createWebhookCliSession({ CreateWebhookCliSessionRequest? createWebhookCliSessionRequest, }) async {
    final response = await createWebhookCliSessionWithHttpInfo( createWebhookCliSessionRequest: createWebhookCliSessionRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateWebhookCliSession201Response',) as CreateWebhookCliSession201Response;
    
    }
    return null;
  }

  /// Close CLI session
  ///
  /// Close a webhook CLI forwarding session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<Response> deleteWebhookCliSessionWithHttpInfo(String sessionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-cli/sessions/{session_id}'
      .replaceAll('{session_id}', sessionId);

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

  /// Close CLI session
  ///
  /// Close a webhook CLI forwarding session.
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<DeleteWebhookCliSession200Response?> deleteWebhookCliSession(String sessionId,) async {
    final response = await deleteWebhookCliSessionWithHttpInfo(sessionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteWebhookCliSession200Response',) as DeleteWebhookCliSession200Response;
    
    }
    return null;
  }

  /// List recent webhook deliveries
  ///
  /// List recent webhook deliveries for replay.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum deliveries to return
  Future<Response> listWebhookDeliveriesWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-cli/deliveries';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List recent webhook deliveries
  ///
  /// List recent webhook deliveries for replay.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum deliveries to return
  Future<ListWebhookDeliveries200Response?> listWebhookDeliveries({ int? limit, }) async {
    final response = await listWebhookDeliveriesWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListWebhookDeliveries200Response',) as ListWebhookDeliveries200Response;
    
    }
    return null;
  }

  /// Replay webhook delivery
  ///
  /// Replay a historical webhook delivery to active CLI sessions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] deliveryId (required):
  Future<Response> replayWebhookDeliveryWithHttpInfo(int deliveryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhook-cli/deliveries/{delivery_id}/replay'
      .replaceAll('{delivery_id}', deliveryId.toString());

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

  /// Replay webhook delivery
  ///
  /// Replay a historical webhook delivery to active CLI sessions.
  ///
  /// Parameters:
  ///
  /// * [int] deliveryId (required):
  Future<ReplayWebhookDelivery200Response?> replayWebhookDelivery(int deliveryId,) async {
    final response = await replayWebhookDeliveryWithHttpInfo(deliveryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplayWebhookDelivery200Response',) as ReplayWebhookDelivery200Response;
    
    }
    return null;
  }
}
