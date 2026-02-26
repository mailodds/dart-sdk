//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_summary_rates.g.dart';

/// Status distribution as decimals (0-1)
///
/// Properties:
/// * [deliverable] - Rate of valid + catch_all emails
/// * [reject] - Rate of invalid + do_not_mail emails
/// * [unknown] - Rate of unknown status
/// * [suppressed] - Rate of suppressed emails
@BuiltValue()
abstract class TelemetrySummaryRates implements Built<TelemetrySummaryRates, TelemetrySummaryRatesBuilder> {
  /// Rate of valid + catch_all emails
  @BuiltValueField(wireName: r'deliverable')
  num? get deliverable;

  /// Rate of invalid + do_not_mail emails
  @BuiltValueField(wireName: r'reject')
  num? get reject;

  /// Rate of unknown status
  @BuiltValueField(wireName: r'unknown')
  num? get unknown;

  /// Rate of suppressed emails
  @BuiltValueField(wireName: r'suppressed')
  num? get suppressed;

  TelemetrySummaryRates._();

  factory TelemetrySummaryRates([void updates(TelemetrySummaryRatesBuilder b)]) = _$TelemetrySummaryRates;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetrySummaryRatesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetrySummaryRates> get serializer => _$TelemetrySummaryRatesSerializer();
}

class _$TelemetrySummaryRatesSerializer implements PrimitiveSerializer<TelemetrySummaryRates> {
  @override
  final Iterable<Type> types = const [TelemetrySummaryRates, _$TelemetrySummaryRates];

  @override
  final String wireName = r'TelemetrySummaryRates';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetrySummaryRates object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deliverable != null) {
      yield r'deliverable';
      yield serializers.serialize(
        object.deliverable,
        specifiedType: const FullType(num),
      );
    }
    if (object.reject != null) {
      yield r'reject';
      yield serializers.serialize(
        object.reject,
        specifiedType: const FullType(num),
      );
    }
    if (object.unknown != null) {
      yield r'unknown';
      yield serializers.serialize(
        object.unknown,
        specifiedType: const FullType(num),
      );
    }
    if (object.suppressed != null) {
      yield r'suppressed';
      yield serializers.serialize(
        object.suppressed,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetrySummaryRates object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TelemetrySummaryRatesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deliverable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.deliverable = valueDes;
          break;
        case r'reject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reject = valueDes;
          break;
        case r'unknown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unknown = valueDes;
          break;
        case r'suppressed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.suppressed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetrySummaryRates deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetrySummaryRatesBuilder();
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

