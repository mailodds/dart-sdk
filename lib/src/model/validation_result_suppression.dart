//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_result_suppression.g.dart';

/// Present only when email matched a suppression entry.
///
/// Properties:
/// * [matchType] 
/// * [matchValue] 
@BuiltValue()
abstract class ValidationResultSuppression implements Built<ValidationResultSuppression, ValidationResultSuppressionBuilder> {
  @BuiltValueField(wireName: r'match_type')
  ValidationResultSuppressionMatchTypeEnum? get matchType;
  // enum matchTypeEnum {  email,  domain,  };

  @BuiltValueField(wireName: r'match_value')
  String? get matchValue;

  ValidationResultSuppression._();

  factory ValidationResultSuppression([void updates(ValidationResultSuppressionBuilder b)]) = _$ValidationResultSuppression;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationResultSuppressionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationResultSuppression> get serializer => _$ValidationResultSuppressionSerializer();
}

class _$ValidationResultSuppressionSerializer implements PrimitiveSerializer<ValidationResultSuppression> {
  @override
  final Iterable<Type> types = const [ValidationResultSuppression, _$ValidationResultSuppression];

  @override
  final String wireName = r'ValidationResultSuppression';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationResultSuppression object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchType != null) {
      yield r'match_type';
      yield serializers.serialize(
        object.matchType,
        specifiedType: const FullType(ValidationResultSuppressionMatchTypeEnum),
      );
    }
    if (object.matchValue != null) {
      yield r'match_value';
      yield serializers.serialize(
        object.matchValue,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationResultSuppression object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationResultSuppressionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'match_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResultSuppressionMatchTypeEnum),
          ) as ValidationResultSuppressionMatchTypeEnum;
          result.matchType = valueDes;
          break;
        case r'match_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matchValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationResultSuppression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationResultSuppressionBuilder();
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

class ValidationResultSuppressionMatchTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const ValidationResultSuppressionMatchTypeEnum email = _$validationResultSuppressionMatchTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'domain')
  static const ValidationResultSuppressionMatchTypeEnum domain = _$validationResultSuppressionMatchTypeEnum_domain;

  static Serializer<ValidationResultSuppressionMatchTypeEnum> get serializer => _$validationResultSuppressionMatchTypeEnumSerializer;

  const ValidationResultSuppressionMatchTypeEnum._(String name): super(name);

  static BuiltSet<ValidationResultSuppressionMatchTypeEnum> get values => _$validationResultSuppressionMatchTypeEnumValues;
  static ValidationResultSuppressionMatchTypeEnum valueOf(String name) => _$validationResultSuppressionMatchTypeEnumValueOf(name);
}

