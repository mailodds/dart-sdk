//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/validation_response_policy_applied.dart';
import 'package:mailodds/src/model/validation_response_suppression_match.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_response.g.dart';

/// Flat validation response. Conditional fields are omitted (not null) when not applicable.
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [email] 
/// * [status] - Validation status
/// * [action] - Recommended action
/// * [subStatus] - Detailed status reason. Omitted when none.
/// * [domain] 
/// * [mxFound] - Whether MX records were found for the domain
/// * [mxHost] - Primary MX hostname. Omitted when MX not resolved.
/// * [smtpCheck] - Whether SMTP verification passed. Omitted when SMTP not checked.
/// * [catchAll] - Whether domain is catch-all. Omitted when SMTP not checked.
/// * [disposable] - Whether domain is a known disposable email provider
/// * [roleAccount] - Whether address is a role account (e.g., info@, admin@)
/// * [freeProvider] - Whether domain is a known free email provider (e.g., gmail.com)
/// * [depth] - Validation depth used for this check
/// * [processedAt] - ISO 8601 timestamp of validation
/// * [suggestedEmail] - Typo correction suggestion. Omitted when no typo detected.
/// * [retryAfterMs] - Suggested retry delay in milliseconds. Present only for retry_later action.
/// * [hasSpf] - Whether the domain has an SPF record. Omitted for standard depth.
/// * [hasDmarc] - Whether the domain has a DMARC record. Omitted for standard depth.
/// * [dmarcPolicy] - The domain's DMARC policy. Omitted when no DMARC record found.
/// * [dnsblListed] - Whether the domain's MX IP is on a DNS blocklist (Spamhaus ZEN). Omitted for standard depth.
/// * [suppressionMatch] 
/// * [policyApplied] 
@BuiltValue()
abstract class ValidationResponse implements Built<ValidationResponse, ValidationResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'email')
  String get email;

  /// Validation status
  @BuiltValueField(wireName: r'status')
  ValidationResponseStatusEnum get status;
  // enum statusEnum {  valid,  invalid,  catch_all,  do_not_mail,  unknown,  };

  /// Recommended action
  @BuiltValueField(wireName: r'action')
  ValidationResponseActionEnum get action;
  // enum actionEnum {  accept,  accept_with_caution,  reject,  retry_later,  };

  /// Detailed status reason. Omitted when none.
  @BuiltValueField(wireName: r'sub_status')
  ValidationResponseSubStatusEnum? get subStatus;
  // enum subStatusEnum {  format_invalid,  mx_missing,  mx_timeout,  smtp_unreachable,  smtp_rejected,  disposable,  role_account,  greylisted,  catch_all_detected,  domain_not_found,  suppression_match,  restricted_military,  restricted_sanctioned,  };

  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// Whether MX records were found for the domain
  @BuiltValueField(wireName: r'mx_found')
  bool get mxFound;

  /// Primary MX hostname. Omitted when MX not resolved.
  @BuiltValueField(wireName: r'mx_host')
  String? get mxHost;

  /// Whether SMTP verification passed. Omitted when SMTP not checked.
  @BuiltValueField(wireName: r'smtp_check')
  bool? get smtpCheck;

  /// Whether domain is catch-all. Omitted when SMTP not checked.
  @BuiltValueField(wireName: r'catch_all')
  bool? get catchAll;

  /// Whether domain is a known disposable email provider
  @BuiltValueField(wireName: r'disposable')
  bool get disposable;

  /// Whether address is a role account (e.g., info@, admin@)
  @BuiltValueField(wireName: r'role_account')
  bool get roleAccount;

  /// Whether domain is a known free email provider (e.g., gmail.com)
  @BuiltValueField(wireName: r'free_provider')
  bool get freeProvider;

  /// Validation depth used for this check
  @BuiltValueField(wireName: r'depth')
  ValidationResponseDepthEnum get depth;
  // enum depthEnum {  standard,  enhanced,  };

  /// ISO 8601 timestamp of validation
  @BuiltValueField(wireName: r'processed_at')
  DateTime get processedAt;

  /// Typo correction suggestion. Omitted when no typo detected.
  @BuiltValueField(wireName: r'suggested_email')
  String? get suggestedEmail;

  /// Suggested retry delay in milliseconds. Present only for retry_later action.
  @BuiltValueField(wireName: r'retry_after_ms')
  int? get retryAfterMs;

  /// Whether the domain has an SPF record. Omitted for standard depth.
  @BuiltValueField(wireName: r'has_spf')
  bool? get hasSpf;

  /// Whether the domain has a DMARC record. Omitted for standard depth.
  @BuiltValueField(wireName: r'has_dmarc')
  bool? get hasDmarc;

  /// The domain's DMARC policy. Omitted when no DMARC record found.
  @BuiltValueField(wireName: r'dmarc_policy')
  ValidationResponseDmarcPolicyEnum? get dmarcPolicy;
  // enum dmarcPolicyEnum {  none,  quarantine,  reject,  };

  /// Whether the domain's MX IP is on a DNS blocklist (Spamhaus ZEN). Omitted for standard depth.
  @BuiltValueField(wireName: r'dnsbl_listed')
  bool? get dnsblListed;

  @BuiltValueField(wireName: r'suppression_match')
  ValidationResponseSuppressionMatch? get suppressionMatch;

  @BuiltValueField(wireName: r'policy_applied')
  ValidationResponsePolicyApplied? get policyApplied;

  ValidationResponse._();

  factory ValidationResponse([void updates(ValidationResponseBuilder b)]) = _$ValidationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationResponse> get serializer => _$ValidationResponseSerializer();
}

