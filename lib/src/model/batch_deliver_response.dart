//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/batch_deliver_response_rejected_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/batch_deliver_response_delivery.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_deliver_response.g.dart';

/// BatchDeliverResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [total] - Total recipients submitted
/// * [accepted] - Number of recipients accepted for delivery
/// * [rejected] - Recipients that were rejected (suppressed or failed validation)
/// * [status] - Batch status
/// * [delivery] 
@BuiltValue()
abstract class BatchDeliverResponse implements Built<BatchDeliverResponse, BatchDeliverResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  /// Total recipients submitted
  @BuiltValueField(wireName: r'total')
  int? get total;

  /// Number of recipients accepted for delivery
  @BuiltValueField(wireName: r'accepted')
  int? get accepted;

  /// Recipients that were rejected (suppressed or failed validation)
  @BuiltValueField(wireName: r'rejected')
  BuiltList<BatchDeliverResponseRejectedInner>? get rejected;

  /// Batch status
  @BuiltValueField(wireName: r'status')
  BatchDeliverResponseStatusEnum? get status;
  // enum statusEnum {  queued,  all_rejected,  };

  @BuiltValueField(wireName: r'delivery')
  BatchDeliverResponseDelivery? get delivery;

  BatchDeliverResponse._();

  factory BatchDeliverResponse([void updates(BatchDeliverResponseBuilder b)]) = _$BatchDeliverResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchDeliverResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchDeliverResponse> get serializer => _$BatchDeliverResponseSerializer();
}

class _$BatchDeliverResponseSerializer implements PrimitiveSerializer<BatchDeliverResponse> {
  @override
  final Iterable<Type> types = const [BatchDeliverResponse, _$BatchDeliverResponse];

  @override
  final String wireName = r'BatchDeliverResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchDeliverResponse object, {
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
    if (object.accepted != null) {
      yield r'accepted';
      yield serializers.serialize(
        object.accepted,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(BuiltList, [FullType(BatchDeliverResponseRejectedInner)]),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BatchDeliverResponseStatusEnum),
      );
    }
    if (object.delivery != null) {
      yield r'delivery';
      yield serializers.serialize(
        object.delivery,
        specifiedType: const FullType(BatchDeliverResponseDelivery),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchDeliverResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchDeliverResponseBuilder result,
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
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accepted = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchDeliverResponseRejectedInner)]),
          ) as BuiltList<BatchDeliverResponseRejectedInner>;
          result.rejected.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchDeliverResponseStatusEnum),
          ) as BatchDeliverResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchDeliverResponseDelivery),
          ) as BatchDeliverResponseDelivery;
          result.delivery.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchDeliverResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDeliverResponseBuilder();
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

class BatchDeliverResponseStatusEnum extends EnumClass {

  /// Batch status
  @BuiltValueEnumConst(wireName: r'queued')
  static const BatchDeliverResponseStatusEnum queued = _$batchDeliverResponseStatusEnum_queued;
  /// Batch status
  @BuiltValueEnumConst(wireName: r'all_rejected')
  static const BatchDeliverResponseStatusEnum allRejected = _$batchDeliverResponseStatusEnum_allRejected;

  static Serializer<BatchDeliverResponseStatusEnum> get serializer => _$batchDeliverResponseStatusEnumSerializer;

  const BatchDeliverResponseStatusEnum._(String name): super(name);

  static BuiltSet<BatchDeliverResponseStatusEnum> get values => _$batchDeliverResponseStatusEnumValues;
  static BatchDeliverResponseStatusEnum valueOf(String name) => _$batchDeliverResponseStatusEnumValueOf(name);
}

