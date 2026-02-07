//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JobSummary {
  /// Returns a new [JobSummary] instance.
  JobSummary({
    this.valid,
    this.invalid,
    this.doNotMail,
    this.unknown,
    this.cancelledPending,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invalid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? doNotMail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unknown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cancelledPending;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobSummary &&
    other.valid == valid &&
    other.invalid == invalid &&
    other.doNotMail == doNotMail &&
    other.unknown == unknown &&
    other.cancelledPending == cancelledPending;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (invalid == null ? 0 : invalid!.hashCode) +
    (doNotMail == null ? 0 : doNotMail!.hashCode) +
    (unknown == null ? 0 : unknown!.hashCode) +
    (cancelledPending == null ? 0 : cancelledPending!.hashCode);

  @override
  String toString() => 'JobSummary[valid=$valid, invalid=$invalid, doNotMail=$doNotMail, unknown=$unknown, cancelledPending=$cancelledPending]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.invalid != null) {
      json[r'invalid'] = this.invalid;
    } else {
      json[r'invalid'] = null;
    }
    if (this.doNotMail != null) {
      json[r'do_not_mail'] = this.doNotMail;
    } else {
      json[r'do_not_mail'] = null;
    }
    if (this.unknown != null) {
      json[r'unknown'] = this.unknown;
    } else {
      json[r'unknown'] = null;
    }
    if (this.cancelledPending != null) {
      json[r'cancelled_pending'] = this.cancelledPending;
    } else {
      json[r'cancelled_pending'] = null;
    }
    return json;
  }

  /// Returns a new [JobSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobSummary(
        valid: mapValueOfType<int>(json, r'valid'),
        invalid: mapValueOfType<int>(json, r'invalid'),
        doNotMail: mapValueOfType<int>(json, r'do_not_mail'),
        unknown: mapValueOfType<int>(json, r'unknown'),
        cancelledPending: mapValueOfType<int>(json, r'cancelled_pending'),
      );
    }
    return null;
  }

  static List<JobSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobSummary> mapFromJson(dynamic json) {
    final map = <String, JobSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobSummary-objects as value to a dart map
  static Map<String, List<JobSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

