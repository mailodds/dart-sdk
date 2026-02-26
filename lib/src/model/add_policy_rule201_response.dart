//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/policy_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_policy_rule201_response.g.dart';

/// AddPolicyRule201Response
///
/// Properties:
/// * [rule] 
@BuiltValue()
abstract class AddPolicyRule201Response implements Built<AddPolicyRule201Response, AddPolicyRule201ResponseBuilder> {
  @BuiltValueField(wireName: r'rule')
  PolicyRule? get rule;

  AddPolicyRule201Response._();

  factory AddPolicyRule201Response([void updates(AddPolicyRule201ResponseBuilder b)]) = _$AddPolicyRule201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddPolicyRule201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddPolicyRule201Response> get serializer => _$AddPolicyRule201ResponseSerializer();
}

class _$AddPolicyRule201ResponseSerializer implements PrimitiveSerializer<AddPolicyRule201Response> {
  @override
  final Iterable<Type> types = const [AddPolicyRule201Response, _$AddPolicyRule201Response];

  @override
  final String wireName = r'AddPolicyRule201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddPolicyRule201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rule != null) {
      yield r'rule';
      yield serializers.serialize(
        object.rule,
        specifiedType: const FullType(PolicyRule),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddPolicyRule201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddPolicyRule201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyRule),
          ) as PolicyRule;
          result.rule.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddPolicyRule201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddPolicyRule201ResponseBuilder();
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

