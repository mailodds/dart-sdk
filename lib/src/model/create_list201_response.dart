//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/subscriber_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_list201_response.g.dart';

/// CreateList201Response
///
/// Properties:
/// * [list] 
@BuiltValue()
abstract class CreateList201Response implements Built<CreateList201Response, CreateList201ResponseBuilder> {
  @BuiltValueField(wireName: r'list')
  SubscriberList? get list;

  CreateList201Response._();

  factory CreateList201Response([void updates(CreateList201ResponseBuilder b)]) = _$CreateList201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateList201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateList201Response> get serializer => _$CreateList201ResponseSerializer();
}

class _$CreateList201ResponseSerializer implements PrimitiveSerializer<CreateList201Response> {
  @override
  final Iterable<Type> types = const [CreateList201Response, _$CreateList201Response];

  @override
  final String wireName = r'CreateList201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateList201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType(SubscriberList),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateList201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateList201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriberList),
          ) as SubscriberList;
          result.list.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateList201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateList201ResponseBuilder();
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

