//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'confirm_subscription200_response.g.dart';

/// ConfirmSubscription200Response
///
/// Properties:
/// * [confirmed] 
/// * [email] 
/// * [listId] 
@BuiltValue()
abstract class ConfirmSubscription200Response implements Built<ConfirmSubscription200Response, ConfirmSubscription200ResponseBuilder> {
  @BuiltValueField(wireName: r'confirmed')
  bool? get confirmed;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'list_id')
  String? get listId;

  ConfirmSubscription200Response._();

  factory ConfirmSubscription200Response([void updates(ConfirmSubscription200ResponseBuilder b)]) = _$ConfirmSubscription200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfirmSubscription200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfirmSubscription200Response> get serializer => _$ConfirmSubscription200ResponseSerializer();
}

class _$ConfirmSubscription200ResponseSerializer implements PrimitiveSerializer<ConfirmSubscription200Response> {
  @override
  final Iterable<Type> types = const [ConfirmSubscription200Response, _$ConfirmSubscription200Response];

  @override
  final String wireName = r'ConfirmSubscription200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfirmSubscription200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.confirmed != null) {
      yield r'confirmed';
      yield serializers.serialize(
        object.confirmed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.listId != null) {
      yield r'list_id';
      yield serializers.serialize(
        object.listId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfirmSubscription200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConfirmSubscription200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirmed = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'list_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.listId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConfirmSubscription200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmSubscription200ResponseBuilder();
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

