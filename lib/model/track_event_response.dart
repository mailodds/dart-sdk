//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackEventResponse {
  /// Returns a new [TrackEventResponse] instance.
  TrackEventResponse({
    this.schemaVersion,
    this.requestId,
    this.eventId,
    this.created,
    this.idempotent,
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

  /// Event ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? eventId;

  /// True if newly created, false if idempotent duplicate
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// Present and true when returning an existing event
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idempotent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackEventResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.eventId == eventId &&
    other.created == created &&
    other.idempotent == idempotent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (eventId == null ? 0 : eventId!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (idempotent == null ? 0 : idempotent!.hashCode);

  @override
  String toString() => 'TrackEventResponse[schemaVersion=$schemaVersion, requestId=$requestId, eventId=$eventId, created=$created, idempotent=$idempotent]';

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
    if (this.eventId != null) {
      json[r'event_id'] = this.eventId;
    } else {
      json[r'event_id'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.idempotent != null) {
      json[r'idempotent'] = this.idempotent;
    } else {
      json[r'idempotent'] = null;
    }
    return json;
  }

  /// Returns a new [TrackEventResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackEventResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackEventResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackEventResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackEventResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        eventId: mapValueOfType<int>(json, r'event_id'),
        created: mapValueOfType<bool>(json, r'created'),
        idempotent: mapValueOfType<bool>(json, r'idempotent'),
      );
    }
    return null;
  }

  static List<TrackEventResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackEventResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackEventResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackEventResponse> mapFromJson(dynamic json) {
    final map = <String, TrackEventResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackEventResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackEventResponse-objects as value to a dart map
  static Map<String, List<TrackEventResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackEventResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackEventResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

