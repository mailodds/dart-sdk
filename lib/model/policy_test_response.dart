//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyTestResponse {
  /// Returns a new [PolicyTestResponse] instance.
  PolicyTestResponse({
    this.schemaVersion,
    this.original,
    this.modified,
    this.matchedRule,
    this.rulesEvaluated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Original validation result before policy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? original;

  /// Result after policy applied
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? modified;

  /// The rule that matched, or null if none matched
  Object? matchedRule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rulesEvaluated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyTestResponse &&
    other.schemaVersion == schemaVersion &&
    other.original == original &&
    other.modified == modified &&
    other.matchedRule == matchedRule &&
    other.rulesEvaluated == rulesEvaluated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (original == null ? 0 : original!.hashCode) +
    (modified == null ? 0 : modified!.hashCode) +
    (matchedRule == null ? 0 : matchedRule!.hashCode) +
    (rulesEvaluated == null ? 0 : rulesEvaluated!.hashCode);

  @override
  String toString() => 'PolicyTestResponse[schemaVersion=$schemaVersion, original=$original, modified=$modified, matchedRule=$matchedRule, rulesEvaluated=$rulesEvaluated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.original != null) {
      json[r'original'] = this.original;
    } else {
      json[r'original'] = null;
    }
    if (this.modified != null) {
      json[r'modified'] = this.modified;
    } else {
      json[r'modified'] = null;
    }
    if (this.matchedRule != null) {
      json[r'matched_rule'] = this.matchedRule;
    } else {
      json[r'matched_rule'] = null;
    }
    if (this.rulesEvaluated != null) {
      json[r'rules_evaluated'] = this.rulesEvaluated;
    } else {
      json[r'rules_evaluated'] = null;
    }
    return json;
  }

  /// Returns a new [PolicyTestResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyTestResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyTestResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyTestResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyTestResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        original: mapValueOfType<Object>(json, r'original'),
        modified: mapValueOfType<Object>(json, r'modified'),
        matchedRule: mapValueOfType<Object>(json, r'matched_rule'),
        rulesEvaluated: mapValueOfType<int>(json, r'rules_evaluated'),
      );
    }
    return null;
  }

  static List<PolicyTestResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyTestResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyTestResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyTestResponse> mapFromJson(dynamic json) {
    final map = <String, PolicyTestResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyTestResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyTestResponse-objects as value to a dart map
  static Map<String, List<PolicyTestResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyTestResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyTestResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

