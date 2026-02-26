//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_deliver_response_delivery.g.dart';

/// Delivery routing info (present when status is queued)
///
/// Properties:
/// * [pool] - IP pool used
/// * [lane] - Delivery lane (green or yellow)
/// * [queuedAt] - Timestamp when batch was queued
@BuiltValue()
abstract class BatchDeliverResponseDelivery implements Built<BatchDeliverResponseDelivery, BatchDeliverResponseDeliveryBuilder> {
  /// IP pool used
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// Delivery lane (green or yellow)
  @BuiltValueField(wireName: r'lane')
  String? get lane;

  /// Timestamp when batch was queued
  @BuiltValueField(wireName: r'queued_at')
  DateTime? get queuedAt;

  BatchDeliverResponseDelivery._();

  factory BatchDeliverResponseDelivery([void updates(BatchDeliverResponseDeliveryBuilder b)]) = _$BatchDeliverResponseDelivery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchDeliverResponseDeliveryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchDeliverResponseDelivery> get serializer => _$BatchDeliverResponseDeliverySerializer();
}

class _$BatchDeliverResponseDeliverySerializer implements PrimitiveSerializer<BatchDeliverResponseDelivery> {
  @override
  final Iterable<Type> types = const [BatchDeliverResponseDelivery, _$BatchDeliverResponseDelivery];

  @override
  final String wireName = r'BatchDeliverResponseDelivery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchDeliverResponseDelivery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType(String),
      );
    }
    if (object.lane != null) {
      yield r'lane';
      yield serializers.serialize(
        object.lane,
        specifiedType: const FullType(String),
      );
    }
    if (object.queuedAt != null) {
      yield r'queued_at';
      yield serializers.serialize(
        object.queuedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchDeliverResponseDelivery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchDeliverResponseDeliveryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pool = valueDes;
          break;
        case r'lane':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lane = valueDes;
          break;
        case r'queued_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.queuedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchDeliverResponseDelivery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDeliverResponseDeliveryBuilder();
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

