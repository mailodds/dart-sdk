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


/// tests for SendingDomainsApi
void main() {
  // final instance = SendingDomainsApi();

  group('tests for SendingDomainsApi', () {
    // Add a sending domain
    //
    // Register a new sending domain with NS delegation. After adding, configure DNS records and verify.
    //
    //Future<CreateSendingDomain201Response> createSendingDomain(CreateSendingDomainRequest createSendingDomainRequest) async
    test('test createSendingDomain', () async {
      // TODO
    });

    // Delete a sending domain
    //
    // Permanently remove a sending domain from the account.
    //
    //Future<DeletePolicyRule200Response> deleteSendingDomain(String domainId) async
    test('test deleteSendingDomain', () async {
      // TODO
    });

    // Get a sending domain
    //
    // Get details of a specific sending domain including DNS verification status.
    //
    //Future<CreateSendingDomain201Response> getSendingDomain(String domainId) async
    test('test getSendingDomain', () async {
      // TODO
    });

    // Get domain identity score
    //
    // Get a composite DNS health score for the sending domain, checking DKIM, SPF, DMARC, MX, and return path configuration.
    //
    //Future<GetSendingDomainIdentityScore200Response> getSendingDomainIdentityScore(String domainId) async
    test('test getSendingDomainIdentityScore', () async {
      // TODO
    });

    // Get sending statistics
    //
    // Get aggregate sending statistics across all domains for the account, including delivery rates, open rates, and click rates.
    //
    //Future<GetSendingStats200Response> getSendingStats({ String period, String domainId }) async
    test('test getSendingStats', () async {
      // TODO
    });

    // List sending domains
    //
    // List all sending domains for the authenticated account.
    //
    //Future<ListSendingDomains200Response> listSendingDomains() async
    test('test listSendingDomains', () async {
      // TODO
    });

    // Verify domain DNS records
    //
    // Check and verify all DNS records (DKIM, SPF, DMARC, MX, return path) for the sending domain.
    //
    //Future<CreateSendingDomain201Response> verifySendingDomain(String domainId) async
    test('test verifySendingDomain', () async {
      // TODO
    });

  });
}
