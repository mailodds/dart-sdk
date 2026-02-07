//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationResponse {
  /// Returns a new [ValidationResponse] instance.
  ValidationResponse({
    this.schemaVersion,
    required this.email,
    required this.status,
    this.subStatus,
    required this.action,
    this.domain,
    this.mxFound,
    this.smtpCheck,
    this.disposable,
    this.roleAccount,
    this.freeProvider,
    this.suppressionMatch,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  String email;

  /// Validation status
  ValidationResponseStatusEnum status;

  /// Detailed status reason
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subStatus;

  /// Recommended action
  ValidationResponseActionEnum action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mxFound;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? smtpCheck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disposable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? roleAccount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? freeProvider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidationResponseSuppressionMatch? suppressionMatch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationResponse &&
    other.schemaVersion == schemaVersion &&
    other.email == email &&
    other.status == status &&
    other.subStatus == subStatus &&
    other.action == action &&
    other.domain == domain &&
    other.mxFound == mxFound &&
    other.smtpCheck == smtpCheck &&
    other.disposable == disposable &&
    other.roleAccount == roleAccount &&
    other.freeProvider == freeProvider &&
    other.suppressionMatch == suppressionMatch;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (email.hashCode) +
    (status.hashCode) +
    (subStatus == null ? 0 : subStatus!.hashCode) +
    (action.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (mxFound == null ? 0 : mxFound!.hashCode) +
    (smtpCheck == null ? 0 : smtpCheck!.hashCode) +
    (disposable == null ? 0 : disposable!.hashCode) +
    (roleAccount == null ? 0 : roleAccount!.hashCode) +
    (freeProvider == null ? 0 : freeProvider!.hashCode) +
    (suppressionMatch == null ? 0 : suppressionMatch!.hashCode);

  @override
  String toString() => 'ValidationResponse[schemaVersion=$schemaVersion, email=$email, status=$status, subStatus=$subStatus, action=$action, domain=$domain, mxFound=$mxFound, smtpCheck=$smtpCheck, disposable=$disposable, roleAccount=$roleAccount, freeProvider=$freeProvider, suppressionMatch=$suppressionMatch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
      json[r'email'] = this.email;
      json[r'status'] = this.status;
    if (this.subStatus != null) {
      json[r'sub_status'] = this.subStatus;
    } else {
      json[r'sub_status'] = null;
    }
      json[r'action'] = this.action;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.mxFound != null) {
      json[r'mx_found'] = this.mxFound;
    } else {
      json[r'mx_found'] = null;
    }
    if (this.smtpCheck != null) {
      json[r'smtp_check'] = this.smtpCheck;
    } else {
      json[r'smtp_check'] = null;
    }
    if (this.disposable != null) {
      json[r'disposable'] = this.disposable;
    } else {
      json[r'disposable'] = null;
    }
    if (this.roleAccount != null) {
      json[r'role_account'] = this.roleAccount;
    } else {
      json[r'role_account'] = null;
    }
    if (this.freeProvider != null) {
      json[r'free_provider'] = this.freeProvider;
    } else {
      json[r'free_provider'] = null;
    }
    if (this.suppressionMatch != null) {
      json[r'suppression_match'] = this.suppressionMatch;
    } else {
      json[r'suppression_match'] = null;
    }
    return json;
  }

  /// Returns a new [ValidationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        email: mapValueOfType<String>(json, r'email')!,
        status: ValidationResponseStatusEnum.fromJson(json[r'status'])!,
        subStatus: mapValueOfType<String>(json, r'sub_status'),
        action: ValidationResponseActionEnum.fromJson(json[r'action'])!,
        domain: mapValueOfType<String>(json, r'domain'),
        mxFound: mapValueOfType<bool>(json, r'mx_found'),
        smtpCheck: mapValueOfType<bool>(json, r'smtp_check'),
        disposable: mapValueOfType<bool>(json, r'disposable'),
        roleAccount: mapValueOfType<bool>(json, r'role_account'),
        freeProvider: mapValueOfType<bool>(json, r'free_provider'),
        suppressionMatch: ValidationResponseSuppressionMatch.fromJson(json[r'suppression_match']),
      );
    }
    return null;
  }

  static List<ValidationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationResponse> mapFromJson(dynamic json) {
    final map = <String, ValidationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationResponse-objects as value to a dart map
  static Map<String, List<ValidationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'status',
    'action',
  };
}

/// Validation status
class ValidationResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const valid = ValidationResponseStatusEnum._(r'valid');
  static const invalid = ValidationResponseStatusEnum._(r'invalid');
  static const catchAll = ValidationResponseStatusEnum._(r'catch_all');
  static const doNotMail = ValidationResponseStatusEnum._(r'do_not_mail');
  static const unknown = ValidationResponseStatusEnum._(r'unknown');

  /// List of all possible values in this [enum][ValidationResponseStatusEnum].
  static const values = <ValidationResponseStatusEnum>[
    valid,
    invalid,
    catchAll,
    doNotMail,
    unknown,
  ];

  static ValidationResponseStatusEnum? fromJson(dynamic value) => ValidationResponseStatusEnumTypeTransformer().decode(value);

  static List<ValidationResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResponseStatusEnum] to String,
/// and [decode] dynamic data back to [ValidationResponseStatusEnum].
class ValidationResponseStatusEnumTypeTransformer {
  factory ValidationResponseStatusEnumTypeTransformer() => _instance ??= const ValidationResponseStatusEnumTypeTransformer._();

  const ValidationResponseStatusEnumTypeTransformer._();

  String encode(ValidationResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'valid': return ValidationResponseStatusEnum.valid;
        case r'invalid': return ValidationResponseStatusEnum.invalid;
        case r'catch_all': return ValidationResponseStatusEnum.catchAll;
        case r'do_not_mail': return ValidationResponseStatusEnum.doNotMail;
        case r'unknown': return ValidationResponseStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResponseStatusEnumTypeTransformer] instance.
  static ValidationResponseStatusEnumTypeTransformer? _instance;
}


/// Recommended action
class ValidationResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const accept = ValidationResponseActionEnum._(r'accept');
  static const acceptWithCaution = ValidationResponseActionEnum._(r'accept_with_caution');
  static const reject = ValidationResponseActionEnum._(r'reject');
  static const retryLater = ValidationResponseActionEnum._(r'retry_later');

  /// List of all possible values in this [enum][ValidationResponseActionEnum].
  static const values = <ValidationResponseActionEnum>[
    accept,
    acceptWithCaution,
    reject,
    retryLater,
  ];

  static ValidationResponseActionEnum? fromJson(dynamic value) => ValidationResponseActionEnumTypeTransformer().decode(value);

  static List<ValidationResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResponseActionEnum] to String,
/// and [decode] dynamic data back to [ValidationResponseActionEnum].
class ValidationResponseActionEnumTypeTransformer {
  factory ValidationResponseActionEnumTypeTransformer() => _instance ??= const ValidationResponseActionEnumTypeTransformer._();

  const ValidationResponseActionEnumTypeTransformer._();

  String encode(ValidationResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'accept': return ValidationResponseActionEnum.accept;
        case r'accept_with_caution': return ValidationResponseActionEnum.acceptWithCaution;
        case r'reject': return ValidationResponseActionEnum.reject;
        case r'retry_later': return ValidationResponseActionEnum.retryLater;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResponseActionEnumTypeTransformer] instance.
  static ValidationResponseActionEnumTypeTransformer? _instance;
}


