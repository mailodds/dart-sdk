//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/policy_rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_presets_response_presets_inner.g.dart';

/// PolicyPresetsResponsePresetsInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [rules] 
@BuiltValue()
abstract class PolicyPresetsResponsePresetsInner implements Built<PolicyPresetsResponsePresetsInner, PolicyPresetsResponsePresetsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'rules')
  BuiltList<PolicyRule>? get rules;

  PolicyPresetsResponsePresetsInner._();

  factory PolicyPresetsResponsePresetsInner([void updates(PolicyPresetsResponsePresetsInnerBuilder b)]) = _$PolicyPresetsResponsePresetsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyPresetsResponsePresetsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyPresetsResponsePresetsInner> get serializer => _$PolicyPresetsResponsePresetsInnerSerializer();
}

class _$PolicyPresetsResponsePresetsInnerSerializer implements PrimitiveSerializer<PolicyPresetsResponsePresetsInner> {
  @override
  final Iterable<Type> types = const [PolicyPresetsResponsePresetsInner, _$PolicyPresetsResponsePresetsInner];

  @override
  final String wireName = r'PolicyPresetsResponsePresetsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyPresetsResponsePresetsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(PolicyRule)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyPresetsResponsePresetsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyPresetsResponsePresetsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PolicyRule)]),
          ) as BuiltList<PolicyRule>;
          result.rules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyPresetsResponsePresetsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyPresetsResponsePresetsInnerBuilder();
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

