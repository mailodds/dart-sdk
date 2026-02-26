//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deliver_request_to_inner.g.dart';

/// DeliverRequestToInner
///
/// Properties:
/// * [email] 
/// * [name] 
@BuiltValue()
abstract class DeliverRequestToInner implements Built<DeliverRequestToInner, DeliverRequestToInnerBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  DeliverRequestToInner._();

  factory DeliverRequestToInner([void updates(DeliverRequestToInnerBuilder b)]) = _$DeliverRequestToInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliverRequestToInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliverRequestToInner> get serializer => _$DeliverRequestToInnerSerializer();
}

class _$DeliverRequestToInnerSerializer implements PrimitiveSerializer<DeliverRequestToInner> {
  @override
  final Iterable<Type> types = const [DeliverRequestToInner, _$DeliverRequestToInner];

  @override
  final String wireName = r'DeliverRequestToInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliverRequestToInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliverRequestToInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliverRequestToInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliverRequestToInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverRequestToInnerBuilder();
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

