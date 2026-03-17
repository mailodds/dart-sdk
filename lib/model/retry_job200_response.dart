//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class RetryJob200Response {
  /// Returns a new [RetryJob200Response] instance.
  RetryJob200Response({
    this.schemaVersion,
    this.requestId,
    this.job,
    this.pendingCount,
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
  Object? job;

  /// Number of emails re-queued
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetryJob200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.job == job &&
    other.pendingCount == pendingCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (job == null ? 0 : job!.hashCode) +
    (pendingCount == null ? 0 : pendingCount!.hashCode);

  @override
  String toString() => 'RetryJob200Response[schemaVersion=$schemaVersion, requestId=$requestId, job=$job, pendingCount=$pendingCount]';

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
    if (this.job != null) {
      json[r'job'] = this.job;
    } else {
      json[r'job'] = null;
    }
    if (this.pendingCount != null) {
      json[r'pending_count'] = this.pendingCount;
    } else {
      json[r'pending_count'] = null;
    }
    return json;
  }

  /// Returns a new [RetryJob200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetryJob200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetryJob200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetryJob200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetryJob200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        job: mapValueOfType<Object>(json, r'job'),
        pendingCount: mapValueOfType<int>(json, r'pending_count'),
      );
    }
    return null;
  }

  static List<RetryJob200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetryJob200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetryJob200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetryJob200Response> mapFromJson(dynamic json) {
    final map = <String, RetryJob200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetryJob200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetryJob200Response-objects as value to a dart map
  static Map<String, List<RetryJob200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetryJob200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetryJob200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

