//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_identity_score_checks_dkim.g.dart';

/// SendingDomainIdentityScoreChecksDkim
///
/// Properties:
/// * [status] 
/// * [score] 
@BuiltValue()
abstract class SendingDomainIdentityScoreChecksDkim implements Built<SendingDomainIdentityScoreChecksDkim, SendingDomainIdentityScoreChecksDkimBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'score')
  num? get score;

  SendingDomainIdentityScoreChecksDkim._();

  factory SendingDomainIdentityScoreChecksDkim([void updates(SendingDomainIdentityScoreChecksDkimBuilder b)]) = _$SendingDomainIdentityScoreChecksDkim;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainIdentityScoreChecksDkimBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainIdentityScoreChecksDkim> get serializer => _$SendingDomainIdentityScoreChecksDkimSerializer();
}

class _$SendingDomainIdentityScoreChecksDkimSerializer implements PrimitiveSerializer<SendingDomainIdentityScoreChecksDkim> {
  @override
  final Iterable<Type> types = const [SendingDomainIdentityScoreChecksDkim, _$SendingDomainIdentityScoreChecksDkim];

  @override
  final String wireName = r'SendingDomainIdentityScoreChecksDkim';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainIdentityScoreChecksDkim object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainIdentityScoreChecksDkim object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainIdentityScoreChecksDkimBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainIdentityScoreChecksDkim deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainIdentityScoreChecksDkimBuilder();
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

