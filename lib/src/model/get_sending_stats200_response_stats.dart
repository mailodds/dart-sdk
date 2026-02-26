//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sending_stats200_response_stats.g.dart';

/// GetSendingStats200ResponseStats
///
/// Properties:
/// * [period] 
/// * [sent] 
/// * [delivered] 
/// * [bounced] 
/// * [deferred_] 
/// * [failed] 
/// * [openedTotal] 
/// * [openedUnique] 
/// * [clickedTotal] 
/// * [clickedUnique] 
/// * [unsubscribed] 
/// * [deliveryRate] 
/// * [openRate] 
/// * [clickRate] 
/// * [botOpens] - Opens from known bots/scanners
/// * [humanOpens] - Verified human opens
/// * [botOpenPct] - Percentage of opens from bots
@BuiltValue()
abstract class GetSendingStats200ResponseStats implements Built<GetSendingStats200ResponseStats, GetSendingStats200ResponseStatsBuilder> {
  @BuiltValueField(wireName: r'period')
  String? get period;

  @BuiltValueField(wireName: r'sent')
  int? get sent;

  @BuiltValueField(wireName: r'delivered')
  int? get delivered;

  @BuiltValueField(wireName: r'bounced')
  int? get bounced;

  @BuiltValueField(wireName: r'deferred')
  int? get deferred_;

  @BuiltValueField(wireName: r'failed')
  int? get failed;

  @BuiltValueField(wireName: r'opened_total')
  int? get openedTotal;

  @BuiltValueField(wireName: r'opened_unique')
  int? get openedUnique;

  @BuiltValueField(wireName: r'clicked_total')
  int? get clickedTotal;

  @BuiltValueField(wireName: r'clicked_unique')
  int? get clickedUnique;

  @BuiltValueField(wireName: r'unsubscribed')
  int? get unsubscribed;

  @BuiltValueField(wireName: r'delivery_rate')
  num? get deliveryRate;

  @BuiltValueField(wireName: r'open_rate')
  num? get openRate;

  @BuiltValueField(wireName: r'click_rate')
  num? get clickRate;

  /// Opens from known bots/scanners
  @BuiltValueField(wireName: r'bot_opens')
  int? get botOpens;

  /// Verified human opens
  @BuiltValueField(wireName: r'human_opens')
  int? get humanOpens;

  /// Percentage of opens from bots
  @BuiltValueField(wireName: r'bot_open_pct')
  num? get botOpenPct;

  GetSendingStats200ResponseStats._();

  factory GetSendingStats200ResponseStats([void updates(GetSendingStats200ResponseStatsBuilder b)]) = _$GetSendingStats200ResponseStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSendingStats200ResponseStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSendingStats200ResponseStats> get serializer => _$GetSendingStats200ResponseStatsSerializer();
}

class _$GetSendingStats200ResponseStatsSerializer implements PrimitiveSerializer<GetSendingStats200ResponseStats> {
  @override
  final Iterable<Type> types = const [GetSendingStats200ResponseStats, _$GetSendingStats200ResponseStats];

  @override
  final String wireName = r'GetSendingStats200ResponseStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSendingStats200ResponseStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(String),
      );
    }
    if (object.sent != null) {
      yield r'sent';
      yield serializers.serialize(
        object.sent,
        specifiedType: const FullType(int),
      );
    }
    if (object.delivered != null) {
      yield r'delivered';
      yield serializers.serialize(
        object.delivered,
        specifiedType: const FullType(int),
      );
    }
    if (object.bounced != null) {
      yield r'bounced';
      yield serializers.serialize(
        object.bounced,
        specifiedType: const FullType(int),
      );
    }
    if (object.deferred_ != null) {
      yield r'deferred';
      yield serializers.serialize(
        object.deferred_,
        specifiedType: const FullType(int),
      );
    }
    if (object.failed != null) {
      yield r'failed';
      yield serializers.serialize(
        object.failed,
        specifiedType: const FullType(int),
      );
    }
    if (object.openedTotal != null) {
      yield r'opened_total';
      yield serializers.serialize(
        object.openedTotal,
        specifiedType: const FullType(int),
      );
    }
    if (object.openedUnique != null) {
      yield r'opened_unique';
      yield serializers.serialize(
        object.openedUnique,
        specifiedType: const FullType(int),
      );
    }
    if (object.clickedTotal != null) {
      yield r'clicked_total';
      yield serializers.serialize(
        object.clickedTotal,
        specifiedType: const FullType(int),
      );
    }
    if (object.clickedUnique != null) {
      yield r'clicked_unique';
      yield serializers.serialize(
        object.clickedUnique,
        specifiedType: const FullType(int),
      );
    }
    if (object.unsubscribed != null) {
      yield r'unsubscribed';
      yield serializers.serialize(
        object.unsubscribed,
        specifiedType: const FullType(int),
      );
    }
    if (object.deliveryRate != null) {
      yield r'delivery_rate';
      yield serializers.serialize(
        object.deliveryRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.openRate != null) {
      yield r'open_rate';
      yield serializers.serialize(
        object.openRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.clickRate != null) {
      yield r'click_rate';
      yield serializers.serialize(
        object.clickRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.botOpens != null) {
      yield r'bot_opens';
      yield serializers.serialize(
        object.botOpens,
        specifiedType: const FullType(int),
      );
    }
    if (object.humanOpens != null) {
      yield r'human_opens';
      yield serializers.serialize(
        object.humanOpens,
        specifiedType: const FullType(int),
      );
    }
    if (object.botOpenPct != null) {
      yield r'bot_open_pct';
      yield serializers.serialize(
        object.botOpenPct,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSendingStats200ResponseStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSendingStats200ResponseStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        case r'sent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sent = valueDes;
          break;
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.delivered = valueDes;
          break;
        case r'bounced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bounced = valueDes;
          break;
        case r'deferred':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deferred_ = valueDes;
          break;
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failed = valueDes;
          break;
        case r'opened_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.openedTotal = valueDes;
          break;
        case r'opened_unique':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.openedUnique = valueDes;
          break;
        case r'clicked_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.clickedTotal = valueDes;
          break;
        case r'clicked_unique':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.clickedUnique = valueDes;
          break;
        case r'unsubscribed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unsubscribed = valueDes;
          break;
        case r'delivery_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.deliveryRate = valueDes;
          break;
        case r'open_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.openRate = valueDes;
          break;
        case r'click_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.clickRate = valueDes;
          break;
        case r'bot_opens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.botOpens = valueDes;
          break;
        case r'human_opens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.humanOpens = valueDes;
          break;
        case r'bot_open_pct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.botOpenPct = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSendingStats200ResponseStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSendingStats200ResponseStatsBuilder();
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

