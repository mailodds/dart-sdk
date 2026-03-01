//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateBatch200ResponseSummary {
  /// Returns a new [ValidateBatch200ResponseSummary] instance.
  ValidateBatch200ResponseSummary({
    this.valid,
    this.invalid,
    this.catchAll,
    this.unknown,
    this.doNotMail,
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
  int? catchAll;

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
  int? doNotMail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateBatch200ResponseSummary &&
    other.valid == valid &&
    other.invalid == invalid &&
    other.catchAll == catchAll &&
    other.unknown == unknown &&
    other.doNotMail == doNotMail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (invalid == null ? 0 : invalid!.hashCode) +
    (catchAll == null ? 0 : catchAll!.hashCode) +
    (unknown == null ? 0 : unknown!.hashCode) +
    (doNotMail == null ? 0 : doNotMail!.hashCode);

  @override
  String toString() => 'ValidateBatch200ResponseSummary[valid=$valid, invalid=$invalid, catchAll=$catchAll, unknown=$unknown, doNotMail=$doNotMail]';

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
    if (this.catchAll != null) {
      json[r'catch_all'] = this.catchAll;
    } else {
      json[r'catch_all'] = null;
    }
    if (this.unknown != null) {
      json[r'unknown'] = this.unknown;
    } else {
      json[r'unknown'] = null;
    }
    if (this.doNotMail != null) {
      json[r'do_not_mail'] = this.doNotMail;
    } else {
      json[r'do_not_mail'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateBatch200ResponseSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateBatch200ResponseSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateBatch200ResponseSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateBatch200ResponseSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateBatch200ResponseSummary(
        valid: mapValueOfType<int>(json, r'valid'),
        invalid: mapValueOfType<int>(json, r'invalid'),
        catchAll: mapValueOfType<int>(json, r'catch_all'),
        unknown: mapValueOfType<int>(json, r'unknown'),
        doNotMail: mapValueOfType<int>(json, r'do_not_mail'),
      );
    }
    return null;
  }

  static List<ValidateBatch200ResponseSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateBatch200ResponseSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateBatch200ResponseSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateBatch200ResponseSummary> mapFromJson(dynamic json) {
    final map = <String, ValidateBatch200ResponseSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateBatch200ResponseSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateBatch200ResponseSummary-objects as value to a dart map
  static Map<String, List<ValidateBatch200ResponseSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateBatch200ResponseSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateBatch200ResponseSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

