//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationResult {
  /// Returns a new [ValidationResult] instance.
  ValidationResult({
    this.email,
    this.status,
    this.subStatus,
    this.action,
    this.processedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ValidationResultStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subStatus;

  ValidationResultActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? processedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationResult &&
    other.email == email &&
    other.status == status &&
    other.subStatus == subStatus &&
    other.action == action &&
    other.processedAt == processedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subStatus == null ? 0 : subStatus!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (processedAt == null ? 0 : processedAt!.hashCode);

  @override
  String toString() => 'ValidationResult[email=$email, status=$status, subStatus=$subStatus, action=$action, processedAt=$processedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subStatus != null) {
      json[r'sub_status'] = this.subStatus;
    } else {
      json[r'sub_status'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.processedAt != null) {
      json[r'processed_at'] = this.processedAt!.toUtc().toIso8601String();
    } else {
      json[r'processed_at'] = null;
    }
    return json;
  }

  /// Returns a new [ValidationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationResult(
        email: mapValueOfType<String>(json, r'email'),
        status: ValidationResultStatusEnum.fromJson(json[r'status']),
        subStatus: mapValueOfType<String>(json, r'sub_status'),
        action: ValidationResultActionEnum.fromJson(json[r'action']),
        processedAt: mapDateTime(json, r'processed_at', r''),
      );
    }
    return null;
  }

  static List<ValidationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationResult> mapFromJson(dynamic json) {
    final map = <String, ValidationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationResult-objects as value to a dart map
  static Map<String, List<ValidationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ValidationResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const valid = ValidationResultStatusEnum._(r'valid');
  static const invalid = ValidationResultStatusEnum._(r'invalid');
  static const catchAll = ValidationResultStatusEnum._(r'catch_all');
  static const doNotMail = ValidationResultStatusEnum._(r'do_not_mail');
  static const unknown = ValidationResultStatusEnum._(r'unknown');

  /// List of all possible values in this [enum][ValidationResultStatusEnum].
  static const values = <ValidationResultStatusEnum>[
    valid,
    invalid,
    catchAll,
    doNotMail,
    unknown,
  ];

  static ValidationResultStatusEnum? fromJson(dynamic value) => ValidationResultStatusEnumTypeTransformer().decode(value);

  static List<ValidationResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResultStatusEnum] to String,
/// and [decode] dynamic data back to [ValidationResultStatusEnum].
class ValidationResultStatusEnumTypeTransformer {
  factory ValidationResultStatusEnumTypeTransformer() => _instance ??= const ValidationResultStatusEnumTypeTransformer._();

  const ValidationResultStatusEnumTypeTransformer._();

  String encode(ValidationResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'valid': return ValidationResultStatusEnum.valid;
        case r'invalid': return ValidationResultStatusEnum.invalid;
        case r'catch_all': return ValidationResultStatusEnum.catchAll;
        case r'do_not_mail': return ValidationResultStatusEnum.doNotMail;
        case r'unknown': return ValidationResultStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResultStatusEnumTypeTransformer] instance.
  static ValidationResultStatusEnumTypeTransformer? _instance;
}



class ValidationResultActionEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResultActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const accept = ValidationResultActionEnum._(r'accept');
  static const acceptWithCaution = ValidationResultActionEnum._(r'accept_with_caution');
  static const reject = ValidationResultActionEnum._(r'reject');
  static const retryLater = ValidationResultActionEnum._(r'retry_later');

  /// List of all possible values in this [enum][ValidationResultActionEnum].
  static const values = <ValidationResultActionEnum>[
    accept,
    acceptWithCaution,
    reject,
    retryLater,
  ];

  static ValidationResultActionEnum? fromJson(dynamic value) => ValidationResultActionEnumTypeTransformer().decode(value);

  static List<ValidationResultActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResultActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResultActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResultActionEnum] to String,
/// and [decode] dynamic data back to [ValidationResultActionEnum].
class ValidationResultActionEnumTypeTransformer {
  factory ValidationResultActionEnumTypeTransformer() => _instance ??= const ValidationResultActionEnumTypeTransformer._();

  const ValidationResultActionEnumTypeTransformer._();

  String encode(ValidationResultActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResultActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResultActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'accept': return ValidationResultActionEnum.accept;
        case r'accept_with_caution': return ValidationResultActionEnum.acceptWithCaution;
        case r'reject': return ValidationResultActionEnum.reject;
        case r'retry_later': return ValidationResultActionEnum.retryLater;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResultActionEnumTypeTransformer] instance.
  static ValidationResultActionEnumTypeTransformer? _instance;
}


