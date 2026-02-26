//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_rule_action.g.dart';

/// PolicyRuleAction
///
/// Properties:
/// * [action] 
@BuiltValue()
abstract class PolicyRuleAction implements Built<PolicyRuleAction, PolicyRuleActionBuilder> {
  @BuiltValueField(wireName: r'action')
  PolicyRuleActionActionEnum? get action;
  // enum actionEnum {  accept,  reject,  accept_with_caution,  do_not_mail,  review,  };

  PolicyRuleAction._();

  factory PolicyRuleAction([void updates(PolicyRuleActionBuilder b)]) = _$PolicyRuleAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyRuleActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyRuleAction> get serializer => _$PolicyRuleActionSerializer();
}

class _$PolicyRuleActionSerializer implements PrimitiveSerializer<PolicyRuleAction> {
  @override
  final Iterable<Type> types = const [PolicyRuleAction, _$PolicyRuleAction];

  @override
  final String wireName = r'PolicyRuleAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyRuleAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(PolicyRuleActionActionEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyRuleAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyRuleActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyRuleActionActionEnum),
          ) as PolicyRuleActionActionEnum;
          result.action = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyRuleAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyRuleActionBuilder();
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

class PolicyRuleActionActionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'accept')
  static const PolicyRuleActionActionEnum accept = _$policyRuleActionActionEnum_accept;
  @BuiltValueEnumConst(wireName: r'reject')
  static const PolicyRuleActionActionEnum reject = _$policyRuleActionActionEnum_reject;
  @BuiltValueEnumConst(wireName: r'accept_with_caution')
  static const PolicyRuleActionActionEnum acceptWithCaution = _$policyRuleActionActionEnum_acceptWithCaution;
  @BuiltValueEnumConst(wireName: r'do_not_mail')
  static const PolicyRuleActionActionEnum doNotMail = _$policyRuleActionActionEnum_doNotMail;
  @BuiltValueEnumConst(wireName: r'review')
  static const PolicyRuleActionActionEnum review = _$policyRuleActionActionEnum_review;

  static Serializer<PolicyRuleActionActionEnum> get serializer => _$policyRuleActionActionEnumSerializer;

  const PolicyRuleActionActionEnum._(String name): super(name);

  static BuiltSet<PolicyRuleActionActionEnum> get values => _$policyRuleActionActionEnumValues;
  static PolicyRuleActionActionEnum valueOf(String name) => _$policyRuleActionActionEnumValueOf(name);
}

