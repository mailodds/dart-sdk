//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:mailodds/src/model/policy_rule_action.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_rule.g.dart';

/// PolicyRule
///
/// Properties:
/// * [id] 
/// * [type] - Rule type determines how condition is evaluated
/// * [condition] - Condition depends on rule type. status_override: {status}, domain_filter: {domain_mode, domains}, check_requirement: {check, required}, sub_status_override: {sub_status}
/// * [action] 
/// * [sequence] 
/// * [isEnabled] 
@BuiltValue()
abstract class PolicyRule implements Built<PolicyRule, PolicyRuleBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Rule type determines how condition is evaluated
  @BuiltValueField(wireName: r'type')
  PolicyRuleTypeEnum get type;
  // enum typeEnum {  status_override,  domain_filter,  check_requirement,  sub_status_override,  };

  /// Condition depends on rule type. status_override: {status}, domain_filter: {domain_mode, domains}, check_requirement: {check, required}, sub_status_override: {sub_status}
  @BuiltValueField(wireName: r'condition')
  JsonObject get condition;

  @BuiltValueField(wireName: r'action')
  PolicyRuleAction get action;

  @BuiltValueField(wireName: r'sequence')
  int? get sequence;

  @BuiltValueField(wireName: r'is_enabled')
  bool? get isEnabled;

  PolicyRule._();

  factory PolicyRule([void updates(PolicyRuleBuilder b)]) = _$PolicyRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyRule> get serializer => _$PolicyRuleSerializer();
}

class _$PolicyRuleSerializer implements PrimitiveSerializer<PolicyRule> {
  @override
  final Iterable<Type> types = const [PolicyRule, _$PolicyRule];

  @override
  final String wireName = r'PolicyRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PolicyRuleTypeEnum),
    );
    yield r'condition';
    yield serializers.serialize(
      object.condition,
      specifiedType: const FullType(JsonObject),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(PolicyRuleAction),
    );
    if (object.sequence != null) {
      yield r'sequence';
      yield serializers.serialize(
        object.sequence,
        specifiedType: const FullType(int),
      );
    }
    if (object.isEnabled != null) {
      yield r'is_enabled';
      yield serializers.serialize(
        object.isEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyRuleTypeEnum),
          ) as PolicyRuleTypeEnum;
          result.type = valueDes;
          break;
        case r'condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.condition = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyRuleAction),
          ) as PolicyRuleAction;
          result.action.replace(valueDes);
          break;
        case r'sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sequence = valueDes;
          break;
        case r'is_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyRuleBuilder();
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

class PolicyRuleTypeEnum extends EnumClass {

  /// Rule type determines how condition is evaluated
  @BuiltValueEnumConst(wireName: r'status_override')
  static const PolicyRuleTypeEnum statusOverride = _$policyRuleTypeEnum_statusOverride;
  /// Rule type determines how condition is evaluated
  @BuiltValueEnumConst(wireName: r'domain_filter')
  static const PolicyRuleTypeEnum domainFilter = _$policyRuleTypeEnum_domainFilter;
  /// Rule type determines how condition is evaluated
  @BuiltValueEnumConst(wireName: r'check_requirement')
  static const PolicyRuleTypeEnum checkRequirement = _$policyRuleTypeEnum_checkRequirement;
  /// Rule type determines how condition is evaluated
  @BuiltValueEnumConst(wireName: r'sub_status_override')
  static const PolicyRuleTypeEnum subStatusOverride = _$policyRuleTypeEnum_subStatusOverride;

  static Serializer<PolicyRuleTypeEnum> get serializer => _$policyRuleTypeEnumSerializer;

  const PolicyRuleTypeEnum._(String name): super(name);

  static BuiltSet<PolicyRuleTypeEnum> get values => _$policyRuleTypeEnumValues;
  static PolicyRuleTypeEnum valueOf(String name) => _$policyRuleTypeEnumValueOf(name);
}

