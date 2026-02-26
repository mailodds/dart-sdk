//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscriber.g.dart';

/// Subscriber
///
/// Properties:
/// * [id] - Subscriber UUID
/// * [listId] - List UUID
/// * [email] 
/// * [name] 
/// * [status] 
/// * [consentSourceIp] - IP address of subscription
/// * [consentPageUrl] - Page URL where form was submitted
/// * [consentFormId] - Form identifier
/// * [consentTimestamp] 
/// * [confirmedAt] 
/// * [unsubscribedAt] 
/// * [validationResult] - Email validation result
/// * [metadata] - Custom metadata
/// * [createdAt] 
@BuiltValue()
abstract class Subscriber implements Built<Subscriber, SubscriberBuilder> {
  /// Subscriber UUID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// List UUID
  @BuiltValueField(wireName: r'list_id')
  String? get listId;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'status')
  SubscriberStatusEnum? get status;
  // enum statusEnum {  pending,  confirmed,  unsubscribed,  bounced,  };

  /// IP address of subscription
  @BuiltValueField(wireName: r'consent_source_ip')
  String? get consentSourceIp;

  /// Page URL where form was submitted
  @BuiltValueField(wireName: r'consent_page_url')
  String? get consentPageUrl;

  /// Form identifier
  @BuiltValueField(wireName: r'consent_form_id')
  String? get consentFormId;

  @BuiltValueField(wireName: r'consent_timestamp')
  DateTime? get consentTimestamp;

  @BuiltValueField(wireName: r'confirmed_at')
  DateTime? get confirmedAt;

  @BuiltValueField(wireName: r'unsubscribed_at')
  DateTime? get unsubscribedAt;

  /// Email validation result
  @BuiltValueField(wireName: r'validation_result')
  JsonObject? get validationResult;

  /// Custom metadata
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  Subscriber._();

  factory Subscriber([void updates(SubscriberBuilder b)]) = _$Subscriber;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Subscriber> get serializer => _$SubscriberSerializer();
}

class _$SubscriberSerializer implements PrimitiveSerializer<Subscriber> {
  @override
  final Iterable<Type> types = const [Subscriber, _$Subscriber];

  @override
  final String wireName = r'Subscriber';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Subscriber object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.listId != null) {
      yield r'list_id';
      yield serializers.serialize(
        object.listId,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SubscriberStatusEnum),
      );
    }
    if (object.consentSourceIp != null) {
      yield r'consent_source_ip';
      yield serializers.serialize(
        object.consentSourceIp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.consentPageUrl != null) {
      yield r'consent_page_url';
      yield serializers.serialize(
        object.consentPageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.consentFormId != null) {
      yield r'consent_form_id';
      yield serializers.serialize(
        object.consentFormId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.consentTimestamp != null) {
      yield r'consent_timestamp';
      yield serializers.serialize(
        object.consentTimestamp,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.confirmedAt != null) {
      yield r'confirmed_at';
      yield serializers.serialize(
        object.confirmedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.unsubscribedAt != null) {
      yield r'unsubscribed_at';
      yield serializers.serialize(
        object.unsubscribedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validationResult != null) {
      yield r'validation_result';
      yield serializers.serialize(
        object.validationResult,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Subscriber object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'list_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.listId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriberStatusEnum),
          ) as SubscriberStatusEnum;
          result.status = valueDes;
          break;
        case r'consent_source_ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.consentSourceIp = valueDes;
          break;
        case r'consent_page_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.consentPageUrl = valueDes;
          break;
        case r'consent_form_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.consentFormId = valueDes;
          break;
        case r'consent_timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.consentTimestamp = valueDes;
          break;
        case r'confirmed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.confirmedAt = valueDes;
          break;
        case r'unsubscribed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.unsubscribedAt = valueDes;
          break;
        case r'validation_result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.validationResult = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Subscriber deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriberBuilder();
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

class SubscriberStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const SubscriberStatusEnum pending = _$subscriberStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const SubscriberStatusEnum confirmed = _$subscriberStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'unsubscribed')
  static const SubscriberStatusEnum unsubscribed = _$subscriberStatusEnum_unsubscribed;
  @BuiltValueEnumConst(wireName: r'bounced')
  static const SubscriberStatusEnum bounced = _$subscriberStatusEnum_bounced;

  static Serializer<SubscriberStatusEnum> get serializer => _$subscriberStatusEnumSerializer;

  const SubscriberStatusEnum._(String name): super(name);

  static BuiltSet<SubscriberStatusEnum> get values => _$subscriberStatusEnumValues;
  static SubscriberStatusEnum valueOf(String name) => _$subscriberStatusEnumValueOf(name);
}

