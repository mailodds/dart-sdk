//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_identity_score_checks_dmarc.g.dart';

/// SendingDomainIdentityScoreChecksDmarc
///
/// Properties:
/// * [status] 
/// * [score] 
/// * [policy] 
@BuiltValue()
abstract class SendingDomainIdentityScoreChecksDmarc implements Built<SendingDomainIdentityScoreChecksDmarc, SendingDomainIdentityScoreChecksDmarcBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'policy')
  String? get policy;

  SendingDomainIdentityScoreChecksDmarc._();

  factory SendingDomainIdentityScoreChecksDmarc([void updates(SendingDomainIdentityScoreChecksDmarcBuilder b)]) = _$SendingDomainIdentityScoreChecksDmarc;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainIdentityScoreChecksDmarcBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainIdentityScoreChecksDmarc> get serializer => _$SendingDomainIdentityScoreChecksDmarcSerializer();
}

class _$SendingDomainIdentityScoreChecksDmarcSerializer implements PrimitiveSerializer<SendingDomainIdentityScoreChecksDmarc> {
  @override
  final Iterable<Type> types = const [SendingDomainIdentityScoreChecksDmarc, _$SendingDomainIdentityScoreChecksDmarc];

  @override
  final String wireName = r'SendingDomainIdentityScoreChecksDmarc';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainIdentityScoreChecksDmarc object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(num),
      );
    }
    if (object.policy != null) {
      yield r'policy';
      yield serializers.serialize(
        object.policy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainIdentityScoreChecksDmarc object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainIdentityScoreChecksDmarcBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.score = valueDes;
          break;
        case r'policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainIdentityScoreChecksDmarc deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainIdentityScoreChecksDmarcBuilder();
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

