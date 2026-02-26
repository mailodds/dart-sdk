//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailSendingApi {
  EmailSendingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Send to multiple recipients (max 100)
  ///
  /// Send a single message to up to 100 recipients. Shares the same message body across all recipients. Each recipient is processed independently.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BatchDeliverRequest] batchDeliverRequest (required):
  Future<Response> deliverBatchWithHttpInfo(BatchDeliverRequest batchDeliverRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deliver/batch';

    // ignore: prefer_final_locals
    Object? postBody = batchDeliverRequest;

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

  /// Send to multiple recipients (max 100)
  ///
  /// Send a single message to up to 100 recipients. Shares the same message body across all recipients. Each recipient is processed independently.
  ///
  /// Parameters:
  ///
  /// * [BatchDeliverRequest] batchDeliverRequest (required):
  Future<BatchDeliverResponse?> deliverBatch(BatchDeliverRequest batchDeliverRequest,) async {
    final response = await deliverBatchWithHttpInfo(batchDeliverRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchDeliverResponse',) as BatchDeliverResponse;
    
    }
    return null;
  }

  /// Send a single email
  ///
  /// Send a transactional email through the safety pipeline. Validates recipients, checks domain ownership, and queues for delivery. Requires a verified sending domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeliverRequest] deliverRequest (required):
  Future<Response> deliverEmailWithHttpInfo(DeliverRequest deliverRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deliver';

    // ignore: prefer_final_locals
    Object? postBody = deliverRequest;

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

  /// Send a single email
  ///
  /// Send a transactional email through the safety pipeline. Validates recipients, checks domain ownership, and queues for delivery. Requires a verified sending domain.
  ///
  /// Parameters:
  ///
  /// * [DeliverRequest] deliverRequest (required):
  Future<DeliverResponse?> deliverEmail(DeliverRequest deliverRequest,) async {
    final response = await deliverEmailWithHttpInfo(deliverRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverResponse',) as DeliverResponse;
    
    }
    return null;
  }
}
