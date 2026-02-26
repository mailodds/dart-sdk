//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain_identity_score_checks_dkim.dart';
import 'package:mailodds/src/model/sending_domain_identity_score_checks_dmarc.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_identity_score_checks.g.dart';

/// Individual check results
///
/// Properties:
/// * [dkim] 
/// * [spf] 
/// * [dmarc] 
/// * [mx] 
/// * [returnPath] 
@BuiltValue()
abstract class SendingDomainIdentityScoreChecks implements Built<SendingDomainIdentityScoreChecks, SendingDomainIdentityScoreChecksBuilder> {
  @BuiltValueField(wireName: r'dkim')
  SendingDomainIdentityScoreChecksDkim? get dkim;

  @BuiltValueField(wireName: r'spf')
  SendingDomainIdentityScoreChecksDkim? get spf;

  @BuiltValueField(wireName: r'dmarc')
  SendingDomainIdentityScoreChecksDmarc? get dmarc;

  @BuiltValueField(wireName: r'mx')
  SendingDomainIdentityScoreChecksDkim? get mx;

  @BuiltValueField(wireName: r'return_path')
  SendingDomainIdentityScoreChecksDkim? get returnPath;

  SendingDomainIdentityScoreChecks._();

  factory SendingDomainIdentityScoreChecks([void updates(SendingDomainIdentityScoreChecksBuilder b)]) = _$SendingDomainIdentityScoreChecks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainIdentityScoreChecksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainIdentityScoreChecks> get serializer => _$SendingDomainIdentityScoreChecksSerializer();
}

class _$SendingDomainIdentityScoreChecksSerializer implements PrimitiveSerializer<SendingDomainIdentityScoreChecks> {
  @override
  final Iterable<Type> types = const [SendingDomainIdentityScoreChecks, _$SendingDomainIdentityScoreChecks];

  @override
  final String wireName = r'SendingDomainIdentityScoreChecks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainIdentityScoreChecks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dkim != null) {
      yield r'dkim';
      yield serializers.serialize(
        object.dkim,
        specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
      );
    }
    if (object.spf != null) {
      yield r'spf';
      yield serializers.serialize(
        object.spf,
        specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
      );
    }
    if (object.dmarc != null) {
      yield r'dmarc';
      yield serializers.serialize(
        object.dmarc,
        specifiedType: const FullType(SendingDomainIdentityScoreChecksDmarc),
      );
    }
    if (object.mx != null) {
      yield r'mx';
      yield serializers.serialize(
        object.mx,
        specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
      );
    }
    if (object.returnPath != null) {
      yield r'return_path';
      yield serializers.serialize(
        object.returnPath,
        specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainIdentityScoreChecks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainIdentityScoreChecksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dkim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
          ) as SendingDomainIdentityScoreChecksDkim;
          result.dkim.replace(valueDes);
          break;
        case r'spf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
          ) as SendingDomainIdentityScoreChecksDkim;
          result.spf.replace(valueDes);
          break;
        case r'dmarc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreChecksDmarc),
          ) as SendingDomainIdentityScoreChecksDmarc;
          result.dmarc.replace(valueDes);
          break;
        case r'mx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
          ) as SendingDomainIdentityScoreChecksDkim;
          result.mx.replace(valueDes);
          break;
        case r'return_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreChecksDkim),
          ) as SendingDomainIdentityScoreChecksDkim;
          result.returnPath.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainIdentityScoreChecks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainIdentityScoreChecksBuilder();
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

