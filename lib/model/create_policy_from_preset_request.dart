//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePolicyFromPresetRequest {
  /// Returns a new [CreatePolicyFromPresetRequest] instance.
  CreatePolicyFromPresetRequest({
    required this.presetId,
    required this.name,
    this.isDefault = false,
  });

  CreatePolicyFromPresetRequestPresetIdEnum presetId;

  String name;

  bool isDefault;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePolicyFromPresetRequest &&
    other.presetId == presetId &&
    other.name == name &&
    other.isDefault == isDefault;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (presetId.hashCode) +
    (name.hashCode) +
    (isDefault.hashCode);

  @override
  String toString() => 'CreatePolicyFromPresetRequest[presetId=$presetId, name=$name, isDefault=$isDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'preset_id'] = this.presetId;
      json[r'name'] = this.name;
      json[r'is_default'] = this.isDefault;
    return json;
  }

  /// Returns a new [CreatePolicyFromPresetRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePolicyFromPresetRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePolicyFromPresetRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePolicyFromPresetRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePolicyFromPresetRequest(
        presetId: CreatePolicyFromPresetRequestPresetIdEnum.fromJson(json[r'preset_id'])!,
        name: mapValueOfType<String>(json, r'name')!,
        isDefault: mapValueOfType<bool>(json, r'is_default') ?? false,
      );
    }
    return null;
  }

  static List<CreatePolicyFromPresetRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyFromPresetRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyFromPresetRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePolicyFromPresetRequest> mapFromJson(dynamic json) {
    final map = <String, CreatePolicyFromPresetRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePolicyFromPresetRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePolicyFromPresetRequest-objects as value to a dart map
  static Map<String, List<CreatePolicyFromPresetRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePolicyFromPresetRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePolicyFromPresetRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'preset_id',
    'name',
  };
}


class CreatePolicyFromPresetRequestPresetIdEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyFromPresetRequestPresetIdEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const strict = CreatePolicyFromPresetRequestPresetIdEnum._(r'strict');
  static const permissive = CreatePolicyFromPresetRequestPresetIdEnum._(r'permissive');
  static const smtpRequired = CreatePolicyFromPresetRequestPresetIdEnum._(r'smtp_required');

  /// List of all possible values in this [enum][CreatePolicyFromPresetRequestPresetIdEnum].
  static const values = <CreatePolicyFromPresetRequestPresetIdEnum>[
    strict,
    permissive,
    smtpRequired,
  ];

  static CreatePolicyFromPresetRequestPresetIdEnum? fromJson(dynamic value) => CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer().decode(value);

  static List<CreatePolicyFromPresetRequestPresetIdEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyFromPresetRequestPresetIdEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyFromPresetRequestPresetIdEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyFromPresetRequestPresetIdEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyFromPresetRequestPresetIdEnum].
class CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer {
  factory CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer() => _instance ??= const CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer._();

  const CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer._();

  String encode(CreatePolicyFromPresetRequestPresetIdEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyFromPresetRequestPresetIdEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyFromPresetRequestPresetIdEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'strict': return CreatePolicyFromPresetRequestPresetIdEnum.strict;
        case r'permissive': return CreatePolicyFromPresetRequestPresetIdEnum.permissive;
        case r'smtp_required': return CreatePolicyFromPresetRequestPresetIdEnum.smtpRequired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer] instance.
  static CreatePolicyFromPresetRequestPresetIdEnumTypeTransformer? _instance;
}


