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


/// tests for BounceAnalysisApi
void main() {
  // final instance = BounceAnalysisApi();

  group('tests for BounceAnalysisApi', () {
    // Analyze bounce logs
    //
    // Submit bounce log data for analysis. Identifies patterns, categorizes bounce types, and provides remediation recommendations.
    //
    //Future<BounceAnalysisResponse> createBounceAnalysis(CreateBounceAnalysisRequest createBounceAnalysisRequest) async
    test('test createBounceAnalysis', () async {
      // TODO
    });

    // Cross-reference bounces with validation logs
    //
    // Match bounced emails against your validation history to identify emails that were validated as deliverable but later bounced.
    //
    //Future<CrossReferenceBounces200Response> crossReferenceBounces(String analysisId) async
    test('test crossReferenceBounces', () async {
      // TODO
    });

    // Get bounce analysis
    //
    // Get the results of a bounce analysis including category breakdown, top offenders, and recommendations.
    //
    //Future<BounceAnalysisResponse> getBounceAnalysis(String analysisId) async
    test('test getBounceAnalysis', () async {
      // TODO
    });

    // Get bounce records
    //
    // Get individual bounce records from an analysis with pagination.
    //
    //Future<GetBounceRecords200Response> getBounceRecords(String analysisId, { int page, int perPage, String type }) async
    test('test getBounceRecords', () async {
      // TODO
    });

  });
}
