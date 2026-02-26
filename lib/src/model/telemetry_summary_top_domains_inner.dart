//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_summary_top_domains_inner.g.dart';

/// TelemetrySummaryTopDomainsInner
///
/// Properties:
/// * [domain] 
/// * [volume] 
/// * [deliverable] 
/// * [reject] 
/// * [unknown] 
/// * [catchAll] 
@BuiltValue()
abstract class TelemetrySummaryTopDomainsInner implements Built<TelemetrySummaryTopDomainsInner, TelemetrySummaryTopDomainsInnerBuilder> {
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  @BuiltValueField(wireName: r'volume')
  int? get volume;

  @BuiltValueField(wireName: r'deliverable')
  num? get deliverable;

  @BuiltValueField(wireName: r'reject')
  num? get reject;

  @BuiltValueField(wireName: r'unknown')
  num? get unknown;

  @BuiltValueField(wireName: r'catchAll')
  num? get catchAll;

  TelemetrySummaryTopDomainsInner._();

  factory TelemetrySummaryTopDomainsInner([void updates(TelemetrySummaryTopDomainsInnerBuilder b)]) = _$TelemetrySummaryTopDomainsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetrySummaryTopDomainsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetrySummaryTopDomainsInner> get serializer => _$TelemetrySummaryTopDomainsInnerSerializer();
}

class _$TelemetrySummaryTopDomainsInnerSerializer implements PrimitiveSerializer<TelemetrySummaryTopDomainsInner> {
  @override
  final Iterable<Type> types = const [TelemetrySummaryTopDomainsInner, _$TelemetrySummaryTopDomainsInner];

  @override
  final String wireName = r'TelemetrySummaryTopDomainsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetrySummaryTopDomainsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
        specifiedType: const FullType(int),
      );
    }
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
    if (object.catchAll != null) {
      yield r'catchAll';
      yield serializers.serialize(
        object.catchAll,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetrySummaryTopDomainsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TelemetrySummaryTopDomainsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.volume = valueDes;
          break;
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
        case r'catchAll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.catchAll = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetrySummaryTopDomainsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetrySummaryTopDomainsInnerBuilder();
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

