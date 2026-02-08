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
    required this.schemaVersion,
    required this.email,
    required this.status,
    required this.action,
    this.subStatus,
    required this.domain,
    required this.mxFound,
    this.mxHost,
    this.smtpCheck,
    this.catchAll,
    required this.disposable,
    required this.roleAccount,
    required this.freeProvider,
    required this.depth,
    required this.processedAt,
    this.suggestedEmail,
    this.retryAfterMs,
    this.suppressionMatch,
    this.policyApplied,
  });

  String schemaVersion;

  String email;

  /// Validation status
  ValidationResponseStatusEnum status;

  /// Recommended action
  ValidationResponseActionEnum action;

  /// Detailed status reason. Omitted when none.
  ValidationResponseSubStatusEnum? subStatus;

  String domain;

  /// Whether MX records were found for the domain
  bool mxFound;

  /// Primary MX hostname. Omitted when MX not resolved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mxHost;

  /// Whether SMTP verification passed. Omitted when SMTP not checked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? smtpCheck;

  /// Whether domain is catch-all. Omitted when SMTP not checked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? catchAll;

  /// Whether domain is a known disposable email provider
  bool disposable;

  /// Whether address is a role account (e.g., info@, admin@)
  bool roleAccount;

  /// Whether domain is a known free email provider (e.g., gmail.com)
  bool freeProvider;

  /// Validation depth used for this check
  ValidationResponseDepthEnum depth;

  /// ISO 8601 timestamp of validation
  DateTime processedAt;

  /// Typo correction suggestion. Omitted when no typo detected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suggestedEmail;

  /// Suggested retry delay in milliseconds. Present only for retry_later action.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retryAfterMs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidationResponseSuppressionMatch? suppressionMatch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidationResponsePolicyApplied? policyApplied;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationResponse &&
    other.schemaVersion == schemaVersion &&
    other.email == email &&
    other.status == status &&
    other.action == action &&
    other.subStatus == subStatus &&
    other.domain == domain &&
    other.mxFound == mxFound &&
    other.mxHost == mxHost &&
    other.smtpCheck == smtpCheck &&
    other.catchAll == catchAll &&
    other.disposable == disposable &&
    other.roleAccount == roleAccount &&
    other.freeProvider == freeProvider &&
    other.depth == depth &&
    other.processedAt == processedAt &&
    other.suggestedEmail == suggestedEmail &&
    other.retryAfterMs == retryAfterMs &&
    other.suppressionMatch == suppressionMatch &&
    other.policyApplied == policyApplied;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion.hashCode) +
    (email.hashCode) +
    (status.hashCode) +
    (action.hashCode) +
    (subStatus == null ? 0 : subStatus!.hashCode) +
    (domain.hashCode) +
    (mxFound.hashCode) +
    (mxHost == null ? 0 : mxHost!.hashCode) +
    (smtpCheck == null ? 0 : smtpCheck!.hashCode) +
    (catchAll == null ? 0 : catchAll!.hashCode) +
    (disposable.hashCode) +
    (roleAccount.hashCode) +
    (freeProvider.hashCode) +
    (depth.hashCode) +
    (processedAt.hashCode) +
    (suggestedEmail == null ? 0 : suggestedEmail!.hashCode) +
    (retryAfterMs == null ? 0 : retryAfterMs!.hashCode) +
    (suppressionMatch == null ? 0 : suppressionMatch!.hashCode) +
    (policyApplied == null ? 0 : policyApplied!.hashCode);

  @override
  String toString() => 'ValidationResponse[schemaVersion=$schemaVersion, email=$email, status=$status, action=$action, subStatus=$subStatus, domain=$domain, mxFound=$mxFound, mxHost=$mxHost, smtpCheck=$smtpCheck, catchAll=$catchAll, disposable=$disposable, roleAccount=$roleAccount, freeProvider=$freeProvider, depth=$depth, processedAt=$processedAt, suggestedEmail=$suggestedEmail, retryAfterMs=$retryAfterMs, suppressionMatch=$suppressionMatch, policyApplied=$policyApplied]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'schema_version'] = this.schemaVersion;
      json[r'email'] = this.email;
      json[r'status'] = this.status;
      json[r'action'] = this.action;
    if (this.subStatus != null) {
      json[r'sub_status'] = this.subStatus;
    } else {
      json[r'sub_status'] = null;
    }
      json[r'domain'] = this.domain;
      json[r'mx_found'] = this.mxFound;
    if (this.mxHost != null) {
      json[r'mx_host'] = this.mxHost;
    } else {
      json[r'mx_host'] = null;
    }
    if (this.smtpCheck != null) {
      json[r'smtp_check'] = this.smtpCheck;
    } else {
      json[r'smtp_check'] = null;
    }
    if (this.catchAll != null) {
      json[r'catch_all'] = this.catchAll;
    } else {
      json[r'catch_all'] = null;
    }
      json[r'disposable'] = this.disposable;
      json[r'role_account'] = this.roleAccount;
      json[r'free_provider'] = this.freeProvider;
      json[r'depth'] = this.depth;
      json[r'processed_at'] = this.processedAt.toUtc().toIso8601String();
    if (this.suggestedEmail != null) {
      json[r'suggested_email'] = this.suggestedEmail;
    } else {
      json[r'suggested_email'] = null;
    }
    if (this.retryAfterMs != null) {
      json[r'retry_after_ms'] = this.retryAfterMs;
    } else {
      json[r'retry_after_ms'] = null;
    }
    if (this.suppressionMatch != null) {
      json[r'suppression_match'] = this.suppressionMatch;
    } else {
      json[r'suppression_match'] = null;
    }
    if (this.policyApplied != null) {
      json[r'policy_applied'] = this.policyApplied;
    } else {
      json[r'policy_applied'] = null;
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
        schemaVersion: mapValueOfType<String>(json, r'schema_version')!,
        email: mapValueOfType<String>(json, r'email')!,
        status: ValidationResponseStatusEnum.fromJson(json[r'status'])!,
        action: ValidationResponseActionEnum.fromJson(json[r'action'])!,
        subStatus: ValidationResponseSubStatusEnum.fromJson(json[r'sub_status']),
        domain: mapValueOfType<String>(json, r'domain')!,
        mxFound: mapValueOfType<bool>(json, r'mx_found')!,
        mxHost: mapValueOfType<String>(json, r'mx_host'),
        smtpCheck: mapValueOfType<bool>(json, r'smtp_check'),
        catchAll: mapValueOfType<bool>(json, r'catch_all'),
        disposable: mapValueOfType<bool>(json, r'disposable')!,
        roleAccount: mapValueOfType<bool>(json, r'role_account')!,
        freeProvider: mapValueOfType<bool>(json, r'free_provider')!,
        depth: ValidationResponseDepthEnum.fromJson(json[r'depth'])!,
        processedAt: mapDateTime(json, r'processed_at', r'')!,
        suggestedEmail: mapValueOfType<String>(json, r'suggested_email'),
        retryAfterMs: mapValueOfType<int>(json, r'retry_after_ms'),
        suppressionMatch: ValidationResponseSuppressionMatch.fromJson(json[r'suppression_match']),
        policyApplied: ValidationResponsePolicyApplied.fromJson(json[r'policy_applied']),
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
    'schema_version',
    'email',
    'status',
    'action',
    'domain',
    'mx_found',
    'disposable',
    'role_account',
    'free_provider',
    'depth',
    'processed_at',
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


/// Detailed status reason. Omitted when none.
class ValidationResponseSubStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResponseSubStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const formatInvalid = ValidationResponseSubStatusEnum._(r'format_invalid');
  static const mxMissing = ValidationResponseSubStatusEnum._(r'mx_missing');
  static const mxTimeout = ValidationResponseSubStatusEnum._(r'mx_timeout');
  static const smtpUnreachable = ValidationResponseSubStatusEnum._(r'smtp_unreachable');
  static const smtpRejected = ValidationResponseSubStatusEnum._(r'smtp_rejected');
  static const disposable = ValidationResponseSubStatusEnum._(r'disposable');
  static const roleAccount = ValidationResponseSubStatusEnum._(r'role_account');
  static const greylisted = ValidationResponseSubStatusEnum._(r'greylisted');
  static const catchAllDetected = ValidationResponseSubStatusEnum._(r'catch_all_detected');
  static const suppressionMatch = ValidationResponseSubStatusEnum._(r'suppression_match');

  /// List of all possible values in this [enum][ValidationResponseSubStatusEnum].
  static const values = <ValidationResponseSubStatusEnum>[
    formatInvalid,
    mxMissing,
    mxTimeout,
    smtpUnreachable,
    smtpRejected,
    disposable,
    roleAccount,
    greylisted,
    catchAllDetected,
    suppressionMatch,
  ];

  static ValidationResponseSubStatusEnum? fromJson(dynamic value) => ValidationResponseSubStatusEnumTypeTransformer().decode(value);

  static List<ValidationResponseSubStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponseSubStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponseSubStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResponseSubStatusEnum] to String,
