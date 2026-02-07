//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobResponse {
  /// Returns a new [JobResponse] instance.
  JobResponse({
    this.schemaVersion,
    this.job,
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
  Job? job;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobResponse &&
    other.schemaVersion == schemaVersion &&
    other.job == job;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (job == null ? 0 : job!.hashCode);

  @override
  String toString() => 'JobResponse[schemaVersion=$schemaVersion, job=$job]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.job != null) {
      json[r'job'] = this.job;
    } else {
      json[r'job'] = null;
    }
    return json;
  }

  /// Returns a new [JobResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        job: Job.fromJson(json[r'job']),
      );
    }
    return null;
  }

  static List<JobResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobResponse> mapFromJson(dynamic json) {
    final map = <String, JobResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobResponse-objects as value to a dart map
  static Map<String, List<JobResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

