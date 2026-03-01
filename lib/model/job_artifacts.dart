//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobArtifacts {
  /// Returns a new [JobArtifacts] instance.
  JobArtifacts({
    this.csvAll,
    this.csvValid,
    this.csvInvalid,
  });

  /// CSV with all results
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csvAll;

  /// CSV with valid emails only
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csvValid;

  /// CSV with invalid emails only
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csvInvalid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobArtifacts &&
    other.csvAll == csvAll &&
    other.csvValid == csvValid &&
    other.csvInvalid == csvInvalid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csvAll == null ? 0 : csvAll!.hashCode) +
    (csvValid == null ? 0 : csvValid!.hashCode) +
    (csvInvalid == null ? 0 : csvInvalid!.hashCode);

  @override
  String toString() => 'JobArtifacts[csvAll=$csvAll, csvValid=$csvValid, csvInvalid=$csvInvalid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csvAll != null) {
      json[r'csv_all'] = this.csvAll;
    } else {
      json[r'csv_all'] = null;
    }
    if (this.csvValid != null) {
      json[r'csv_valid'] = this.csvValid;
    } else {
      json[r'csv_valid'] = null;
    }
    if (this.csvInvalid != null) {
      json[r'csv_invalid'] = this.csvInvalid;
    } else {
      json[r'csv_invalid'] = null;
    }
    return json;
  }

  /// Returns a new [JobArtifacts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobArtifacts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobArtifacts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobArtifacts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobArtifacts(
        csvAll: mapValueOfType<String>(json, r'csv_all'),
        csvValid: mapValueOfType<String>(json, r'csv_valid'),
        csvInvalid: mapValueOfType<String>(json, r'csv_invalid'),
      );
    }
    return null;
  }

  static List<JobArtifacts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobArtifacts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobArtifacts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobArtifacts> mapFromJson(dynamic json) {
    final map = <String, JobArtifacts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobArtifacts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobArtifacts-objects as value to a dart map
  static Map<String, List<JobArtifacts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobArtifacts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobArtifacts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

