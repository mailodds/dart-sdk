//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for SubscriberListsApi
void main() {
  // final instance = SubscriberListsApi();

  group('tests for SubscriberListsApi', () {
    // Confirm subscription
    //
    // Confirm a pending subscription via the token sent in the confirmation email. No authentication required. Redirects to the list's configured redirect URL if set, otherwise returns JSON. Tokens expire after 72 hours.
    //
    //Future<ConfirmSubscription200Response> confirmSubscription(String token) async
    test('test confirmSubscription', () async {
      // TODO
    });

    // Create a subscriber list
    //
    // Create a new subscriber list. Use lists to organize subscribers and manage double opt-in confirmation flows.
    //
    //Future<CreateList201Response> createList(CreateListRequest createListRequest) async
    test('test createList', () async {
      // TODO
    });

    // Delete a subscriber list
    //
    // Soft-delete a subscriber list. Existing subscribers are retained but the list is no longer usable.
    //
    //Future<DeletePolicyRule200Response> deleteList(String listId) async
    test('test deleteList', () async {
      // TODO
    });

    // Get a subscriber list
    //
    // Get details of a specific subscriber list including subscriber and confirmed counts.
    //
    //Future<CreateList201Response> getList(String listId) async
    test('test getList', () async {
      // TODO
    });

    // List subscriber lists
    //
    // List all subscriber lists for the authenticated account with pagination.
    //
    //Future<GetLists200Response> getLists({ int page, int perPage }) async
    test('test getLists', () async {
      // TODO
    });

    // List subscribers
    //
    // List paginated subscribers for a specific list. Optionally filter by status.
    //
    //Future<GetSubscribers200Response> getSubscribers(String listId, { int page, int perPage, String status }) async
    test('test getSubscribers', () async {
      // TODO
    });

    // Subscribe to a list
    //
    // Add a subscriber to a list and initiate the double opt-in confirmation flow. The subscriber receives a confirmation email and must click the link to confirm. Rate limited to 10 requests/min per IP and 1000/hour per account.
    //
    //Future<UnsubscribeSubscriber200Response> subscribe(String listId, SubscribeRequest subscribeRequest) async
    test('test subscribe', () async {
      // TODO
    });

    // Unsubscribe a subscriber
    //
    // Set a subscriber's status to unsubscribed. The consent record is retained for compliance.
    //
    //Future<UnsubscribeSubscriber200Response> unsubscribeSubscriber(String listId, String subscriberId) async
    test('test unsubscribeSubscriber', () async {
      // TODO
    });

  });
}
