//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestPolicyRequest {
  /// Returns a new [TestPolicyRequest] instance.
  TestPolicyRequest({
    required this.policyId,
    required this.testResult,
  });

  int policyId;

  TestPolicyRequestTestResult testResult;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestPolicyRequest &&
    other.policyId == policyId &&
    other.testResult == testResult;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (policyId.hashCode) +
    (testResult.hashCode);

  @override
  String toString() => 'TestPolicyRequest[policyId=$policyId, testResult=$testResult]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'policy_id'] = this.policyId;
      json[r'test_result'] = this.testResult;
    return json;
  }

  /// Returns a new [TestPolicyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestPolicyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestPolicyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestPolicyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestPolicyRequest(
        policyId: mapValueOfType<int>(json, r'policy_id')!,
        testResult: TestPolicyRequestTestResult.fromJson(json[r'test_result'])!,
      );
    }
    return null;
  }

  static List<TestPolicyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestPolicyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestPolicyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestPolicyRequest> mapFromJson(dynamic json) {
    final map = <String, TestPolicyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestPolicyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestPolicyRequest-objects as value to a dart map
  static Map<String, List<TestPolicyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestPolicyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestPolicyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'policy_id',
    'test_result',
  };
}

