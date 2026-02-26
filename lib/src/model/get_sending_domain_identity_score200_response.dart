//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain_identity_score.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sending_domain_identity_score200_response.g.dart';

/// GetSendingDomainIdentityScore200Response
///
/// Properties:
/// * [identityScore] 
@BuiltValue()
abstract class GetSendingDomainIdentityScore200Response implements Built<GetSendingDomainIdentityScore200Response, GetSendingDomainIdentityScore200ResponseBuilder> {
  @BuiltValueField(wireName: r'identity_score')
  SendingDomainIdentityScore? get identityScore;

  GetSendingDomainIdentityScore200Response._();

  factory GetSendingDomainIdentityScore200Response([void updates(GetSendingDomainIdentityScore200ResponseBuilder b)]) = _$GetSendingDomainIdentityScore200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSendingDomainIdentityScore200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSendingDomainIdentityScore200Response> get serializer => _$GetSendingDomainIdentityScore200ResponseSerializer();
}

class _$GetSendingDomainIdentityScore200ResponseSerializer implements PrimitiveSerializer<GetSendingDomainIdentityScore200Response> {
  @override
  final Iterable<Type> types = const [GetSendingDomainIdentityScore200Response, _$GetSendingDomainIdentityScore200Response];

  @override
  final String wireName = r'GetSendingDomainIdentityScore200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSendingDomainIdentityScore200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identityScore != null) {
      yield r'identity_score';
      yield serializers.serialize(
        object.identityScore,
        specifiedType: const FullType(SendingDomainIdentityScore),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSendingDomainIdentityScore200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSendingDomainIdentityScore200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identity_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScore),
          ) as SendingDomainIdentityScore;
          result.identityScore.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSendingDomainIdentityScore200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSendingDomainIdentityScore200ResponseBuilder();
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

