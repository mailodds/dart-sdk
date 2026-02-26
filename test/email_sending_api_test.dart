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


/// tests for EmailSendingApi
void main() {
  // final instance = EmailSendingApi();

  group('tests for EmailSendingApi', () {
    // Send to multiple recipients (max 100)
    //
    // Send a single message to up to 100 recipients. Shares the same message body across all recipients. Each recipient is processed independently.
    //
    //Future<BatchDeliverResponse> deliverBatch(BatchDeliverRequest batchDeliverRequest) async
    test('test deliverBatch', () async {
      // TODO
    });

    // Send a single email
    //
    // Send a transactional email through the safety pipeline. Validates recipients, checks domain ownership, and queues for delivery. Requires a verified sending domain.
    //
    //Future<DeliverResponse> deliverEmail(DeliverRequest deliverRequest) async
    test('test deliverEmail', () async {
      // TODO
    });

  });
}
