//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationResponseSuppressionMatch {
  /// Returns a new [ValidationResponseSuppressionMatch] instance.
  ValidationResponseSuppressionMatch({
    this.matchType,
    this.matchValue,
    this.reason,
  });

  ValidationResponseSuppressionMatchMatchTypeEnum? matchType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationResponseSuppressionMatch &&
    other.matchType == matchType &&
    other.matchValue == matchValue &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matchType == null ? 0 : matchType!.hashCode) +
    (matchValue == null ? 0 : matchValue!.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'ValidationResponseSuppressionMatch[matchType=$matchType, matchValue=$matchValue, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.matchType != null) {
      json[r'match_type'] = this.matchType;
    } else {
      json[r'match_type'] = null;
    }
    if (this.matchValue != null) {
      json[r'match_value'] = this.matchValue;
    } else {
      json[r'match_value'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [ValidationResponseSuppressionMatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationResponseSuppressionMatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationResponseSuppressionMatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationResponseSuppressionMatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationResponseSuppressionMatch(
        matchType: ValidationResponseSuppressionMatchMatchTypeEnum.fromJson(json[r'match_type']),
        matchValue: mapValueOfType<String>(json, r'match_value'),
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<ValidationResponseSuppressionMatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponseSuppressionMatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponseSuppressionMatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationResponseSuppressionMatch> mapFromJson(dynamic json) {
    final map = <String, ValidationResponseSuppressionMatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationResponseSuppressionMatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationResponseSuppressionMatch-objects as value to a dart map
  static Map<String, List<ValidationResponseSuppressionMatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationResponseSuppressionMatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationResponseSuppressionMatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ValidationResponseSuppressionMatchMatchTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResponseSuppressionMatchMatchTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = ValidationResponseSuppressionMatchMatchTypeEnum._(r'email');
  static const domain = ValidationResponseSuppressionMatchMatchTypeEnum._(r'domain');

  /// List of all possible values in this [enum][ValidationResponseSuppressionMatchMatchTypeEnum].
  static const values = <ValidationResponseSuppressionMatchMatchTypeEnum>[
    email,
    domain,
  ];

  static ValidationResponseSuppressionMatchMatchTypeEnum? fromJson(dynamic value) => ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer().decode(value);

  static List<ValidationResponseSuppressionMatchMatchTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponseSuppressionMatchMatchTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponseSuppressionMatchMatchTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResponseSuppressionMatchMatchTypeEnum] to String,
/// and [decode] dynamic data back to [ValidationResponseSuppressionMatchMatchTypeEnum].
class ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer {
  factory ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer() => _instance ??= const ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer._();

  const ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer._();

  String encode(ValidationResponseSuppressionMatchMatchTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResponseSuppressionMatchMatchTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResponseSuppressionMatchMatchTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email': return ValidationResponseSuppressionMatchMatchTypeEnum.email;
        case r'domain': return ValidationResponseSuppressionMatchMatchTypeEnum.domain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer] instance.
  static ValidationResponseSuppressionMatchMatchTypeEnumTypeTransformer? _instance;
}


