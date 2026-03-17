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


/// tests for EngagementApi
void main() {
  // final instance = EngagementApi();

  group('tests for EngagementApi', () {
    // List disengaged contacts
    //
    // List contacts that have not engaged within the specified period. Requires Growth+ plan.
    //
    //Future<GetDisengagedContacts200Response> getDisengagedContacts({ int inactiveDays, int minSends, String domainId, int page, int perPage }) async
    test('test getDisengagedContacts', () async {
      // TODO
    });

    // Get engagement score
    //
    // Get the engagement score for a specific email address. Requires Growth+ plan.
    //
    //Future<GetEngagementScore200Response> getEngagementScore(String email) async
    test('test getEngagementScore', () async {
      // TODO
    });

    // Get engagement summary
    //
    // Get aggregate engagement metrics across all contacts. Requires Growth+ plan.
    //
    //Future<GetBounceStatsSummary200Response> getEngagementSummary({ String domainId }) async
    test('test getEngagementSummary', () async {
      // TODO
    });

    // Suppress disengaged contacts
    //
    // Add disengaged contacts to the suppression list. Supports dry_run mode. Requires Growth+ plan.
    //
    //Future<SuppressDisengaged200Response> suppressDisengaged(SuppressDisengagedRequest suppressDisengagedRequest) async
    test('test suppressDisengaged', () async {
      // TODO
    });

  });
}
