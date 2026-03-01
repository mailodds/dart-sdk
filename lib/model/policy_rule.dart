//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyRule {
  /// Returns a new [PolicyRule] instance.
  PolicyRule({
    this.id,
    required this.type,
    required this.condition,
    required this.action,
    this.sequence,
    this.isEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Rule type determines how condition is evaluated
  PolicyRuleTypeEnum type;

  /// Condition depends on rule type. status_override: {status}, domain_filter: {domain_mode, domains}, check_requirement: {check, required}, sub_status_override: {sub_status}
  Object condition;

  PolicyRuleAction action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyRule &&
    other.id == id &&
    other.type == type &&
    other.condition == condition &&
    other.action == action &&
    other.sequence == sequence &&
    other.isEnabled == isEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type.hashCode) +
    (condition.hashCode) +
    (action.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (isEnabled == null ? 0 : isEnabled!.hashCode);

  @override
  String toString() => 'PolicyRule[id=$id, type=$type, condition=$condition, action=$action, sequence=$sequence, isEnabled=$isEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'type'] = this.type;
      json[r'condition'] = this.condition;
      json[r'action'] = this.action;
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
    if (this.isEnabled != null) {
      json[r'is_enabled'] = this.isEnabled;
    } else {
      json[r'is_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [PolicyRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyRule(
        id: mapValueOfType<int>(json, r'id'),
        type: PolicyRuleTypeEnum.fromJson(json[r'type'])!,
        condition: mapValueOfType<Object>(json, r'condition')!,
        action: PolicyRuleAction.fromJson(json[r'action'])!,
        sequence: mapValueOfType<int>(json, r'sequence'),
        isEnabled: mapValueOfType<bool>(json, r'is_enabled'),
      );
    }
    return null;
  }

  static List<PolicyRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyRule> mapFromJson(dynamic json) {
    final map = <String, PolicyRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyRule-objects as value to a dart map
  static Map<String, List<PolicyRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'condition',
    'action',
  };
}

/// Rule type determines how condition is evaluated
class PolicyRuleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyRuleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const statusOverride = PolicyRuleTypeEnum._(r'status_override');
  static const domainFilter = PolicyRuleTypeEnum._(r'domain_filter');
  static const checkRequirement = PolicyRuleTypeEnum._(r'check_requirement');
  static const subStatusOverride = PolicyRuleTypeEnum._(r'sub_status_override');

  /// List of all possible values in this [enum][PolicyRuleTypeEnum].
  static const values = <PolicyRuleTypeEnum>[
    statusOverride,
    domainFilter,
    checkRequirement,
    subStatusOverride,
  ];

  static PolicyRuleTypeEnum? fromJson(dynamic value) => PolicyRuleTypeEnumTypeTransformer().decode(value);

  static List<PolicyRuleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyRuleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyRuleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyRuleTypeEnum] to String,
/// and [decode] dynamic data back to [PolicyRuleTypeEnum].
class PolicyRuleTypeEnumTypeTransformer {
  factory PolicyRuleTypeEnumTypeTransformer() => _instance ??= const PolicyRuleTypeEnumTypeTransformer._();

  const PolicyRuleTypeEnumTypeTransformer._();

  String encode(PolicyRuleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyRuleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyRuleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'status_override': return PolicyRuleTypeEnum.statusOverride;
        case r'domain_filter': return PolicyRuleTypeEnum.domainFilter;
        case r'check_requirement': return PolicyRuleTypeEnum.checkRequirement;
        case r'sub_status_override': return PolicyRuleTypeEnum.subStatusOverride;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyRuleTypeEnumTypeTransformer] instance.
  static PolicyRuleTypeEnumTypeTransformer? _instance;
}