class _$ValidationResponseSerializer implements PrimitiveSerializer<ValidationResponse> {
  @override
  final Iterable<Type> types = const [ValidationResponse, _$ValidationResponse];

  @override
  final String wireName = r'ValidationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'schema_version';
    yield serializers.serialize(
      object.schemaVersion,
      specifiedType: const FullType(String),
    );
    if (object.requestId != null) {
      yield r'request_id';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(String),
      );
    }
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ValidationResponseStatusEnum),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(ValidationResponseActionEnum),
    );
    if (object.subStatus != null) {
      yield r'sub_status';
      yield serializers.serialize(
        object.subStatus,
        specifiedType: const FullType(ValidationResponseSubStatusEnum),
      );
    }
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'mx_found';
    yield serializers.serialize(
      object.mxFound,
      specifiedType: const FullType(bool),
    );
    if (object.mxHost != null) {
      yield r'mx_host';
      yield serializers.serialize(
        object.mxHost,
        specifiedType: const FullType(String),
      );
    }
    if (object.smtpCheck != null) {
      yield r'smtp_check';
      yield serializers.serialize(
        object.smtpCheck,
        specifiedType: const FullType(bool),
      );
    }
    if (object.catchAll != null) {
      yield r'catch_all';
      yield serializers.serialize(
        object.catchAll,
        specifiedType: const FullType(bool),
      );
    }
    yield r'disposable';
    yield serializers.serialize(
      object.disposable,
      specifiedType: const FullType(bool),
    );
    yield r'role_account';
    yield serializers.serialize(
      object.roleAccount,
      specifiedType: const FullType(bool),
    );
    yield r'free_provider';
    yield serializers.serialize(
      object.freeProvider,
      specifiedType: const FullType(bool),
    );
    yield r'depth';
    yield serializers.serialize(
      object.depth,
      specifiedType: const FullType(ValidationResponseDepthEnum),
    );
    yield r'processed_at';
    yield serializers.serialize(
      object.processedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.suggestedEmail != null) {
      yield r'suggested_email';
      yield serializers.serialize(
        object.suggestedEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.retryAfterMs != null) {
      yield r'retry_after_ms';
      yield serializers.serialize(
        object.retryAfterMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasSpf != null) {
      yield r'has_spf';
      yield serializers.serialize(
        object.hasSpf,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasDmarc != null) {
      yield r'has_dmarc';
      yield serializers.serialize(
        object.hasDmarc,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dmarcPolicy != null) {
      yield r'dmarc_policy';
      yield serializers.serialize(
        object.dmarcPolicy,
        specifiedType: const FullType(ValidationResponseDmarcPolicyEnum),
      );
    }
    if (object.dnsblListed != null) {
      yield r'dnsbl_listed';
      yield serializers.serialize(
        object.dnsblListed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.suppressionMatch != null) {
      yield r'suppression_match';
      yield serializers.serialize(
        object.suppressionMatch,
        specifiedType: const FullType(ValidationResponseSuppressionMatch),
      );
    }
    if (object.policyApplied != null) {
      yield r'policy_applied';
      yield serializers.serialize(
        object.policyApplied,
        specifiedType: const FullType(ValidationResponsePolicyApplied),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schema_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schemaVersion = valueDes;
          break;
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseStatusEnum),
          ) as ValidationResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseActionEnum),
          ) as ValidationResponseActionEnum;
          result.action = valueDes;
          break;
        case r'sub_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseSubStatusEnum),
          ) as ValidationResponseSubStatusEnum;
          result.subStatus = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'mx_found':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mxFound = valueDes;
          break;
        case r'mx_host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mxHost = valueDes;
          break;
        case r'smtp_check':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.smtpCheck = valueDes;
          break;
        case r'catch_all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.catchAll = valueDes;
          break;
        case r'disposable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disposable = valueDes;
          break;
        case r'role_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.roleAccount = valueDes;
          break;
        case r'free_provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.freeProvider = valueDes;
          break;
        case r'depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseDepthEnum),
          ) as ValidationResponseDepthEnum;
          result.depth = valueDes;
          break;
        case r'processed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.processedAt = valueDes;
          break;
        case r'suggested_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.suggestedEmail = valueDes;
          break;
        case r'retry_after_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.retryAfterMs = valueDes;
          break;
        case r'has_spf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasSpf = valueDes;
          break;
        case r'has_dmarc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasDmarc = valueDes;
          break;
        case r'dmarc_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseDmarcPolicyEnum),
          ) as ValidationResponseDmarcPolicyEnum;
          result.dmarcPolicy = valueDes;
          break;
        case r'dnsbl_listed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dnsblListed = valueDes;
          break;
        case r'suppression_match':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseSuppressionMatch),
          ) as ValidationResponseSuppressionMatch;
          result.suppressionMatch.replace(valueDes);
          break;
        case r'policy_applied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponsePolicyApplied),
          ) as ValidationResponsePolicyApplied;
          result.policyApplied.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ValidationResponseStatusEnum extends EnumClass {

  /// Validation status
  @BuiltValueEnumConst(wireName: r'valid')
  static const ValidationResponseStatusEnum valid = _$validationResponseStatusEnum_valid;
  /// Validation status
  @BuiltValueEnumConst(wireName: r'invalid')
  static const ValidationResponseStatusEnum invalid = _$validationResponseStatusEnum_invalid;
  /// Validation status
  @BuiltValueEnumConst(wireName: r'catch_all')
  static const ValidationResponseStatusEnum catchAll = _$validationResponseStatusEnum_catchAll;
  /// Validation status
  @BuiltValueEnumConst(wireName: r'do_not_mail')
  static const ValidationResponseStatusEnum doNotMail = _$validationResponseStatusEnum_doNotMail;
  /// Validation status
  @BuiltValueEnumConst(wireName: r'unknown')
  static const ValidationResponseStatusEnum unknown = _$validationResponseStatusEnum_unknown;

  static Serializer<ValidationResponseStatusEnum> get serializer => _$validationResponseStatusEnumSerializer;

  const ValidationResponseStatusEnum._(String name): super(name);

  static BuiltSet<ValidationResponseStatusEnum> get values => _$validationResponseStatusEnumValues;
  static ValidationResponseStatusEnum valueOf(String name) => _$validationResponseStatusEnumValueOf(name);
}

