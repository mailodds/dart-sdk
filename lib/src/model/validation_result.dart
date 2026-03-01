//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/validation_result_suppression.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_result.g.dart';

/// Individual result from a bulk validation job
///
/// Properties:
/// * [email] 
/// * [status] 
/// * [subStatus] - Detailed reason. Omitted when none.
/// * [action] 
/// * [domain] - Email domain
/// * [mxHost] - Primary MX hostname. Omitted when not resolved.
/// * [checks] - Detailed check results (JSONB). Omitted when not available.
/// * [suppression] 
/// * [processedAt] 
@BuiltValue()
abstract class ValidationResult implements Built<ValidationResult, ValidationResultBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'status')
  ValidationResultStatusEnum get status;
  // enum statusEnum {  valid,  invalid,  catch_all,  do_not_mail,  unknown,  };

  /// Detailed reason. Omitted when none.
  @BuiltValueField(wireName: r'sub_status')
  String? get subStatus;

  @BuiltValueField(wireName: r'action')
  ValidationResultActionEnum get action;
  // enum actionEnum {  accept,  accept_with_caution,  reject,  retry_later,  };

  /// Email domain
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// Primary MX hostname. Omitted when not resolved.
  @BuiltValueField(wireName: r'mx_host')
  String? get mxHost;

  /// Detailed check results (JSONB). Omitted when not available.
  @BuiltValueField(wireName: r'checks')
  BuiltMap<String, JsonObject?>? get checks;

  @BuiltValueField(wireName: r'suppression')
  ValidationResultSuppression? get suppression;

  @BuiltValueField(wireName: r'processed_at')
  DateTime get processedAt;

  ValidationResult._();

  factory ValidationResult([void updates(ValidationResultBuilder b)]) = _$ValidationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationResult> get serializer => _$ValidationResultSerializer();
}

class _$ValidationResultSerializer implements PrimitiveSerializer<ValidationResult> {
  @override
  final Iterable<Type> types = const [ValidationResult, _$ValidationResult];

  @override
  final String wireName = r'ValidationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ValidationResultStatusEnum),
    );
    if (object.subStatus != null) {
      yield r'sub_status';
      yield serializers.serialize(
        object.subStatus,
        specifiedType: const FullType(String),
      );
    }
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(ValidationResultActionEnum),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    if (object.mxHost != null) {
      yield r'mx_host';
      yield serializers.serialize(
        object.mxHost,
        specifiedType: const FullType(String),
      );
    }
    if (object.checks != null) {
      yield r'checks';
      yield serializers.serialize(
        object.checks,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.suppression != null) {
      yield r'suppression';
      yield serializers.serialize(
        object.suppression,
        specifiedType: const FullType(ValidationResultSuppression),
      );
    }
    yield r'processed_at';
    yield serializers.serialize(
      object.processedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(ValidationResultStatusEnum),
          ) as ValidationResultStatusEnum;
          result.status = valueDes;
          break;
        case r'sub_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subStatus = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResultActionEnum),
          ) as ValidationResultActionEnum;
          result.action = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'mx_host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mxHost = valueDes;
          break;
        case r'checks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.checks.replace(valueDes);
          break;
        case r'suppression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResultSuppression),
          ) as ValidationResultSuppression;
          result.suppression.replace(valueDes);
          break;
        case r'processed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.processedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationResultBuilder();
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

class ValidationResultStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'valid')
  static const ValidationResultStatusEnum valid = _$validationResultStatusEnum_valid;
  @BuiltValueEnumConst(wireName: r'invalid')
  static const ValidationResultStatusEnum invalid = _$validationResultStatusEnum_invalid;
  @BuiltValueEnumConst(wireName: r'catch_all')
  static const ValidationResultStatusEnum catchAll = _$validationResultStatusEnum_catchAll;
  @BuiltValueEnumConst(wireName: r'do_not_mail')
  static const ValidationResultStatusEnum doNotMail = _$validationResultStatusEnum_doNotMail;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const ValidationResultStatusEnum unknown = _$validationResultStatusEnum_unknown;

  static Serializer<ValidationResultStatusEnum> get serializer => _$validationResultStatusEnumSerializer;

  const ValidationResultStatusEnum._(String name): super(name);

  static BuiltSet<ValidationResultStatusEnum> get values => _$validationResultStatusEnumValues;
  static ValidationResultStatusEnum valueOf(String name) => _$validationResultStatusEnumValueOf(name);
}

class ValidationResultActionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'accept')
  static const ValidationResultActionEnum accept = _$validationResultActionEnum_accept;
  @BuiltValueEnumConst(wireName: r'accept_with_caution')
  static const ValidationResultActionEnum acceptWithCaution = _$validationResultActionEnum_acceptWithCaution;
  @BuiltValueEnumConst(wireName: r'reject')
  static const ValidationResultActionEnum reject = _$validationResultActionEnum_reject;
  @BuiltValueEnumConst(wireName: r'retry_later')
  static const ValidationResultActionEnum retryLater = _$validationResultActionEnum_retryLater;

  static Serializer<ValidationResultActionEnum> get serializer => _$validationResultActionEnumSerializer;

  const ValidationResultActionEnum._(String name): super(name);

  static BuiltSet<ValidationResultActionEnum> get values => _$validationResultActionEnumValues;
  static ValidationResultActionEnum valueOf(String name) => _$validationResultActionEnumValueOf(name);
}

