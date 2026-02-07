//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddSuppressionRequestEntriesInner {
  /// Returns a new [AddSuppressionRequestEntriesInner] instance.
  AddSuppressionRequestEntriesInner({
    required this.type,
    required this.value,
    this.reason,
  });

  AddSuppressionRequestEntriesInnerTypeEnum type;

  String value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddSuppressionRequestEntriesInner &&
    other.type == type &&
    other.value == value &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (value.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'AddSuppressionRequestEntriesInner[type=$type, value=$value, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'value'] = this.value;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [AddSuppressionRequestEntriesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddSuppressionRequestEntriesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddSuppressionRequestEntriesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddSuppressionRequestEntriesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddSuppressionRequestEntriesInner(
        type: AddSuppressionRequestEntriesInnerTypeEnum.fromJson(json[r'type'])!,
        value: mapValueOfType<String>(json, r'value')!,
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<AddSuppressionRequestEntriesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddSuppressionRequestEntriesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddSuppressionRequestEntriesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddSuppressionRequestEntriesInner> mapFromJson(dynamic json) {
    final map = <String, AddSuppressionRequestEntriesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddSuppressionRequestEntriesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddSuppressionRequestEntriesInner-objects as value to a dart map
  static Map<String, List<AddSuppressionRequestEntriesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddSuppressionRequestEntriesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddSuppressionRequestEntriesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'value',
  };
}


class AddSuppressionRequestEntriesInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AddSuppressionRequestEntriesInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = AddSuppressionRequestEntriesInnerTypeEnum._(r'email');
  static const domain = AddSuppressionRequestEntriesInnerTypeEnum._(r'domain');

  /// List of all possible values in this [enum][AddSuppressionRequestEntriesInnerTypeEnum].
  static const values = <AddSuppressionRequestEntriesInnerTypeEnum>[
    email,
    domain,
  ];

  static AddSuppressionRequestEntriesInnerTypeEnum? fromJson(dynamic value) => AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer().decode(value);

  static List<AddSuppressionRequestEntriesInnerTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddSuppressionRequestEntriesInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddSuppressionRequestEntriesInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddSuppressionRequestEntriesInnerTypeEnum] to String,
/// and [decode] dynamic data back to [AddSuppressionRequestEntriesInnerTypeEnum].
class AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer {
  factory AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer() => _instance ??= const AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer._();

  const AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer._();

  String encode(AddSuppressionRequestEntriesInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddSuppressionRequestEntriesInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddSuppressionRequestEntriesInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email': return AddSuppressionRequestEntriesInnerTypeEnum.email;
        case r'domain': return AddSuppressionRequestEntriesInnerTypeEnum.domain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer] instance.
  static AddSuppressionRequestEntriesInnerTypeEnumTypeTransformer? _instance;
}


