//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscribe_request.g.dart';

/// SubscribeRequest
///
/// Properties:
/// * [email] - Subscriber email address
/// * [name] - Subscriber name
/// * [metadata] - Custom metadata key-value pairs
/// * [pageUrl] - URL of the page where the subscription form was submitted (for consent proof)
/// * [formId] - Identifier of the form used to subscribe (for consent proof)
@BuiltValue()
abstract class SubscribeRequest implements Built<SubscribeRequest, SubscribeRequestBuilder> {
  /// Subscriber email address
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Subscriber name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Custom metadata key-value pairs
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// URL of the page where the subscription form was submitted (for consent proof)
  @BuiltValueField(wireName: r'page_url')
  String? get pageUrl;

  /// Identifier of the form used to subscribe (for consent proof)
  @BuiltValueField(wireName: r'form_id')
  String? get formId;

  SubscribeRequest._();

  factory SubscribeRequest([void updates(SubscribeRequestBuilder b)]) = _$SubscribeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscribeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscribeRequest> get serializer => _$SubscribeRequestSerializer();
}

class _$SubscribeRequestSerializer implements PrimitiveSerializer<SubscribeRequest> {
  @override
  final Iterable<Type> types = const [SubscribeRequest, _$SubscribeRequest];

  @override
  final String wireName = r'SubscribeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscribeRequest object, {
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
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.pageUrl != null) {
      yield r'page_url';
      yield serializers.serialize(
        object.pageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.formId != null) {
      yield r'form_id';
      yield serializers.serialize(
        object.formId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscribeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscribeRequestBuilder result,
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
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'page_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pageUrl = valueDes;
          break;
        case r'form_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscribeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscribeRequestBuilder();
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

