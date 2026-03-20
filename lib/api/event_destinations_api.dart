//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class EventDestinationsApi {
  EventDestinationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an event destination
  ///
  /// Create a new event destination for receiving webhook callbacks.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createEventDestinationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations';

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

  /// Create an event destination
  ///
  /// Create a new event destination for receiving webhook callbacks.
  Future<void> createEventDestination() async {
    final response = await createEventDestinationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an event destination
  ///
  /// Delete an event destination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] destinationId (required):
  Future<Response> deleteEventDestinationWithHttpInfo(int destinationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations/{destination_id}'
      .replaceAll('{destination_id}', destinationId.toString());

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

  /// Delete an event destination
  ///
  /// Delete an event destination.
  ///
  /// Parameters:
  ///
  /// * [int] destinationId (required):
  Future<void> deleteEventDestination(int destinationId,) async {
    final response = await deleteEventDestinationWithHttpInfo(destinationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an event destination
  ///
  /// Retrieve a single event destination by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] destinationId (required):
  Future<Response> getEventDestinationWithHttpInfo(int destinationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations/{destination_id}'
      .replaceAll('{destination_id}', destinationId.toString());

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

  /// Get an event destination
  ///
  /// Retrieve a single event destination by ID.
  ///
  /// Parameters:
  ///
  /// * [int] destinationId (required):
  Future<void> getEventDestination(int destinationId,) async {
    final response = await getEventDestinationWithHttpInfo(destinationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List event destination templates
  ///
  /// List pre-built payload templates for event destinations.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listEventDestinationTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations/templates';

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

  /// List event destination templates
  ///
  /// List pre-built payload templates for event destinations.
  Future<void> listEventDestinationTemplates() async {
    final response = await listEventDestinationTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List event destinations
  ///
  /// List all event destinations for the account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listEventDestinationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations';

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

  /// List event destinations
  ///
  /// List all event destinations for the account.
  Future<void> listEventDestinations() async {
    final response = await listEventDestinationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List event schemas
  ///
  /// List JSON schemas for each event type.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listEventSchemasWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations/schemas';

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

  /// List event schemas
  ///
  /// List JSON schemas for each event type.
  Future<void> listEventSchemas() async {
    final response = await listEventSchemasWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update an event destination
  ///
  /// Update an existing event destination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] destinationId (required):
  Future<Response> updateEventDestinationWithHttpInfo(int destinationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/event-destinations/{destination_id}'
      .replaceAll('{destination_id}', destinationId.toString());

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

  /// Update an event destination
  ///
  /// Update an existing event destination.
  ///
  /// Parameters:
  ///
  /// * [int] destinationId (required):
  Future<void> updateEventDestination(int destinationId,) async {
    final response = await updateEventDestinationWithHttpInfo(destinationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