class ValidationResponseActionEnum extends EnumClass {

  /// Recommended action
  @BuiltValueEnumConst(wireName: r'accept')
  static const ValidationResponseActionEnum accept = _$validationResponseActionEnum_accept;
  /// Recommended action
  @BuiltValueEnumConst(wireName: r'accept_with_caution')
  static const ValidationResponseActionEnum acceptWithCaution = _$validationResponseActionEnum_acceptWithCaution;
  /// Recommended action
  @BuiltValueEnumConst(wireName: r'reject')
  static const ValidationResponseActionEnum reject = _$validationResponseActionEnum_reject;
  /// Recommended action
  @BuiltValueEnumConst(wireName: r'retry_later')
  static const ValidationResponseActionEnum retryLater = _$validationResponseActionEnum_retryLater;

  static Serializer<ValidationResponseActionEnum> get serializer => _$validationResponseActionEnumSerializer;

  const ValidationResponseActionEnum._(String name): super(name);

  static BuiltSet<ValidationResponseActionEnum> get values => _$validationResponseActionEnumValues;
  static ValidationResponseActionEnum valueOf(String name) => _$validationResponseActionEnumValueOf(name);
}

class ValidationResponseSubStatusEnum extends EnumClass {

  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'format_invalid')
  static const ValidationResponseSubStatusEnum formatInvalid = _$validationResponseSubStatusEnum_formatInvalid;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'mx_missing')
  static const ValidationResponseSubStatusEnum mxMissing = _$validationResponseSubStatusEnum_mxMissing;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'mx_timeout')
  static const ValidationResponseSubStatusEnum mxTimeout = _$validationResponseSubStatusEnum_mxTimeout;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'smtp_unreachable')
  static const ValidationResponseSubStatusEnum smtpUnreachable = _$validationResponseSubStatusEnum_smtpUnreachable;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'smtp_rejected')
  static const ValidationResponseSubStatusEnum smtpRejected = _$validationResponseSubStatusEnum_smtpRejected;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'disposable')
  static const ValidationResponseSubStatusEnum disposable = _$validationResponseSubStatusEnum_disposable;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'role_account')
  static const ValidationResponseSubStatusEnum roleAccount = _$validationResponseSubStatusEnum_roleAccount;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'greylisted')
  static const ValidationResponseSubStatusEnum greylisted = _$validationResponseSubStatusEnum_greylisted;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'catch_all_detected')
  static const ValidationResponseSubStatusEnum catchAllDetected = _$validationResponseSubStatusEnum_catchAllDetected;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'domain_not_found')
  static const ValidationResponseSubStatusEnum domainNotFound = _$validationResponseSubStatusEnum_domainNotFound;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'suppression_match')
  static const ValidationResponseSubStatusEnum suppressionMatch = _$validationResponseSubStatusEnum_suppressionMatch;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'restricted_military')
  static const ValidationResponseSubStatusEnum restrictedMilitary = _$validationResponseSubStatusEnum_restrictedMilitary;
  /// Detailed status reason. Omitted when none.
  @BuiltValueEnumConst(wireName: r'restricted_sanctioned')
  static const ValidationResponseSubStatusEnum restrictedSanctioned = _$validationResponseSubStatusEnum_restrictedSanctioned;

  static Serializer<ValidationResponseSubStatusEnum> get serializer => _$validationResponseSubStatusEnumSerializer;

  const ValidationResponseSubStatusEnum._(String name): super(name);

  static BuiltSet<ValidationResponseSubStatusEnum> get values => _$validationResponseSubStatusEnumValues;
  static ValidationResponseSubStatusEnum valueOf(String name) => _$validationResponseSubStatusEnumValueOf(name);
}

