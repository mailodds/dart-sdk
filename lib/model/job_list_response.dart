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
    this.requestId,
    this.data = const [],
    this.nextCursor,
    this.hasMore,
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

  /// List of jobs
  List<Job> data;

  /// Cursor for next page. Null when no more results.
  String? nextCursor;

  /// Whether more results exist beyond this page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobListResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    _deepEquality.equals(other.data, data) &&
    other.nextCursor == nextCursor &&
    other.hasMore == hasMore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (data.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (hasMore == null ? 0 : hasMore!.hashCode);

  @override
  String toString() => 'JobListResponse[schemaVersion=$schemaVersion, requestId=$requestId, data=$data, nextCursor=$nextCursor, hasMore=$hasMore]';

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
      json[r'data'] = this.data;
    if (this.nextCursor != null) {
      json[r'next_cursor'] = this.nextCursor;
    } else {
      json[r'next_cursor'] = null;
    }
    if (this.hasMore != null) {
      json[r'has_more'] = this.hasMore;
    } else {
      json[r'has_more'] = null;
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
        requestId: mapValueOfType<String>(json, r'request_id'),
        data: Job.listFromJson(json[r'data']),
        nextCursor: mapValueOfType<String>(json, r'next_cursor'),
        hasMore: mapValueOfType<bool>(json, r'has_more'),
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

