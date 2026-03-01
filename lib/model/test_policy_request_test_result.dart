//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestPolicyRequestTestResult {
  /// Returns a new [TestPolicyRequestTestResult] instance.
  TestPolicyRequestTestResult({
    this.email,
    this.status,
    this.action,
    this.domain,
    this.subStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestPolicyRequestTestResult &&
    other.email == email &&
    other.status == status &&
    other.action == action &&
    other.domain == domain &&
    other.subStatus == subStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (subStatus == null ? 0 : subStatus!.hashCode);

  @override
  String toString() => 'TestPolicyRequestTestResult[email=$email, status=$status, action=$action, domain=$domain, subStatus=$subStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.subStatus != null) {
      json[r'sub_status'] = this.subStatus;
    } else {
      json[r'sub_status'] = null;
    }
    return json;
  }

  /// Returns a new [TestPolicyRequestTestResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestPolicyRequestTestResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestPolicyRequestTestResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestPolicyRequestTestResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestPolicyRequestTestResult(
        email: mapValueOfType<String>(json, r'email'),
        status: mapValueOfType<String>(json, r'status'),
        action: mapValueOfType<String>(json, r'action'),
        domain: mapValueOfType<String>(json, r'domain'),
        subStatus: mapValueOfType<String>(json, r'sub_status'),
      );
    }
    return null;
  }

  static List<TestPolicyRequestTestResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestPolicyRequestTestResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestPolicyRequestTestResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestPolicyRequestTestResult> mapFromJson(dynamic json) {
    final map = <String, TestPolicyRequestTestResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestPolicyRequestTestResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestPolicyRequestTestResult-objects as value to a dart map
  static Map<String, List<TestPolicyRequestTestResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestPolicyRequestTestResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestPolicyRequestTestResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

