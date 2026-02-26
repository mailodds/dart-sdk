//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SubscriberListsApi {
  SubscriberListsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Confirm subscription
  ///
  /// Confirm a pending subscription via the token sent in the confirmation email. No authentication required. Redirects to the list's configured redirect URL if set, otherwise returns JSON. Tokens expire after 72 hours.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Confirmation token from email
  Future<Response> confirmSubscriptionWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/confirm/{token}'
      .replaceAll('{token}', token);

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

  /// Confirm subscription
  ///
  /// Confirm a pending subscription via the token sent in the confirmation email. No authentication required. Redirects to the list's configured redirect URL if set, otherwise returns JSON. Tokens expire after 72 hours.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Confirmation token from email
  Future<ConfirmSubscription200Response?> confirmSubscription(String token,) async {
    final response = await confirmSubscriptionWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConfirmSubscription200Response',) as ConfirmSubscription200Response;
    
    }
    return null;
  }

  /// Create a subscriber list
  ///
  /// Create a new subscriber list. Use lists to organize subscribers and manage double opt-in confirmation flows.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateListRequest] createListRequest (required):
  Future<Response> createListWithHttpInfo(CreateListRequest createListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lists';

    // ignore: prefer_final_locals
    Object? postBody = createListRequest;

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

  /// Create a subscriber list
  ///
  /// Create a new subscriber list. Use lists to organize subscribers and manage double opt-in confirmation flows.
  ///
  /// Parameters:
  ///
  /// * [CreateListRequest] createListRequest (required):
  Future<CreateList201Response?> createList(CreateListRequest createListRequest,) async {
    final response = await createListWithHttpInfo(createListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateList201Response',) as CreateList201Response;
    
    }
    return null;
  }

  /// Delete a subscriber list
  ///
  /// Soft-delete a subscriber list. Existing subscribers are retained but the list is no longer usable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  Future<Response> deleteListWithHttpInfo(String listId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lists/{list_id}'
      .replaceAll('{list_id}', listId);

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

  /// Delete a subscriber list
  ///
  /// Soft-delete a subscriber list. Existing subscribers are retained but the list is no longer usable.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  Future<DeletePolicyRule200Response?> deleteList(String listId,) async {
    final response = await deleteListWithHttpInfo(listId,);
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

  /// Get a subscriber list
  ///
  /// Get details of a specific subscriber list including subscriber and confirmed counts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  Future<Response> getListWithHttpInfo(String listId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lists/{list_id}'
      .replaceAll('{list_id}', listId);

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

  /// Get a subscriber list
  ///
  /// Get details of a specific subscriber list including subscriber and confirmed counts.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  Future<CreateList201Response?> getList(String listId,) async {
    final response = await getListWithHttpInfo(listId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateList201Response',) as CreateList201Response;
    
    }
    return null;
  }

  /// List subscriber lists
  ///
  /// List all subscriber lists for the authenticated account with pagination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  Future<Response> getListsWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lists';

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

  /// List subscriber lists
  ///
  /// List all subscriber lists for the authenticated account with pagination.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  Future<GetLists200Response?> getLists({ int? page, int? perPage, }) async {
    final response = await getListsWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetLists200Response',) as GetLists200Response;
    
    }
    return null;
  }

  /// List subscribers
  ///
  /// List paginated subscribers for a specific list. Optionally filter by status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  ///
  /// * [String] status:
  ///   Filter by subscriber status
  Future<Response> getSubscribersWithHttpInfo(String listId, { int? page, int? perPage, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lists/{list_id}/subscribers'
      .replaceAll('{list_id}', listId);

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
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// List subscribers
  ///
  /// List paginated subscribers for a specific list. Optionally filter by status.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] perPage:
  ///   Items per page
  ///
  /// * [String] status:
  ///   Filter by subscriber status
  Future<GetSubscribers200Response?> getSubscribers(String listId, { int? page, int? perPage, String? status, }) async {
    final response = await getSubscribersWithHttpInfo(listId,  page: page, perPage: perPage, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSubscribers200Response',) as GetSubscribers200Response;
    
    }
    return null;
  }

  /// Subscribe to a list
  ///
  /// Add a subscriber to a list and initiate the double opt-in confirmation flow. The subscriber receives a confirmation email and must click the link to confirm. Rate limited to 10 requests/min per IP and 1000/hour per account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  ///
  /// * [SubscribeRequest] subscribeRequest (required):
  Future<Response> subscribeWithHttpInfo(String listId, SubscribeRequest subscribeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/subscribe/{list_id}'
      .replaceAll('{list_id}', listId);

    // ignore: prefer_final_locals
    Object? postBody = subscribeRequest;

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

  /// Subscribe to a list
  ///
  /// Add a subscriber to a list and initiate the double opt-in confirmation flow. The subscriber receives a confirmation email and must click the link to confirm. Rate limited to 10 requests/min per IP and 1000/hour per account.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  ///
  /// * [SubscribeRequest] subscribeRequest (required):
  Future<UnsubscribeSubscriber200Response?> subscribe(String listId, SubscribeRequest subscribeRequest,) async {
    final response = await subscribeWithHttpInfo(listId, subscribeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnsubscribeSubscriber200Response',) as UnsubscribeSubscriber200Response;
    
    }
    return null;
  }

  /// Unsubscribe a subscriber
  ///
  /// Set a subscriber's status to unsubscribed. The consent record is retained for compliance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  ///
  /// * [String] subscriberId (required):
  ///   Subscriber UUID
  Future<Response> unsubscribeSubscriberWithHttpInfo(String listId, String subscriberId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/lists/{list_id}/subscribers/{subscriber_id}'
      .replaceAll('{list_id}', listId)
      .replaceAll('{subscriber_id}', subscriberId);

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

  /// Unsubscribe a subscriber
  ///
  /// Set a subscriber's status to unsubscribed. The consent record is retained for compliance.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   List UUID
  ///
  /// * [String] subscriberId (required):
  ///   Subscriber UUID
  Future<UnsubscribeSubscriber200Response?> unsubscribeSubscriber(String listId, String subscriberId,) async {
    final response = await unsubscribeSubscriberWithHttpInfo(listId, subscriberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnsubscribeSubscriber200Response',) as UnsubscribeSubscriber200Response;
    
    }
    return null;
  }
}
