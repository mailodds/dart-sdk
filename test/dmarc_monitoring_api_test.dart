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


/// tests for DMARCMonitoringApi
void main() {
  // final instance = DMARCMonitoringApi();

  group('tests for DMARCMonitoringApi', () {
    // Add DMARC domain
    //
    // Add a domain for DMARC monitoring. A unique reporting address is generated for receiving aggregate DMARC reports.
    //
    //Future<AddDmarcDomain201Response> addDmarcDomain(AddDmarcDomainRequest addDmarcDomainRequest) async
    test('test addDmarcDomain', () async {
      // TODO
    });

    // Get DMARC domain
    //
    // Get a single DMARC domain with summary statistics including pass/fail rates.
    //
    //Future<GetDmarcDomain200Response> getDmarcDomain(String domainId, { int days }) async
    test('test getDmarcDomain', () async {
      // TODO
    });

    // Get DMARC policy recommendation
    //
    // Get a recommendation for upgrading the domain's DMARC policy based on alignment data.
    //
    //Future<GetDmarcRecommendation200Response> getDmarcRecommendation(String domainId) async
    test('test getDmarcRecommendation', () async {
      // TODO
    });

    // Get DMARC sending sources
    //
    // Get sending IPs that have sent email for this domain with their DKIM/SPF alignment status.
    //
    //Future<GetDmarcSources200Response> getDmarcSources(String domainId, { int days, int page, int perPage }) async
    test('test getDmarcSources', () async {
      // TODO
    });

    // Get DMARC trend
    //
    // Get daily pass/fail trend data for DMARC authentication over the specified period.
    //
    //Future<GetDmarcTrend200Response> getDmarcTrend(String domainId, { int days }) async
    test('test getDmarcTrend', () async {
      // TODO
    });

    // List DMARC domains
    //
    // List all domains being monitored for DMARC compliance.
    //
    //Future<ListDmarcDomains200Response> listDmarcDomains() async
    test('test listDmarcDomains', () async {
      // TODO
    });

    // Verify DMARC DNS records
    //
    // Check that the domain has the correct DMARC TXT record pointing to the MailOdds reporting address.
    //
    //Future<AddDmarcDomain201Response> verifyDmarcDomain(String domainId) async
    test('test verifyDmarcDomain', () async {
      // TODO
    });

  });
}
