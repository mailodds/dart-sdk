//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMessageEvents200Response {
  /// Returns a new [GetMessageEvents200Response] instance.
  GetMessageEvents200Response({
    this.schemaVersion,
    this.requestId,
    this.messageId,
    this.recipient,
    this.summary,
    this.clicks = const [],
    this.events = const [],
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetMessageEvents200ResponseSummary? summary;

  List<GetMessageEvents200ResponseClicksInner> clicks;

  List<GetMessageEvents200ResponseEventsInner> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMessageEvents200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.messageId == messageId &&
    other.recipient == recipient &&
    other.summary == summary &&
    _deepEquality.equals(other.clicks, clicks) &&
    _deepEquality.equals(other.events, events) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (clicks.hashCode) +
    (events.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'GetMessageEvents200Response[schemaVersion=$schemaVersion, requestId=$requestId, messageId=$messageId, recipient=$recipient, summary=$summary, clicks=$clicks, events=$events, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.requestId != null) {
      json[r'request_id'] = this.requestId;
    } else {
      json[r'request_id'] = null;
    }
    if (this.messageId != null) {
      json[r'message_id'] = this.messageId;
    } else {
      json[r'message_id'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'clicks'] = this.clicks;
      json[r'events'] = this.events;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [GetMessageEvents200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMessageEvents200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMessageEvents200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMessageEvents200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMessageEvents200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        messageId: mapValueOfType<String>(json, r'message_id'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        summary: GetMessageEvents200ResponseSummary.fromJson(json[r'summary']),
        clicks: GetMessageEvents200ResponseClicksInner.listFromJson(json[r'clicks']),
        events: GetMessageEvents200ResponseEventsInner.listFromJson(json[r'events']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<GetMessageEvents200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMessageEvents200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMessageEvents200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMessageEvents200Response> mapFromJson(dynamic json) {
    final map = <String, GetMessageEvents200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMessageEvents200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMessageEvents200Response-objects as value to a dart map
  static Map<String, List<GetMessageEvents200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMessageEvents200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMessageEvents200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

