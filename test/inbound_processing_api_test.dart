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


/// tests for InboundProcessingApi
void main() {
  // final instance = InboundProcessingApi();

  group('tests for InboundProcessingApi', () {
    // Correct inbound message classification
    //
    // Submit a human correction for an inbound message classification. Requires Pro+ plan.
    //
    //Future<GetInboundMessage200Response> correctInboundMessage(String messageId, CorrectInboundMessageRequest correctInboundMessageRequest) async
    test('test correctInboundMessage', () async {
      // TODO
    });

    // Get bounce statistics
    //
    // Get bounce and complaint statistics grouped by time period. Requires Growth+ plan.
    //
    //Future<GetBounceStats200Response> getBounceStats({ String domainId, String period, String groupBy }) async
    test('test getBounceStats', () async {
      // TODO
    });

    // Get bounce statistics summary
    //
    // Get aggregated bounce and complaint statistics. Requires Growth+ plan.
    //
    //Future<GetBounceStatsSummary200Response> getBounceStatsSummary({ String domainId, String period }) async
    test('test getBounceStatsSummary', () async {
      // TODO
    });

    // Get complaint assessment
    //
    // Assess complaint risk based on recent inbound data. Requires Growth+ plan.
    //
    //Future<GetComplaintAssessment200Response> getComplaintAssessment({ String domainId, String period }) async
    test('test getComplaintAssessment', () async {
      // TODO
    });

    // Get inbound message
    //
    // Get a single inbound message with full body content. Requires Growth+ plan.
    //
    //Future<GetInboundMessage200Response> getInboundMessage(String messageId) async
    test('test getInboundMessage', () async {
      // TODO
    });

    // List inbound messages
    //
    // List inbound messages (bounces, complaints, replies, OOO). Requires Growth+ plan.
    //
    //Future<ListInboundMessages200Response> listInboundMessages({ String category, String domainId, DateTime since, DateTime until, bool isRead, String recipient, String search, int page, int perPage }) async
    test('test listInboundMessages', () async {
      // TODO
    });

  });
}
