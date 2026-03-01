//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePolicyRequest {
  /// Returns a new [CreatePolicyRequest] instance.
  CreatePolicyRequest({
    required this.name,
    this.description,
    this.isDefault = false,
    this.rules = const [],
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  bool isDefault;

  List<PolicyRule> rules;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePolicyRequest &&
    other.name == name &&
    other.description == description &&
    other.isDefault == isDefault &&
    _deepEquality.equals(other.rules, rules);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isDefault.hashCode) +
    (rules.hashCode);

  @override
  String toString() => 'CreatePolicyRequest[name=$name, description=$description, isDefault=$isDefault, rules=$rules]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'is_default'] = this.isDefault;
      json[r'rules'] = this.rules;
    return json;
  }

  /// Returns a new [CreatePolicyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePolicyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePolicyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePolicyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePolicyRequest(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        isDefault: mapValueOfType<bool>(json, r'is_default') ?? false,
        rules: PolicyRule.listFromJson(json[r'rules']),
      );
    }
    return null;
  }

  static List<CreatePolicyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePolicyRequest> mapFromJson(dynamic json) {
    final map = <String, CreatePolicyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePolicyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePolicyRequest-objects as value to a dart map
  static Map<String, List<CreatePolicyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePolicyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePolicyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

