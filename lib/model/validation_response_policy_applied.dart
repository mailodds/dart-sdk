//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationResponsePolicyApplied {
  /// Returns a new [ValidationResponsePolicyApplied] instance.
  ValidationResponsePolicyApplied({
    this.policyId,
    this.policyName,
    this.ruleId,
    this.ruleType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? policyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ruleId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationResponsePolicyApplied &&
    other.policyId == policyId &&
    other.policyName == policyName &&
    other.ruleId == ruleId &&
    other.ruleType == ruleType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (policyId == null ? 0 : policyId!.hashCode) +
    (policyName == null ? 0 : policyName!.hashCode) +
    (ruleId == null ? 0 : ruleId!.hashCode) +
    (ruleType == null ? 0 : ruleType!.hashCode);

  @override
  String toString() => 'ValidationResponsePolicyApplied[policyId=$policyId, policyName=$policyName, ruleId=$ruleId, ruleType=$ruleType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.policyId != null) {
      json[r'policy_id'] = this.policyId;
    } else {
      json[r'policy_id'] = null;
    }
    if (this.policyName != null) {
      json[r'policy_name'] = this.policyName;
    } else {
      json[r'policy_name'] = null;
    }
    if (this.ruleId != null) {
      json[r'rule_id'] = this.ruleId;
    } else {
      json[r'rule_id'] = null;
    }
    if (this.ruleType != null) {
      json[r'rule_type'] = this.ruleType;
    } else {
      json[r'rule_type'] = null;
    }
    return json;
  }

  /// Returns a new [ValidationResponsePolicyApplied] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationResponsePolicyApplied? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationResponsePolicyApplied[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationResponsePolicyApplied[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationResponsePolicyApplied(
        policyId: mapValueOfType<int>(json, r'policy_id'),
        policyName: mapValueOfType<String>(json, r'policy_name'),
        ruleId: mapValueOfType<int>(json, r'rule_id'),
        ruleType: mapValueOfType<String>(json, r'rule_type'),
      );
    }
    return null;
  }

  static List<ValidationResponsePolicyApplied> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponsePolicyApplied>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponsePolicyApplied.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationResponsePolicyApplied> mapFromJson(dynamic json) {
    final map = <String, ValidationResponsePolicyApplied>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationResponsePolicyApplied.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationResponsePolicyApplied-objects as value to a dart map
  static Map<String, List<ValidationResponsePolicyApplied>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationResponsePolicyApplied>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationResponsePolicyApplied.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

