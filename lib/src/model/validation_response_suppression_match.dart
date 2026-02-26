//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_response_suppression_match.g.dart';

/// Present only when email matched a suppression list entry.
///
/// Properties:
/// * [matchType] 
/// * [matchValue] 
/// * [reason] 
@BuiltValue()
abstract class ValidationResponseSuppressionMatch implements Built<ValidationResponseSuppressionMatch, ValidationResponseSuppressionMatchBuilder> {
  @BuiltValueField(wireName: r'match_type')
  ValidationResponseSuppressionMatchMatchTypeEnum? get matchType;
  // enum matchTypeEnum {  email,  domain,  };

  @BuiltValueField(wireName: r'match_value')
  String? get matchValue;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ValidationResponseSuppressionMatch._();

  factory ValidationResponseSuppressionMatch([void updates(ValidationResponseSuppressionMatchBuilder b)]) = _$ValidationResponseSuppressionMatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationResponseSuppressionMatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationResponseSuppressionMatch> get serializer => _$ValidationResponseSuppressionMatchSerializer();
}

class _$ValidationResponseSuppressionMatchSerializer implements PrimitiveSerializer<ValidationResponseSuppressionMatch> {
  @override
  final Iterable<Type> types = const [ValidationResponseSuppressionMatch, _$ValidationResponseSuppressionMatch];

  @override
  final String wireName = r'ValidationResponseSuppressionMatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationResponseSuppressionMatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchType != null) {
      yield r'match_type';
      yield serializers.serialize(
        object.matchType,
        specifiedType: const FullType(ValidationResponseSuppressionMatchMatchTypeEnum),
      );
    }
    if (object.matchValue != null) {
      yield r'match_value';
      yield serializers.serialize(
        object.matchValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationResponseSuppressionMatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationResponseSuppressionMatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'match_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationResponseSuppressionMatchMatchTypeEnum),
          ) as ValidationResponseSuppressionMatchMatchTypeEnum;
          result.matchType = valueDes;
          break;
        case r'match_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matchValue = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationResponseSuppressionMatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationResponseSuppressionMatchBuilder();
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

class ValidationResponseSuppressionMatchMatchTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const ValidationResponseSuppressionMatchMatchTypeEnum email = _$validationResponseSuppressionMatchMatchTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'domain')
  static const ValidationResponseSuppressionMatchMatchTypeEnum domain = _$validationResponseSuppressionMatchMatchTypeEnum_domain;

  static Serializer<ValidationResponseSuppressionMatchMatchTypeEnum> get serializer => _$validationResponseSuppressionMatchMatchTypeEnumSerializer;

  const ValidationResponseSuppressionMatchMatchTypeEnum._(String name): super(name);

  static BuiltSet<ValidationResponseSuppressionMatchMatchTypeEnum> get values => _$validationResponseSuppressionMatchMatchTypeEnumValues;
  static ValidationResponseSuppressionMatchMatchTypeEnum valueOf(String name) => _$validationResponseSuppressionMatchMatchTypeEnumValueOf(name);
}

