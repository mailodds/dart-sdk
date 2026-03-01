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

// tests for WebhookEvent
void main() {
  // final instance = WebhookEvent();

  group('test WebhookEvent', () {
    // Event type
    // String event
    test('to test the property `event`', () async {
      // TODO
    });

    // When the event occurred
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Job job
    test('to test the property `job`', () async {
      // TODO
    });

    // Message ID (present for message.* and delivery events)
    // String messageId
    test('to test the property `messageId`', () async {
      // TODO
    });

    // Account ID (present for delivery events)
    // int accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // Sending domain UUID (present for delivery events)
    // String domainId
    test('to test the property `domainId`', () async {
      // TODO
    });

    // Recipient email (present for delivery events)
    // String to
    test('to test the property `to`', () async {
      // TODO
    });

    // Delivery status (present for delivery events)
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // SMTP response code (present for bounced/deferred/failed)
    // int smtpCode
    test('to test the property `smtpCode`', () async {
      // TODO
    });

    // SMTP diagnostic string (present for bounced/deferred/failed)
    // String smtpResponse
    test('to test the property `smtpResponse`', () async {
      // TODO
    });

    // MX host that handled delivery
    // String mxHost
    test('to test the property `mxHost`', () async {
      // TODO
    });

    // Bounce classification (present for message.bounced)
    // String bounceType
    test('to test the property `bounceType`', () async {
      // TODO
    });

    // Enhanced SMTP status code (e.g., 5.1.1)
    // String enhancedStatusCode
    test('to test the property `enhancedStatusCode`', () async {
      // TODO
    });

    // Number of delivery attempts
    // int attempts
    test('to test the property `attempts`', () async {
      // TODO
    });

    // Receiving ISP name
    // String isp
    test('to test the property `isp`', () async {
      // TODO
    });

    // Whether the open was from Apple Mail Privacy Protection
    // bool isMpp
    test('to test the property `isMpp`', () async {
      // TODO
    });

    // Client IP (present for message.opened/clicked)
    // String ipAddress
    test('to test the property `ipAddress`', () async {
      // TODO
    });

    // Client user agent (present for message.opened/clicked)
    // String userAgent
    test('to test the property `userAgent`', () async {
      // TODO
    });

    // Whether the event was triggered by a bot (present for message.opened/clicked)
    // bool isBot
    test('to test the property `isBot`', () async {
      // TODO
    });

    // Clicked URL (present for message.clicked)
    // String linkUrl
    test('to test the property `linkUrl`', () async {
      // TODO
    });

    // Position of clicked link in message (present for message.clicked)
    // int linkIndex
    test('to test the property `linkIndex`', () async {
      // TODO
    });


  });

}
