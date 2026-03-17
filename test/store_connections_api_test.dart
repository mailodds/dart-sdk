//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailodds/api.dart';
import 'package:test/test.dart';


/// tests for StoreConnectionsApi
void main() {
  // final instance = StoreConnectionsApi();

  group('tests for StoreConnectionsApi', () {
    // Create a store connection
    //
    // Connect an e-commerce store (WooCommerce, PrestaShop, Shopify, or product feed). After creation, trigger a sync to import products.
    //
    //Future<CreateStore201Response> createStore(CreateStoreRequest createStoreRequest) async
    test('test createStore', () async {
      // TODO
    });

    // Disconnect a store
    //
    // Disconnect a store and deactivate its products. Products are retained but marked inactive.
    //
    //Future<DisconnectStore200Response> disconnectStore(String storeId) async
    test('test disconnectStore', () async {
      // TODO
    });

    // Get a store connection
    //
    // Get details of a specific store connection including sync status and product count.
    //
    //Future<CreateStore201Response> getStore(String storeId) async
    test('test getStore', () async {
      // TODO
    });

    // List store connections
    //
    // List all store connections for the authenticated account.
    //
    //Future<ListStores200Response> listStores() async
    test('test listStores', () async {
      // TODO
    });

    // Trigger product sync
    //
    // Trigger a manual product sync for a store. Supports idempotency via the Idempotency-Key header (5 minute TTL).
    //
    //Future<SyncResponse> triggerSync(String storeId, { String idempotencyKey }) async
    test('test triggerSync', () async {
      // TODO
    });

  });
}
