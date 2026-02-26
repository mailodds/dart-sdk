//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_list_response_limits.g.dart';

/// PolicyListResponseLimits
///
/// Properties:
/// * [maxPolicies] - -1 means unlimited
/// * [maxRulesPerPolicy] 
/// * [plan] 
@BuiltValue()
abstract class PolicyListResponseLimits implements Built<PolicyListResponseLimits, PolicyListResponseLimitsBuilder> {
  /// -1 means unlimited
  @BuiltValueField(wireName: r'max_policies')
  int? get maxPolicies;

  @BuiltValueField(wireName: r'max_rules_per_policy')
  int? get maxRulesPerPolicy;

  @BuiltValueField(wireName: r'plan')
  String? get plan;

  PolicyListResponseLimits._();

  factory PolicyListResponseLimits([void updates(PolicyListResponseLimitsBuilder b)]) = _$PolicyListResponseLimits;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyListResponseLimitsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyListResponseLimits> get serializer => _$PolicyListResponseLimitsSerializer();
}

class _$PolicyListResponseLimitsSerializer implements PrimitiveSerializer<PolicyListResponseLimits> {
  @override
  final Iterable<Type> types = const [PolicyListResponseLimits, _$PolicyListResponseLimits];

  @override
  final String wireName = r'PolicyListResponseLimits';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyListResponseLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxPolicies != null) {
      yield r'max_policies';
      yield serializers.serialize(
        object.maxPolicies,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxRulesPerPolicy != null) {
      yield r'max_rules_per_policy';
      yield serializers.serialize(
        object.maxRulesPerPolicy,
        specifiedType: const FullType(int),
      );
    }
    if (object.plan != null) {
      yield r'plan';
      yield serializers.serialize(
        object.plan,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyListResponseLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyListResponseLimitsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_policies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxPolicies = valueDes;
          break;
        case r'max_rules_per_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxRulesPerPolicy = valueDes;
          break;
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyListResponseLimits deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyListResponseLimitsBuilder();
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

