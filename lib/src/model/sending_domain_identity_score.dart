//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/sending_domain_identity_score_breakdown.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_identity_score.g.dart';

/// SendingDomainIdentityScore
///
/// Properties:
/// * [score] - Total points earned across all checks
/// * [maxScore] - Maximum possible score (100)
/// * [percentage] - Score as percentage (same as score since max is 100)
/// * [breakdown] 
/// * [grade] - Letter grade (A+, A, B, C, D, F)
@BuiltValue()
abstract class SendingDomainIdentityScore implements Built<SendingDomainIdentityScore, SendingDomainIdentityScoreBuilder> {
  /// Total points earned across all checks
  @BuiltValueField(wireName: r'score')
  int get score;

  /// Maximum possible score (100)
  @BuiltValueField(wireName: r'max_score')
  int get maxScore;

  /// Score as percentage (same as score since max is 100)
  @BuiltValueField(wireName: r'percentage')
  int get percentage;

  @BuiltValueField(wireName: r'breakdown')
  SendingDomainIdentityScoreBreakdown get breakdown;

  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueField(wireName: r'grade')
  SendingDomainIdentityScoreGradeEnum get grade;
  // enum gradeEnum {  A+,  A,  B,  C,  D,  F,  };

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
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(int),
    );
    yield r'max_score';
    yield serializers.serialize(
      object.maxScore,
      specifiedType: const FullType(int),
    );
    yield r'percentage';
    yield serializers.serialize(
      object.percentage,
      specifiedType: const FullType(int),
    );
    yield r'breakdown';
    yield serializers.serialize(
      object.breakdown,
      specifiedType: const FullType(SendingDomainIdentityScoreBreakdown),
    );
    yield r'grade';
    yield serializers.serialize(
      object.grade,
      specifiedType: const FullType(SendingDomainIdentityScoreGradeEnum),
    );
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
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.score = valueDes;
          break;
        case r'max_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxScore = valueDes;
          break;
        case r'percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.percentage = valueDes;
          break;
        case r'breakdown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreBreakdown),
          ) as SendingDomainIdentityScoreBreakdown;
          result.breakdown.replace(valueDes);
          break;
        case r'grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainIdentityScoreGradeEnum),
          ) as SendingDomainIdentityScoreGradeEnum;
          result.grade = valueDes;
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

class SendingDomainIdentityScoreGradeEnum extends EnumClass {

  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueEnumConst(wireName: r'A+')
  static const SendingDomainIdentityScoreGradeEnum aPlus = _$sendingDomainIdentityScoreGradeEnum_aPlus;
  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueEnumConst(wireName: r'A')
  static const SendingDomainIdentityScoreGradeEnum A = _$sendingDomainIdentityScoreGradeEnum_A;
  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueEnumConst(wireName: r'B')
  static const SendingDomainIdentityScoreGradeEnum B = _$sendingDomainIdentityScoreGradeEnum_B;
  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueEnumConst(wireName: r'C')
  static const SendingDomainIdentityScoreGradeEnum C = _$sendingDomainIdentityScoreGradeEnum_C;
  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueEnumConst(wireName: r'D')
  static const SendingDomainIdentityScoreGradeEnum D = _$sendingDomainIdentityScoreGradeEnum_D;
  /// Letter grade (A+, A, B, C, D, F)
  @BuiltValueEnumConst(wireName: r'F')
  static const SendingDomainIdentityScoreGradeEnum F = _$sendingDomainIdentityScoreGradeEnum_F;

  static Serializer<SendingDomainIdentityScoreGradeEnum> get serializer => _$sendingDomainIdentityScoreGradeEnumSerializer;

  const SendingDomainIdentityScoreGradeEnum._(String name): super(name);

  static BuiltSet<SendingDomainIdentityScoreGradeEnum> get values => _$sendingDomainIdentityScoreGradeEnumValues;
  static SendingDomainIdentityScoreGradeEnum valueOf(String name) => _$sendingDomainIdentityScoreGradeEnumValueOf(name);
}

