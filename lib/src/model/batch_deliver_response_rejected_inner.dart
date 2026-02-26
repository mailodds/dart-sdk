//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_deliver_response_rejected_inner.g.dart';

/// BatchDeliverResponseRejectedInner
///
/// Properties:
/// * [email] 
/// * [reason] - Rejection reason (suppressed, validation_rejected)
/// * [status] - Validation status if rejected by validation
/// * [subStatus] - Validation sub-status if rejected by validation
@BuiltValue()
abstract class BatchDeliverResponseRejectedInner implements Built<BatchDeliverResponseRejectedInner, BatchDeliverResponseRejectedInnerBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Rejection reason (suppressed, validation_rejected)
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Validation status if rejected by validation
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Validation sub-status if rejected by validation
  @BuiltValueField(wireName: r'sub_status')
  String? get subStatus;

  BatchDeliverResponseRejectedInner._();

  factory BatchDeliverResponseRejectedInner([void updates(BatchDeliverResponseRejectedInnerBuilder b)]) = _$BatchDeliverResponseRejectedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchDeliverResponseRejectedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchDeliverResponseRejectedInner> get serializer => _$BatchDeliverResponseRejectedInnerSerializer();
}

class _$BatchDeliverResponseRejectedInnerSerializer implements PrimitiveSerializer<BatchDeliverResponseRejectedInner> {
  @override
  final Iterable<Type> types = const [BatchDeliverResponseRejectedInner, _$BatchDeliverResponseRejectedInner];

  @override
  final String wireName = r'BatchDeliverResponseRejectedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchDeliverResponseRejectedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.subStatus != null) {
      yield r'sub_status';
      yield serializers.serialize(
        object.subStatus,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchDeliverResponseRejectedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchDeliverResponseRejectedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'sub_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchDeliverResponseRejectedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDeliverResponseRejectedInnerBuilder();
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