class ValidationResponseDepthEnum extends EnumClass {

  /// Validation depth used for this check
  @BuiltValueEnumConst(wireName: r'standard')
  static const ValidationResponseDepthEnum standard = _$validationResponseDepthEnum_standard;
  /// Validation depth used for this check
  @BuiltValueEnumConst(wireName: r'enhanced')
  static const ValidationResponseDepthEnum enhanced = _$validationResponseDepthEnum_enhanced;

  static Serializer<ValidationResponseDepthEnum> get serializer => _$validationResponseDepthEnumSerializer;

  const ValidationResponseDepthEnum._(String name): super(name);

  static BuiltSet<ValidationResponseDepthEnum> get values => _$validationResponseDepthEnumValues;
  static ValidationResponseDepthEnum valueOf(String name) => _$validationResponseDepthEnumValueOf(name);
}

class ValidationResponseDmarcPolicyEnum extends EnumClass {

  /// The domain's DMARC policy. Omitted when no DMARC record found.
  @BuiltValueEnumConst(wireName: r'none')
  static const ValidationResponseDmarcPolicyEnum none = _$validationResponseDmarcPolicyEnum_none;
  /// The domain's DMARC policy. Omitted when no DMARC record found.
  @BuiltValueEnumConst(wireName: r'quarantine')
  static const ValidationResponseDmarcPolicyEnum quarantine = _$validationResponseDmarcPolicyEnum_quarantine;
  /// The domain's DMARC policy. Omitted when no DMARC record found.
  @BuiltValueEnumConst(wireName: r'reject')
  static const ValidationResponseDmarcPolicyEnum reject = _$validationResponseDmarcPolicyEnum_reject;

  static Serializer<ValidationResponseDmarcPolicyEnum> get serializer => _$validationResponseDmarcPolicyEnumSerializer;

  const ValidationResponseDmarcPolicyEnum._(String name): super(name);

  static BuiltSet<ValidationResponseDmarcPolicyEnum> get values => _$validationResponseDmarcPolicyEnumValues;
  static ValidationResponseDmarcPolicyEnum valueOf(String name) => _$validationResponseDmarcPolicyEnumValueOf(name);
}

