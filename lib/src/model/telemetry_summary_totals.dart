//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_summary_totals.g.dart';

/// TelemetrySummaryTotals
///
/// Properties:
/// * [validations] - Total validations in window
/// * [creditsUsed] - Credits consumed
@BuiltValue()
abstract class TelemetrySummaryTotals implements Built<TelemetrySummaryTotals, TelemetrySummaryTotalsBuilder> {
  /// Total validations in window
  @BuiltValueField(wireName: r'validations')
  int? get validations;

  /// Credits consumed
  @BuiltValueField(wireName: r'creditsUsed')
  int? get creditsUsed;

  TelemetrySummaryTotals._();

  factory TelemetrySummaryTotals([void updates(TelemetrySummaryTotalsBuilder b)]) = _$TelemetrySummaryTotals;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetrySummaryTotalsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetrySummaryTotals> get serializer => _$TelemetrySummaryTotalsSerializer();
}

class _$TelemetrySummaryTotalsSerializer implements PrimitiveSerializer<TelemetrySummaryTotals> {
  @override
  final Iterable<Type> types = const [TelemetrySummaryTotals, _$TelemetrySummaryTotals];

  @override
  final String wireName = r'TelemetrySummaryTotals';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetrySummaryTotals object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.validations != null) {
      yield r'validations';
      yield serializers.serialize(
        object.validations,
        specifiedType: const FullType(int),
      );
    }
    if (object.creditsUsed != null) {
      yield r'creditsUsed';
      yield serializers.serialize(
        object.creditsUsed,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetrySummaryTotals object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TelemetrySummaryTotalsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'validations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.validations = valueDes;
          break;
        case r'creditsUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.creditsUsed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetrySummaryTotals deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetrySummaryTotalsBuilder();
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

