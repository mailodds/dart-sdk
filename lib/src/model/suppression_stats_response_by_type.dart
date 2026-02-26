//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_stats_response_by_type.g.dart';

/// SuppressionStatsResponseByType
///
/// Properties:
/// * [email] 
/// * [domain] 
@BuiltValue()
abstract class SuppressionStatsResponseByType implements Built<SuppressionStatsResponseByType, SuppressionStatsResponseByTypeBuilder> {
  @BuiltValueField(wireName: r'email')
  int? get email;

  @BuiltValueField(wireName: r'domain')
  int? get domain;

  SuppressionStatsResponseByType._();

  factory SuppressionStatsResponseByType([void updates(SuppressionStatsResponseByTypeBuilder b)]) = _$SuppressionStatsResponseByType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionStatsResponseByTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionStatsResponseByType> get serializer => _$SuppressionStatsResponseByTypeSerializer();
}

class _$SuppressionStatsResponseByTypeSerializer implements PrimitiveSerializer<SuppressionStatsResponseByType> {
  @override
  final Iterable<Type> types = const [SuppressionStatsResponseByType, _$SuppressionStatsResponseByType];

  @override
  final String wireName = r'SuppressionStatsResponseByType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionStatsResponseByType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(int),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionStatsResponseByType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionStatsResponseByTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.email = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  SuppressionStatsResponseByType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionStatsResponseByTypeBuilder();
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

