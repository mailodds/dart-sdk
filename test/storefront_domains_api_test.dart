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


/// tests for StorefrontDomainsApi
void main() {
  // final instance = StorefrontDomainsApi();

  group('tests for StorefrontDomainsApi', () {
    // Add a custom storefront domain
    //
    // Register a custom domain (e.g., shop.merchant.com) for a storefront store. If a Cloudflare DNS provider is connected, NS records are auto-configured.
    //
    //Future createStorefrontDomain(CreateStorefrontDomainRequest createStorefrontDomainRequest) async
    test('test createStorefrontDomain', () async {
      // TODO
    });

    // Delete a storefront domain
    //
    // Remove a custom storefront domain. Cleans up DNS records (if auto-configured), TLS certificates, and edge node config.
    //
    //Future deleteStorefrontDomain(String domainId) async
    test('test deleteStorefrontDomain', () async {
      // TODO
    });

    // Get storefront domain details
    //
    // Get a custom domain with status, NS record instructions, and certificate info.
    //
    //Future getStorefrontDomain(String domainId) async
    test('test getStorefrontDomain', () async {
      // TODO
    });

    // List storefront domains
    //
    // List all custom storefront domains for the account.
    //
    //Future listStorefrontDomains() async
    test('test listStorefrontDomains', () async {
      // TODO
    });

    // Verify storefront domain DNS
    //
    // Trigger manual DNS verification for a custom domain. Rate limited to 5 per hour per domain.
    //
    //Future verifyStorefrontDomain(String domainId) async
    test('test verifyStorefrontDomain', () async {
      // TODO
    });

  });
}
