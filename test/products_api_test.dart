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


/// tests for ProductsApi
void main() {
  // final instance = ProductsApi();

  group('tests for ProductsApi', () {
    // Batch push products
    //
    // Push up to 100 products to a custom platform store. Creates new products or updates existing ones matched by external_id. Only available for stores with platform=custom.
    //
    //Future<BatchProductsResponse> batchProducts(String storeId, BatchProductsRequest batchProductsRequest) async
    test('test batchProducts', () async {
      // TODO
    });

    // Get a product
    //
    // Get detailed information about a specific product.
    //
    //Future<GetProduct200Response> getProduct(String productId) async
    test('test getProduct', () async {
      // TODO
    });

    // Query products
    //
    // Search and filter products across all connected stores. Supports faceted search and cross-store SKU deduplication for unified inventory views.
    //
    //Future<QueryProducts200Response> queryProducts({ String storeId, String category, String stockStatus, bool onSale, String search, bool facets, bool groupBySku, int page, int perPage }) async
    test('test queryProducts', () async {
      // TODO
    });

  });
}
