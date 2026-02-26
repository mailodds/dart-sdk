//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain_identity_score_checks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_identity_score.g.dart';

/// SendingDomainIdentityScore
///
/// Properties:
/// * [overallScore] - Composite score 0-100
/// * [checks] 
@BuiltValue()
abstract class SendingDomainIdentityScore implements Built<SendingDomainIdentityScore, SendingDomainIdentityScoreBuilder> {
  /// Composite score 0-100
  @BuiltValueField(wireName: r'overall_score')
  num? get overallScore;

  @BuiltValueField(wireName: r'checks')
  SendingDomainIdentityScoreChecks? get checks;

  SendingDomainIdentityScore._();

  factory SendingDomainIdentityScore([void updates(SendingDomainIdentityScoreBuilder b)]) = _$SendingDomainIdentityScore;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainIdentityScoreBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainIdentityScore> get serializer => _$SendingDomainIdentityScoreSerializer();
}

class _$SendingDomainIdentityScoreSerializer implements PrimitiveSerializer<SendingDomainIdentityScore> {
  @override
  final Iterable<Type> types = const [SendingDomainIdentityScore, _$SendingDomainIdentityScore];

  @override
  final String wireName = r'SendingDomainIdentityScore';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainIdentityScore object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.overallScore != null) {
      yield r'overall_score';
      yield serializers.serialize(
        object.overallScore,
        specifiedType: const FullType(num),
      );
    }
    if (object.checks != null) {
      yield r'checks';
      yield serializers.serialize(
        object.checks,
        specifiedType: const FullType(SendingDomainIdentityScoreChecks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainIdentityScore object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainIdentityScoreBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'overall_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.overallScore = valueDes;
          break;
        case r'checks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreChecks),
          ) as SendingDomainIdentityScoreChecks;
          result.checks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainIdentityScore deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainIdentityScoreBuilder();
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

