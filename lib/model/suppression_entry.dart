//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuppressionEntry {
  /// Returns a new [SuppressionEntry] instance.
  SuppressionEntry({
    this.id,
    this.type,
    this.value,
    this.reason,
    this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  SuppressionEntryTypeEnum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuppressionEntry &&
    other.id == id &&
    other.type == type &&
    other.value == value &&
    other.reason == reason &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'SuppressionEntry[id=$id, type=$type, value=$value, reason=$reason, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [SuppressionEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuppressionEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuppressionEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuppressionEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuppressionEntry(
        id: mapValueOfType<int>(json, r'id'),
        type: SuppressionEntryTypeEnum.fromJson(json[r'type']),
        value: mapValueOfType<String>(json, r'value'),
        reason: mapValueOfType<String>(json, r'reason'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<SuppressionEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressionEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressionEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuppressionEntry> mapFromJson(dynamic json) {
    final map = <String, SuppressionEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuppressionEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuppressionEntry-objects as value to a dart map
  static Map<String, List<SuppressionEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuppressionEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuppressionEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SuppressionEntryTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SuppressionEntryTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = SuppressionEntryTypeEnum._(r'email');
  static const domain = SuppressionEntryTypeEnum._(r'domain');

  /// List of all possible values in this [enum][SuppressionEntryTypeEnum].
  static const values = <SuppressionEntryTypeEnum>[
    email,
    domain,
  ];

  static SuppressionEntryTypeEnum? fromJson(dynamic value) => SuppressionEntryTypeEnumTypeTransformer().decode(value);

  static List<SuppressionEntryTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressionEntryTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressionEntryTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SuppressionEntryTypeEnum] to String,
/// and [decode] dynamic data back to [SuppressionEntryTypeEnum].
class SuppressionEntryTypeEnumTypeTransformer {
  factory SuppressionEntryTypeEnumTypeTransformer() => _instance ??= const SuppressionEntryTypeEnumTypeTransformer._();

  const SuppressionEntryTypeEnumTypeTransformer._();

  String encode(SuppressionEntryTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SuppressionEntryTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SuppressionEntryTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email': return SuppressionEntryTypeEnum.email;
        case r'domain': return SuppressionEntryTypeEnum.domain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SuppressionEntryTypeEnumTypeTransformer] instance.
  static SuppressionEntryTypeEnumTypeTransformer? _instance;
}


