//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_policy_from_preset_request.g.dart';

/// CreatePolicyFromPresetRequest
///
/// Properties:
/// * [presetId] 
/// * [name] 
/// * [isDefault] 
@BuiltValue()
abstract class CreatePolicyFromPresetRequest implements Built<CreatePolicyFromPresetRequest, CreatePolicyFromPresetRequestBuilder> {
  @BuiltValueField(wireName: r'preset_id')
  CreatePolicyFromPresetRequestPresetIdEnum get presetId;
  // enum presetIdEnum {  strict,  permissive,  smtp_required,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'is_default')
  bool? get isDefault;

  CreatePolicyFromPresetRequest._();

  factory CreatePolicyFromPresetRequest([void updates(CreatePolicyFromPresetRequestBuilder b)]) = _$CreatePolicyFromPresetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePolicyFromPresetRequestBuilder b) => b
      ..isDefault = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePolicyFromPresetRequest> get serializer => _$CreatePolicyFromPresetRequestSerializer();
}

class _$CreatePolicyFromPresetRequestSerializer implements PrimitiveSerializer<CreatePolicyFromPresetRequest> {
  @override
  final Iterable<Type> types = const [CreatePolicyFromPresetRequest, _$CreatePolicyFromPresetRequest];

  @override
  final String wireName = r'CreatePolicyFromPresetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePolicyFromPresetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'preset_id';
    yield serializers.serialize(
      object.presetId,
      specifiedType: const FullType(CreatePolicyFromPresetRequestPresetIdEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.isDefault != null) {
      yield r'is_default';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePolicyFromPresetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePolicyFromPresetRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preset_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreatePolicyFromPresetRequestPresetIdEnum),
          ) as CreatePolicyFromPresetRequestPresetIdEnum;
          result.presetId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'is_default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePolicyFromPresetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePolicyFromPresetRequestBuilder();
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

class CreatePolicyFromPresetRequestPresetIdEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'strict')
  static const CreatePolicyFromPresetRequestPresetIdEnum strict = _$createPolicyFromPresetRequestPresetIdEnum_strict;
  @BuiltValueEnumConst(wireName: r'permissive')
  static const CreatePolicyFromPresetRequestPresetIdEnum permissive = _$createPolicyFromPresetRequestPresetIdEnum_permissive;
  @BuiltValueEnumConst(wireName: r'smtp_required')
  static const CreatePolicyFromPresetRequestPresetIdEnum smtpRequired = _$createPolicyFromPresetRequestPresetIdEnum_smtpRequired;

  static Serializer<CreatePolicyFromPresetRequestPresetIdEnum> get serializer => _$createPolicyFromPresetRequestPresetIdEnumSerializer;

  const CreatePolicyFromPresetRequestPresetIdEnum._(String name): super(name);

  static BuiltSet<CreatePolicyFromPresetRequestPresetIdEnum> get values => _$createPolicyFromPresetRequestPresetIdEnumValues;
  static CreatePolicyFromPresetRequestPresetIdEnum valueOf(String name) => _$createPolicyFromPresetRequestPresetIdEnumValueOf(name);
}

