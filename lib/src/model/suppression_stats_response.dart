//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/suppression_stats_response_by_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_stats_response.g.dart';

/// SuppressionStatsResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [total] 
/// * [byType] 
@BuiltValue()
abstract class SuppressionStatsResponse implements Built<SuppressionStatsResponse, SuppressionStatsResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'by_type')
  SuppressionStatsResponseByType? get byType;

  SuppressionStatsResponse._();

  factory SuppressionStatsResponse([void updates(SuppressionStatsResponseBuilder b)]) = _$SuppressionStatsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionStatsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionStatsResponse> get serializer => _$SuppressionStatsResponseSerializer();
}

class _$SuppressionStatsResponseSerializer implements PrimitiveSerializer<SuppressionStatsResponse> {
  @override
  final Iterable<Type> types = const [SuppressionStatsResponse, _$SuppressionStatsResponse];

  @override
  final String wireName = r'SuppressionStatsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionStatsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schemaVersion != null) {
      yield r'schema_version';
      yield serializers.serialize(
        object.schemaVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestId != null) {
      yield r'request_id';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(String),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.byType != null) {
      yield r'by_type';
      yield serializers.serialize(
        object.byType,
        specifiedType: const FullType(SuppressionStatsResponseByType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionStatsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionStatsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schema_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schemaVersion = valueDes;
          break;
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'by_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuppressionStatsResponseByType),
          ) as SuppressionStatsResponseByType;
          result.byType.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuppressionStatsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionStatsResponseBuilder();
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