/// and [decode] dynamic data back to [ValidationResponseSubStatusEnum].
class ValidationResponseSubStatusEnumTypeTransformer {
  factory ValidationResponseSubStatusEnumTypeTransformer() => _instance ??= const ValidationResponseSubStatusEnumTypeTransformer._();

  const ValidationResponseSubStatusEnumTypeTransformer._();

  String encode(ValidationResponseSubStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResponseSubStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResponseSubStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'format_invalid': return ValidationResponseSubStatusEnum.formatInvalid;
        case r'mx_missing': return ValidationResponseSubStatusEnum.mxMissing;
        case r'mx_timeout': return ValidationResponseSubStatusEnum.mxTimeout;
        case r'smtp_unreachable': return ValidationResponseSubStatusEnum.smtpUnreachable;
        case r'smtp_rejected': return ValidationResponseSubStatusEnum.smtpRejected;
        case r'disposable': return ValidationResponseSubStatusEnum.disposable;
        case r'role_account': return ValidationResponseSubStatusEnum.roleAccount;
        case r'greylisted': return ValidationResponseSubStatusEnum.greylisted;
        case r'catch_all_detected': return ValidationResponseSubStatusEnum.catchAllDetected;
        case r'suppression_match': return ValidationResponseSubStatusEnum.suppressionMatch;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResponseSubStatusEnumTypeTransformer] instance.
  static ValidationResponseSubStatusEnumTypeTransformer? _instance;
}


