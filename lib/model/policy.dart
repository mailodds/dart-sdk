//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Policy {
  /// Returns a new [Policy] instance.
  Policy({
    this.id,
    this.name,
    this.description,
    this.isDefault,
    this.isEnabled,
    this.priority,
    this.ruleCount,
    this.rules = const [],
    this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ruleCount;

  List<PolicyRule> rules;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Policy &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.isDefault == isDefault &&
    other.isEnabled == isEnabled &&
    other.priority == priority &&
    other.ruleCount == ruleCount &&
    _deepEquality.equals(other.rules, rules) &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (isEnabled == null ? 0 : isEnabled!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (ruleCount == null ? 0 : ruleCount!.hashCode) +
    (rules.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'Policy[id=$id, name=$name, description=$description, isDefault=$isDefault, isEnabled=$isEnabled, priority=$priority, ruleCount=$ruleCount, rules=$rules, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.isDefault != null) {
      json[r'is_default'] = this.isDefault;
    } else {
      json[r'is_default'] = null;
    }
    if (this.isEnabled != null) {
      json[r'is_enabled'] = this.isEnabled;
    } else {
      json[r'is_enabled'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.ruleCount != null) {
      json[r'rule_count'] = this.ruleCount;
    } else {
      json[r'rule_count'] = null;
    }
      json[r'rules'] = this.rules;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [Policy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Policy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Policy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Policy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Policy(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        isDefault: mapValueOfType<bool>(json, r'is_default'),
        isEnabled: mapValueOfType<bool>(json, r'is_enabled'),
        priority: mapValueOfType<int>(json, r'priority'),
        ruleCount: mapValueOfType<int>(json, r'rule_count'),
        rules: PolicyRule.listFromJson(json[r'rules']),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<Policy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Policy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Policy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Policy> mapFromJson(dynamic json) {
    final map = <String, Policy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Policy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Policy-objects as value to a dart map
  static Map<String, List<Policy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Policy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Policy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

