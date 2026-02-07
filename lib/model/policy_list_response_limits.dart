//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyListResponseLimits {
  /// Returns a new [PolicyListResponseLimits] instance.
  PolicyListResponseLimits({
    this.maxPolicies,
    this.maxRulesPerPolicy,
    this.plan,
  });

  /// -1 means unlimited
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxPolicies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRulesPerPolicy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyListResponseLimits &&
    other.maxPolicies == maxPolicies &&
    other.maxRulesPerPolicy == maxRulesPerPolicy &&
    other.plan == plan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maxPolicies == null ? 0 : maxPolicies!.hashCode) +
    (maxRulesPerPolicy == null ? 0 : maxRulesPerPolicy!.hashCode) +
    (plan == null ? 0 : plan!.hashCode);

  @override
  String toString() => 'PolicyListResponseLimits[maxPolicies=$maxPolicies, maxRulesPerPolicy=$maxRulesPerPolicy, plan=$plan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maxPolicies != null) {
      json[r'max_policies'] = this.maxPolicies;
    } else {
      json[r'max_policies'] = null;
    }
    if (this.maxRulesPerPolicy != null) {
      json[r'max_rules_per_policy'] = this.maxRulesPerPolicy;
    } else {
      json[r'max_rules_per_policy'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    return json;
  }

  /// Returns a new [PolicyListResponseLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyListResponseLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyListResponseLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyListResponseLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyListResponseLimits(
        maxPolicies: mapValueOfType<int>(json, r'max_policies'),
        maxRulesPerPolicy: mapValueOfType<int>(json, r'max_rules_per_policy'),
        plan: mapValueOfType<String>(json, r'plan'),
      );
    }
    return null;
  }

  static List<PolicyListResponseLimits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyListResponseLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyListResponseLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyListResponseLimits> mapFromJson(dynamic json) {
    final map = <String, PolicyListResponseLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyListResponseLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyListResponseLimits-objects as value to a dart map
  static Map<String, List<PolicyListResponseLimits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyListResponseLimits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyListResponseLimits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

