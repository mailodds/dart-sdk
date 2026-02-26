//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/telemetry_summary_top_domains_inner.dart';
import 'package:mailodds/src/model/telemetry_summary_rates.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/telemetry_summary_top_reasons_inner.dart';
import 'package:mailodds/src/model/telemetry_summary_totals.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_summary.g.dart';

/// Validation metrics for building dashboards and monitoring.
///
/// Properties:
/// * [schemaVersion] 
/// * [window] 
/// * [generatedAt] 
/// * [timezone] 
/// * [totals] 
/// * [rates] 
/// * [topReasons] - Top rejection/status reasons
/// * [topDomains] - Top domains by volume
@BuiltValue()
abstract class TelemetrySummary implements Built<TelemetrySummary, TelemetrySummaryBuilder> {
  @BuiltValueField(wireName: r'schemaVersion')
  String? get schemaVersion;

  @BuiltValueField(wireName: r'window')
  TelemetrySummaryWindowEnum? get window;
  // enum windowEnum {  1h,  24h,  30d,  };

  @BuiltValueField(wireName: r'generatedAt')
  DateTime? get generatedAt;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'totals')
  TelemetrySummaryTotals? get totals;

  @BuiltValueField(wireName: r'rates')
  TelemetrySummaryRates? get rates;

  /// Top rejection/status reasons
  @BuiltValueField(wireName: r'topReasons')
  BuiltList<TelemetrySummaryTopReasonsInner>? get topReasons;

  /// Top domains by volume
  @BuiltValueField(wireName: r'topDomains')
  BuiltList<TelemetrySummaryTopDomainsInner>? get topDomains;

  TelemetrySummary._();

  factory TelemetrySummary([void updates(TelemetrySummaryBuilder b)]) = _$TelemetrySummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetrySummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetrySummary> get serializer => _$TelemetrySummarySerializer();
}

class _$TelemetrySummarySerializer implements PrimitiveSerializer<TelemetrySummary> {
  @override
  final Iterable<Type> types = const [TelemetrySummary, _$TelemetrySummary];

  @override
  final String wireName = r'TelemetrySummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetrySummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schemaVersion != null) {
      yield r'schemaVersion';
      yield serializers.serialize(
        object.schemaVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(TelemetrySummaryWindowEnum),
      );
    }
    if (object.generatedAt != null) {
      yield r'generatedAt';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.totals != null) {
      yield r'totals';
      yield serializers.serialize(
        object.totals,
        specifiedType: const FullType(TelemetrySummaryTotals),
      );
    }
    if (object.rates != null) {
      yield r'rates';
      yield serializers.serialize(
        object.rates,
        specifiedType: const FullType(TelemetrySummaryRates),
      );
    }
    if (object.topReasons != null) {
      yield r'topReasons';
      yield serializers.serialize(
        object.topReasons,
        specifiedType: const FullType(BuiltList, [FullType(TelemetrySummaryTopReasonsInner)]),
      );
    }
    if (object.topDomains != null) {
      yield r'topDomains';
      yield serializers.serialize(
        object.topDomains,
        specifiedType: const FullType(BuiltList, [FullType(TelemetrySummaryTopDomainsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetrySummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TelemetrySummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schemaVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schemaVersion = valueDes;
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TelemetrySummaryWindowEnum),
          ) as TelemetrySummaryWindowEnum;
          result.window = valueDes;
          break;
        case r'generatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timezone = valueDes;
          break;
        case r'totals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TelemetrySummaryTotals),
          ) as TelemetrySummaryTotals;
          result.totals.replace(valueDes);
          break;
        case r'rates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TelemetrySummaryRates),
          ) as TelemetrySummaryRates;
          result.rates.replace(valueDes);
          break;
        case r'topReasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TelemetrySummaryTopReasonsInner)]),
          ) as BuiltList<TelemetrySummaryTopReasonsInner>;
          result.topReasons.replace(valueDes);
          break;
        case r'topDomains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TelemetrySummaryTopDomainsInner)]),
          ) as BuiltList<TelemetrySummaryTopDomainsInner>;
          result.topDomains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetrySummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetrySummaryBuilder();
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

class TelemetrySummaryWindowEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'1h')
  static const TelemetrySummaryWindowEnum n1h = _$telemetrySummaryWindowEnum_n1h;
  @BuiltValueEnumConst(wireName: r'24h')
  static const TelemetrySummaryWindowEnum n24h = _$telemetrySummaryWindowEnum_n24h;
  @BuiltValueEnumConst(wireName: r'30d')
  static const TelemetrySummaryWindowEnum n30d = _$telemetrySummaryWindowEnum_n30d;

  static Serializer<TelemetrySummaryWindowEnum> get serializer => _$telemetrySummaryWindowEnumSerializer;

  const TelemetrySummaryWindowEnum._(String name): super(name);

  static BuiltSet<TelemetrySummaryWindowEnum> get values => _$telemetrySummaryWindowEnumValues;
  static TelemetrySummaryWindowEnum valueOf(String name) => _$telemetrySummaryWindowEnumValueOf(name);
}

