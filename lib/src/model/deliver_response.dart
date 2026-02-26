//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/deliver_response_delivery.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deliver_response.g.dart';

/// DeliverResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [messageId] - Unique message identifier
/// * [status] - Delivery status
/// * [delivery] 
/// * [validation] - Pre-send validation results (when validate_first is true)
/// * [contentScan] - Content scan results
@BuiltValue()
abstract class DeliverResponse implements Built<DeliverResponse, DeliverResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  /// Unique message identifier
  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  /// Delivery status
  @BuiltValueField(wireName: r'status')
  DeliverResponseStatusEnum? get status;
  // enum statusEnum {  queued,  };

  @BuiltValueField(wireName: r'delivery')
  DeliverResponseDelivery? get delivery;

  /// Pre-send validation results (when validate_first is true)
  @BuiltValueField(wireName: r'validation')
  JsonObject? get validation;

  /// Content scan results
  @BuiltValueField(wireName: r'content_scan')
  JsonObject? get contentScan;

  DeliverResponse._();

  factory DeliverResponse([void updates(DeliverResponseBuilder b)]) = _$DeliverResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliverResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliverResponse> get serializer => _$DeliverResponseSerializer();
}

class _$DeliverResponseSerializer implements PrimitiveSerializer<DeliverResponse> {
  @override
  final Iterable<Type> types = const [DeliverResponse, _$DeliverResponse];

  @override
  final String wireName = r'DeliverResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliverResponse object, {
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
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(DeliverResponseStatusEnum),
      );
    }
    if (object.delivery != null) {
      yield r'delivery';
      yield serializers.serialize(
        object.delivery,
        specifiedType: const FullType(DeliverResponseDelivery),
      );
    }
    if (object.validation != null) {
      yield r'validation';
      yield serializers.serialize(
        object.validation,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.contentScan != null) {
      yield r'content_scan';
      yield serializers.serialize(
        object.contentScan,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliverResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliverResponseBuilder result,
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
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliverResponseStatusEnum),
          ) as DeliverResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliverResponseDelivery),
          ) as DeliverResponseDelivery;
          result.delivery.replace(valueDes);
          break;
        case r'validation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.validation = valueDes;
          break;
        case r'content_scan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.contentScan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliverResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverResponseBuilder();
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

class DeliverResponseStatusEnum extends EnumClass {

  /// Delivery status
  @BuiltValueEnumConst(wireName: r'queued')
  static const DeliverResponseStatusEnum queued = _$deliverResponseStatusEnum_queued;

  static Serializer<DeliverResponseStatusEnum> get serializer => _$deliverResponseStatusEnumSerializer;

  const DeliverResponseStatusEnum._(String name): super(name);

  static BuiltSet<DeliverResponseStatusEnum> get values => _$deliverResponseStatusEnumValues;
  static DeliverResponseStatusEnum valueOf(String name) => _$deliverResponseStatusEnumValueOf(name);
}

