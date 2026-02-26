//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_suppression_request_entries_inner.g.dart';

/// AddSuppressionRequestEntriesInner
///
/// Properties:
/// * [type] 
/// * [value] 
/// * [reason] 
@BuiltValue()
abstract class AddSuppressionRequestEntriesInner implements Built<AddSuppressionRequestEntriesInner, AddSuppressionRequestEntriesInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  AddSuppressionRequestEntriesInnerTypeEnum get type;
  // enum typeEnum {  email,  domain,  };

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  AddSuppressionRequestEntriesInner._();

  factory AddSuppressionRequestEntriesInner([void updates(AddSuppressionRequestEntriesInnerBuilder b)]) = _$AddSuppressionRequestEntriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSuppressionRequestEntriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSuppressionRequestEntriesInner> get serializer => _$AddSuppressionRequestEntriesInnerSerializer();
}

class _$AddSuppressionRequestEntriesInnerSerializer implements PrimitiveSerializer<AddSuppressionRequestEntriesInner> {
  @override
  final Iterable<Type> types = const [AddSuppressionRequestEntriesInner, _$AddSuppressionRequestEntriesInner];

  @override
  final String wireName = r'AddSuppressionRequestEntriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSuppressionRequestEntriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AddSuppressionRequestEntriesInnerTypeEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
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
    AddSuppressionRequestEntriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSuppressionRequestEntriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddSuppressionRequestEntriesInnerTypeEnum),
          ) as AddSuppressionRequestEntriesInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
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
  AddSuppressionRequestEntriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSuppressionRequestEntriesInnerBuilder();
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

class AddSuppressionRequestEntriesInnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const AddSuppressionRequestEntriesInnerTypeEnum email = _$addSuppressionRequestEntriesInnerTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'domain')
  static const AddSuppressionRequestEntriesInnerTypeEnum domain = _$addSuppressionRequestEntriesInnerTypeEnum_domain;

  static Serializer<AddSuppressionRequestEntriesInnerTypeEnum> get serializer => _$addSuppressionRequestEntriesInnerTypeEnumSerializer;

  const AddSuppressionRequestEntriesInnerTypeEnum._(String name): super(name);

  static BuiltSet<AddSuppressionRequestEntriesInnerTypeEnum> get values => _$addSuppressionRequestEntriesInnerTypeEnumValues;
  static AddSuppressionRequestEntriesInnerTypeEnum valueOf(String name) => _$addSuppressionRequestEntriesInnerTypeEnumValueOf(name);
}

