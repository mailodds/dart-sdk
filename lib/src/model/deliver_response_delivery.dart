//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deliver_response_delivery.g.dart';

/// DeliverResponseDelivery
///
/// Properties:
/// * [pool] - IP pool used
/// * [lane] - Delivery lane
/// * [warmupLimited] - Whether warmup throttling was applied
@BuiltValue()
abstract class DeliverResponseDelivery implements Built<DeliverResponseDelivery, DeliverResponseDeliveryBuilder> {
  /// IP pool used
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// Delivery lane
  @BuiltValueField(wireName: r'lane')
  String? get lane;

  /// Whether warmup throttling was applied
  @BuiltValueField(wireName: r'warmup_limited')
  bool? get warmupLimited;

  DeliverResponseDelivery._();

  factory DeliverResponseDelivery([void updates(DeliverResponseDeliveryBuilder b)]) = _$DeliverResponseDelivery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliverResponseDeliveryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliverResponseDelivery> get serializer => _$DeliverResponseDeliverySerializer();
}

class _$DeliverResponseDeliverySerializer implements PrimitiveSerializer<DeliverResponseDelivery> {
  @override
  final Iterable<Type> types = const [DeliverResponseDelivery, _$DeliverResponseDelivery];

  @override
  final String wireName = r'DeliverResponseDelivery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliverResponseDelivery object, {
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
    if (object.warmupLimited != null) {
      yield r'warmup_limited';
      yield serializers.serialize(
        object.warmupLimited,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliverResponseDelivery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliverResponseDeliveryBuilder result,
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
        case r'warmup_limited':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.warmupLimited = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliverResponseDelivery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverResponseDeliveryBuilder();
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

