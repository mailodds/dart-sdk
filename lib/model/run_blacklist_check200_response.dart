//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RunBlacklistCheck200Response {
  /// Returns a new [RunBlacklistCheck200Response] instance.
  RunBlacklistCheck200Response({
    this.schemaVersion,
    this.requestId,
    this.monitor,
    this.check,
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
  BlacklistMonitor? monitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RunBlacklistCheck200ResponseCheck? check;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunBlacklistCheck200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.monitor == monitor &&
    other.check == check;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (monitor == null ? 0 : monitor!.hashCode) +
    (check == null ? 0 : check!.hashCode);

  @override
  String toString() => 'RunBlacklistCheck200Response[schemaVersion=$schemaVersion, requestId=$requestId, monitor=$monitor, check=$check]';

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
    if (this.monitor != null) {
      json[r'monitor'] = this.monitor;
    } else {
      json[r'monitor'] = null;
    }
    if (this.check != null) {
      json[r'check'] = this.check;
    } else {
      json[r'check'] = null;
    }
    return json;
  }

  /// Returns a new [RunBlacklistCheck200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunBlacklistCheck200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunBlacklistCheck200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunBlacklistCheck200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunBlacklistCheck200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        monitor: BlacklistMonitor.fromJson(json[r'monitor']),
        check: RunBlacklistCheck200ResponseCheck.fromJson(json[r'check']),
      );
    }
    return null;
  }

  static List<RunBlacklistCheck200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunBlacklistCheck200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunBlacklistCheck200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunBlacklistCheck200Response> mapFromJson(dynamic json) {
    final map = <String, RunBlacklistCheck200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunBlacklistCheck200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunBlacklistCheck200Response-objects as value to a dart map
  static Map<String, List<RunBlacklistCheck200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunBlacklistCheck200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunBlacklistCheck200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

