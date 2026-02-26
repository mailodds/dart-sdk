//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_sending_domain201_response.g.dart';

/// CreateSendingDomain201Response
///
/// Properties:
/// * [domain] 
@BuiltValue()
abstract class CreateSendingDomain201Response implements Built<CreateSendingDomain201Response, CreateSendingDomain201ResponseBuilder> {
  @BuiltValueField(wireName: r'domain')
  SendingDomain? get domain;

  CreateSendingDomain201Response._();

  factory CreateSendingDomain201Response([void updates(CreateSendingDomain201ResponseBuilder b)]) = _$CreateSendingDomain201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSendingDomain201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSendingDomain201Response> get serializer => _$CreateSendingDomain201ResponseSerializer();
}

class _$CreateSendingDomain201ResponseSerializer implements PrimitiveSerializer<CreateSendingDomain201Response> {
  @override
  final Iterable<Type> types = const [CreateSendingDomain201Response, _$CreateSendingDomain201Response];

  @override
  final String wireName = r'CreateSendingDomain201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSendingDomain201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(SendingDomain),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSendingDomain201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSendingDomain201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomain),
          ) as SendingDomain;
          result.domain.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateSendingDomain201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSendingDomain201ResponseBuilder();
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

