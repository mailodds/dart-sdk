//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class EventsApi {
  EventsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Track a commerce event
  ///
  /// Ingest a commerce event (purchase, cart abandonment, browse, wishlist, review, etc.). Supports idempotency via the idempotency_key field (5 minute Redis TTL + DB unique constraint).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrackEventRequest] trackEventRequest (required):
  Future<Response> trackEventWithHttpInfo(TrackEventRequest trackEventRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/events/track';

    // ignore: prefer_final_locals
    Object? postBody = trackEventRequest;

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

  /// Track a commerce event
  ///
  /// Ingest a commerce event (purchase, cart abandonment, browse, wishlist, review, etc.). Supports idempotency via the idempotency_key field (5 minute Redis TTL + DB unique constraint).
  ///
  /// Parameters:
  ///
  /// * [TrackEventRequest] trackEventRequest (required):
  Future<TrackEventResponse?> trackEvent(TrackEventRequest trackEventRequest,) async {
    final response = await trackEventWithHttpInfo(trackEventRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrackEventResponse',) as TrackEventResponse;
    
    }
    return null;
  }
}