/// Validation depth used for this check
class ValidationResponseDepthEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationResponseDepthEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const standard = ValidationResponseDepthEnum._(r'standard');
  static const enhanced = ValidationResponseDepthEnum._(r'enhanced');

  /// List of all possible values in this [enum][ValidationResponseDepthEnum].
  static const values = <ValidationResponseDepthEnum>[
    standard,
    enhanced,
  ];

  static ValidationResponseDepthEnum? fromJson(dynamic value) => ValidationResponseDepthEnumTypeTransformer().decode(value);

  static List<ValidationResponseDepthEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationResponseDepthEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResponseDepthEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationResponseDepthEnum] to String,
/// and [decode] dynamic data back to [ValidationResponseDepthEnum].
class ValidationResponseDepthEnumTypeTransformer {
  factory ValidationResponseDepthEnumTypeTransformer() => _instance ??= const ValidationResponseDepthEnumTypeTransformer._();

  const ValidationResponseDepthEnumTypeTransformer._();

  String encode(ValidationResponseDepthEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationResponseDepthEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationResponseDepthEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'standard': return ValidationResponseDepthEnum.standard;
        case r'enhanced': return ValidationResponseDepthEnum.enhanced;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationResponseDepthEnumTypeTransformer] instance.
  static ValidationResponseDepthEnumTypeTransformer? _instance;
}


