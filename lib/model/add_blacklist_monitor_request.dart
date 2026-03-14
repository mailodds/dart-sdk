//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddBlacklistMonitorRequest {
  /// Returns a new [AddBlacklistMonitorRequest] instance.
  AddBlacklistMonitorRequest({
    required this.target,
    required this.targetType,
  });

  /// IP address or domain to monitor
  String target;

  /// Whether the target is an IP or domain
  AddBlacklistMonitorRequestTargetTypeEnum targetType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddBlacklistMonitorRequest &&
    other.target == target &&
    other.targetType == targetType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (target.hashCode) +
    (targetType.hashCode);

  @override
  String toString() => 'AddBlacklistMonitorRequest[target=$target, targetType=$targetType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'target'] = this.target;
      json[r'target_type'] = this.targetType;
    return json;
  }

  /// Returns a new [AddBlacklistMonitorRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddBlacklistMonitorRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddBlacklistMonitorRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddBlacklistMonitorRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddBlacklistMonitorRequest(
        target: mapValueOfType<String>(json, r'target')!,
        targetType: AddBlacklistMonitorRequestTargetTypeEnum.fromJson(json[r'target_type'])!,
      );
    }
    return null;
  }

  static List<AddBlacklistMonitorRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddBlacklistMonitorRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddBlacklistMonitorRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddBlacklistMonitorRequest> mapFromJson(dynamic json) {
    final map = <String, AddBlacklistMonitorRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddBlacklistMonitorRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddBlacklistMonitorRequest-objects as value to a dart map
  static Map<String, List<AddBlacklistMonitorRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddBlacklistMonitorRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddBlacklistMonitorRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'target',
    'target_type',
  };
}

/// Whether the target is an IP or domain
class AddBlacklistMonitorRequestTargetTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AddBlacklistMonitorRequestTargetTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ip = AddBlacklistMonitorRequestTargetTypeEnum._(r'ip');
  static const domain = AddBlacklistMonitorRequestTargetTypeEnum._(r'domain');

  /// List of all possible values in this [enum][AddBlacklistMonitorRequestTargetTypeEnum].
  static const values = <AddBlacklistMonitorRequestTargetTypeEnum>[
    ip,
    domain,
  ];

  static AddBlacklistMonitorRequestTargetTypeEnum? fromJson(dynamic value) => AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer().decode(value);

  static List<AddBlacklistMonitorRequestTargetTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddBlacklistMonitorRequestTargetTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddBlacklistMonitorRequestTargetTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddBlacklistMonitorRequestTargetTypeEnum] to String,
/// and [decode] dynamic data back to [AddBlacklistMonitorRequestTargetTypeEnum].
class AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer {
  factory AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer() => _instance ??= const AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer._();

  const AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer._();

  String encode(AddBlacklistMonitorRequestTargetTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddBlacklistMonitorRequestTargetTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddBlacklistMonitorRequestTargetTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ip': return AddBlacklistMonitorRequestTargetTypeEnum.ip;
        case r'domain': return AddBlacklistMonitorRequestTargetTypeEnum.domain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer] instance.
  static AddBlacklistMonitorRequestTargetTypeEnumTypeTransformer? _instance;
}


