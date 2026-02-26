//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_response_policy_applied.g.dart';

/// Present when a validation policy modified the result.
///
/// Properties:
/// * [policyId] 
/// * [policyName] 
/// * [ruleId] 
/// * [ruleType] 
@BuiltValue()
abstract class ValidationResponsePolicyApplied implements Built<ValidationResponsePolicyApplied, ValidationResponsePolicyAppliedBuilder> {
  @BuiltValueField(wireName: r'policy_id')
  int? get policyId;

  @BuiltValueField(wireName: r'policy_name')
  String? get policyName;

  @BuiltValueField(wireName: r'rule_id')
  int? get ruleId;

  @BuiltValueField(wireName: r'rule_type')
  String? get ruleType;

  ValidationResponsePolicyApplied._();

  factory ValidationResponsePolicyApplied([void updates(ValidationResponsePolicyAppliedBuilder b)]) = _$ValidationResponsePolicyApplied;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationResponsePolicyAppliedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationResponsePolicyApplied> get serializer => _$ValidationResponsePolicyAppliedSerializer();
}

class _$ValidationResponsePolicyAppliedSerializer implements PrimitiveSerializer<ValidationResponsePolicyApplied> {
  @override
  final Iterable<Type> types = const [ValidationResponsePolicyApplied, _$ValidationResponsePolicyApplied];

  @override
  final String wireName = r'ValidationResponsePolicyApplied';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationResponsePolicyApplied object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.policyId != null) {
      yield r'policy_id';
      yield serializers.serialize(
        object.policyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.policyName != null) {
      yield r'policy_name';
      yield serializers.serialize(
        object.policyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.ruleId != null) {
      yield r'rule_id';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType(int),
      );
    }
    if (object.ruleType != null) {
      yield r'rule_type';
      yield serializers.serialize(
        object.ruleType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationResponsePolicyApplied object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationResponsePolicyAppliedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.policyId = valueDes;
          break;
        case r'policy_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyName = valueDes;
          break;
        case r'rule_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ruleId = valueDes;
          break;
        case r'rule_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationResponsePolicyApplied deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationResponsePolicyAppliedBuilder();
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

