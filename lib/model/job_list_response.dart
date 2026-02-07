//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobListResponse {
  /// Returns a new [JobListResponse] instance.
  JobListResponse({
    this.schemaVersion,
    this.jobs = const [],
    this.pagination,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  List<Job> jobs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Pagination? pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobListResponse &&
    other.schemaVersion == schemaVersion &&
    _deepEquality.equals(other.jobs, jobs) &&
    other.pagination == pagination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (jobs.hashCode) +
    (pagination == null ? 0 : pagination!.hashCode);

  @override
  String toString() => 'JobListResponse[schemaVersion=$schemaVersion, jobs=$jobs, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
      json[r'jobs'] = this.jobs;
    if (this.pagination != null) {
      json[r'pagination'] = this.pagination;
    } else {
      json[r'pagination'] = null;
    }
    return json;
  }

  /// Returns a new [JobListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobListResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        jobs: Job.listFromJson(json[r'jobs']),
        pagination: Pagination.fromJson(json[r'pagination']),
      );
    }
    return null;
  }

  static List<JobListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobListResponse> mapFromJson(dynamic json) {
    final map = <String, JobListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobListResponse-objects as value to a dart map
  static Map<String, List<JobListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

