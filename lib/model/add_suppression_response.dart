//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddSuppressionResponse {
  /// Returns a new [AddSuppressionResponse] instance.
  AddSuppressionResponse({
    this.schemaVersion,
    this.requestId,
    this.added,
    this.duplicates,
    this.invalid,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Unique request identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  /// Number of entries successfully added
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? added;

  /// Number of duplicate entries skipped
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duplicates;

  /// Number of invalid entries rejected
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invalid;

  /// Total entries in the request
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddSuppressionResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.added == added &&
    other.duplicates == duplicates &&
    other.invalid == invalid &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (added == null ? 0 : added!.hashCode) +
    (duplicates == null ? 0 : duplicates!.hashCode) +
    (invalid == null ? 0 : invalid!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'AddSuppressionResponse[schemaVersion=$schemaVersion, requestId=$requestId, added=$added, duplicates=$duplicates, invalid=$invalid, total=$total]';

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
    if (this.added != null) {
      json[r'added'] = this.added;
    } else {
      json[r'added'] = null;
    }
    if (this.duplicates != null) {
      json[r'duplicates'] = this.duplicates;
    } else {
      json[r'duplicates'] = null;
    }
    if (this.invalid != null) {
      json[r'invalid'] = this.invalid;
    } else {
      json[r'invalid'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [AddSuppressionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddSuppressionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddSuppressionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddSuppressionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddSuppressionResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        added: mapValueOfType<int>(json, r'added'),
        duplicates: mapValueOfType<int>(json, r'duplicates'),
        invalid: mapValueOfType<int>(json, r'invalid'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<AddSuppressionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddSuppressionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddSuppressionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddSuppressionResponse> mapFromJson(dynamic json) {
    final map = <String, AddSuppressionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddSuppressionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddSuppressionResponse-objects as value to a dart map
  static Map<String, List<AddSuppressionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddSuppressionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddSuppressionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

