//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/subscriber.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unsubscribe_subscriber200_response.g.dart';

/// UnsubscribeSubscriber200Response
///
/// Properties:
/// * [subscriber] 
@BuiltValue()
abstract class UnsubscribeSubscriber200Response implements Built<UnsubscribeSubscriber200Response, UnsubscribeSubscriber200ResponseBuilder> {
  @BuiltValueField(wireName: r'subscriber')
  Subscriber? get subscriber;

  UnsubscribeSubscriber200Response._();

  factory UnsubscribeSubscriber200Response([void updates(UnsubscribeSubscriber200ResponseBuilder b)]) = _$UnsubscribeSubscriber200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnsubscribeSubscriber200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnsubscribeSubscriber200Response> get serializer => _$UnsubscribeSubscriber200ResponseSerializer();
}

class _$UnsubscribeSubscriber200ResponseSerializer implements PrimitiveSerializer<UnsubscribeSubscriber200Response> {
  @override
  final Iterable<Type> types = const [UnsubscribeSubscriber200Response, _$UnsubscribeSubscriber200Response];

  @override
  final String wireName = r'UnsubscribeSubscriber200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnsubscribeSubscriber200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.subscriber != null) {
      yield r'subscriber';
      yield serializers.serialize(
        object.subscriber,
        specifiedType: const FullType(Subscriber),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnsubscribeSubscriber200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UnsubscribeSubscriber200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subscriber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Subscriber),
          ) as Subscriber;
          result.subscriber.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnsubscribeSubscriber200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsubscribeSubscriber200ResponseBuilder();
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

