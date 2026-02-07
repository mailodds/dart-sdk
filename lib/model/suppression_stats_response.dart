//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuppressionStatsResponse {
  /// Returns a new [SuppressionStatsResponse] instance.
  SuppressionStatsResponse({
    this.schemaVersion,
    this.total,
    this.byType,
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
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SuppressionStatsResponseByType? byType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuppressionStatsResponse &&
    other.schemaVersion == schemaVersion &&
    other.total == total &&
    other.byType == byType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (byType == null ? 0 : byType!.hashCode);

  @override
  String toString() => 'SuppressionStatsResponse[schemaVersion=$schemaVersion, total=$total, byType=$byType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.byType != null) {
      json[r'by_type'] = this.byType;
    } else {
      json[r'by_type'] = null;
    }
    return json;
  }

  /// Returns a new [SuppressionStatsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuppressionStatsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuppressionStatsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuppressionStatsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuppressionStatsResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        total: mapValueOfType<int>(json, r'total'),
        byType: SuppressionStatsResponseByType.fromJson(json[r'by_type']),
      );
    }
    return null;
  }

  static List<SuppressionStatsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressionStatsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressionStatsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuppressionStatsResponse> mapFromJson(dynamic json) {
    final map = <String, SuppressionStatsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuppressionStatsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuppressionStatsResponse-objects as value to a dart map
  static Map<String, List<SuppressionStatsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuppressionStatsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuppressionStatsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

