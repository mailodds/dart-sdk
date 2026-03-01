//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_score_check.g.dart';

/// IdentityScoreCheck
///
/// Properties:
/// * [status] - Check status (e.g. verified, pending, missing)
/// * [points] - Points earned for this check
/// * [maxPoints] - Maximum points available for this check
/// * [verifiedAt] - When the check was last verified
@BuiltValue()
abstract class IdentityScoreCheck implements Built<IdentityScoreCheck, IdentityScoreCheckBuilder> {
  /// Check status (e.g. verified, pending, missing)
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Points earned for this check
  @BuiltValueField(wireName: r'points')
  int get points;

  /// Maximum points available for this check
  @BuiltValueField(wireName: r'max_points')
  int get maxPoints;

  /// When the check was last verified
  @BuiltValueField(wireName: r'verified_at')
  DateTime? get verifiedAt;

  IdentityScoreCheck._();

  factory IdentityScoreCheck([void updates(IdentityScoreCheckBuilder b)]) = _$IdentityScoreCheck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentityScoreCheckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityScoreCheck> get serializer => _$IdentityScoreCheckSerializer();
}

class _$IdentityScoreCheckSerializer implements PrimitiveSerializer<IdentityScoreCheck> {
  @override
  final Iterable<Type> types = const [IdentityScoreCheck, _$IdentityScoreCheck];

  @override
  final String wireName = r'IdentityScoreCheck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityScoreCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(int),
    );
    yield r'max_points';
    yield serializers.serialize(
      object.maxPoints,
      specifiedType: const FullType(int),
    );
    if (object.verifiedAt != null) {
      yield r'verified_at';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentityScoreCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdentityScoreCheckBuilder result,
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
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.points = valueDes;
          break;
        case r'max_points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxPoints = valueDes;
          break;
        case r'verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.verifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdentityScoreCheck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityScoreCheckBuilder();
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

