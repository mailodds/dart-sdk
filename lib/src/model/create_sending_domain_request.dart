//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_sending_domain_request.g.dart';

/// CreateSendingDomainRequest
///
/// Properties:
/// * [domain] - Domain name to add
@BuiltValue()
abstract class CreateSendingDomainRequest implements Built<CreateSendingDomainRequest, CreateSendingDomainRequestBuilder> {
  /// Domain name to add
  @BuiltValueField(wireName: r'domain')
  String get domain;

  CreateSendingDomainRequest._();

  factory CreateSendingDomainRequest([void updates(CreateSendingDomainRequestBuilder b)]) = _$CreateSendingDomainRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSendingDomainRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSendingDomainRequest> get serializer => _$CreateSendingDomainRequestSerializer();
}

class _$CreateSendingDomainRequestSerializer implements PrimitiveSerializer<CreateSendingDomainRequest> {
  @override
  final Iterable<Type> types = const [CreateSendingDomainRequest, _$CreateSendingDomainRequest];

  @override
  final String wireName = r'CreateSendingDomainRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSendingDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSendingDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSendingDomainRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateSendingDomainRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSendingDomainRequestBuilder();
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

