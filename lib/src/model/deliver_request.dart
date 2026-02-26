//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/deliver_request_options.dart';
import 'package:mailodds/src/model/deliver_request_structured_data.dart';
import 'package:mailodds/src/model/deliver_request_to_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deliver_request.g.dart';

/// DeliverRequest
///
/// Properties:
/// * [to] - List of recipient email addresses
/// * [from] - Sender email address (must match sending domain)
/// * [subject] - Email subject line
/// * [html] - HTML email body
/// * [text] - Plain text email body
/// * [domainId] - Sending domain UUID
/// * [replyTo] - Reply-to address
/// * [headers] - Extra email headers
/// * [tags] - Tags for categorization
/// * [campaignType] - Campaign type for JSON-LD auto-generation
/// * [structuredData] 
/// * [options] 
@BuiltValue()
abstract class DeliverRequest implements Built<DeliverRequest, DeliverRequestBuilder> {
  /// List of recipient email addresses
  @BuiltValueField(wireName: r'to')
  BuiltList<DeliverRequestToInner> get to;

  /// Sender email address (must match sending domain)
  @BuiltValueField(wireName: r'from')
  String get from;

  /// Email subject line
  @BuiltValueField(wireName: r'subject')
  String get subject;

  /// HTML email body
  @BuiltValueField(wireName: r'html')
  String? get html;

  /// Plain text email body
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// Sending domain UUID
  @BuiltValueField(wireName: r'domain_id')
  String get domainId;

  /// Reply-to address
  @BuiltValueField(wireName: r'reply_to')
  String? get replyTo;

  /// Extra email headers
  @BuiltValueField(wireName: r'headers')
  JsonObject? get headers;

  /// Tags for categorization
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Campaign type for JSON-LD auto-generation
  @BuiltValueField(wireName: r'campaign_type')
  DeliverRequestCampaignTypeEnum? get campaignType;
  // enum campaignTypeEnum {  order_confirmation,  shipping_notification,  subscription_confirm,  review_request,  event_invitation,  promotional,  welcome,  password_reset,  appointment_reminder,  ticket_confirmation,  };

  @BuiltValueField(wireName: r'structured_data')
  DeliverRequestStructuredData? get structuredData;

  @BuiltValueField(wireName: r'options')
  DeliverRequestOptions? get options;

  DeliverRequest._();

  factory DeliverRequest([void updates(DeliverRequestBuilder b)]) = _$DeliverRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliverRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliverRequest> get serializer => _$DeliverRequestSerializer();
}

class _$DeliverRequestSerializer implements PrimitiveSerializer<DeliverRequest> {
  @override
  final Iterable<Type> types = const [DeliverRequest, _$DeliverRequest];

  @override
  final String wireName = r'DeliverRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliverRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(DeliverRequestToInner)]),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    yield r'domain_id';
    yield serializers.serialize(
      object.domainId,
      specifiedType: const FullType(String),
    );
    if (object.replyTo != null) {
      yield r'reply_to';
      yield serializers.serialize(
        object.replyTo,
        specifiedType: const FullType(String),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.campaignType != null) {
      yield r'campaign_type';
      yield serializers.serialize(
        object.campaignType,
        specifiedType: const FullType(DeliverRequestCampaignTypeEnum),
      );
    }
    if (object.structuredData != null) {
      yield r'structured_data';
      yield serializers.serialize(
        object.structuredData,
        specifiedType: const FullType(DeliverRequestStructuredData),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(DeliverRequestOptions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliverRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliverRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DeliverRequestToInner)]),
          ) as BuiltList<DeliverRequestToInner>;
          result.to.replace(valueDes);
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'domain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainId = valueDes;
          break;
        case r'reply_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.replyTo = valueDes;
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.headers = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'campaign_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliverRequestCampaignTypeEnum),
          ) as DeliverRequestCampaignTypeEnum;
          result.campaignType = valueDes;
          break;
        case r'structured_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliverRequestStructuredData),
          ) as DeliverRequestStructuredData;
          result.structuredData.replace(valueDes);
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliverRequestOptions),
          ) as DeliverRequestOptions;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliverRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverRequestBuilder();
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

class DeliverRequestCampaignTypeEnum extends EnumClass {

  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'order_confirmation')
  static const DeliverRequestCampaignTypeEnum orderConfirmation = _$deliverRequestCampaignTypeEnum_orderConfirmation;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'shipping_notification')
  static const DeliverRequestCampaignTypeEnum shippingNotification = _$deliverRequestCampaignTypeEnum_shippingNotification;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'subscription_confirm')
  static const DeliverRequestCampaignTypeEnum subscriptionConfirm = _$deliverRequestCampaignTypeEnum_subscriptionConfirm;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'review_request')
  static const DeliverRequestCampaignTypeEnum reviewRequest = _$deliverRequestCampaignTypeEnum_reviewRequest;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'event_invitation')
  static const DeliverRequestCampaignTypeEnum eventInvitation = _$deliverRequestCampaignTypeEnum_eventInvitation;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'promotional')
  static const DeliverRequestCampaignTypeEnum promotional = _$deliverRequestCampaignTypeEnum_promotional;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'welcome')
  static const DeliverRequestCampaignTypeEnum welcome = _$deliverRequestCampaignTypeEnum_welcome;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'password_reset')
  static const DeliverRequestCampaignTypeEnum passwordReset = _$deliverRequestCampaignTypeEnum_passwordReset;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'appointment_reminder')
  static const DeliverRequestCampaignTypeEnum appointmentReminder = _$deliverRequestCampaignTypeEnum_appointmentReminder;
  /// Campaign type for JSON-LD auto-generation
  @BuiltValueEnumConst(wireName: r'ticket_confirmation')
  static const DeliverRequestCampaignTypeEnum ticketConfirmation = _$deliverRequestCampaignTypeEnum_ticketConfirmation;

  static Serializer<DeliverRequestCampaignTypeEnum> get serializer => _$deliverRequestCampaignTypeEnumSerializer;

  const DeliverRequestCampaignTypeEnum._(String name): super(name);

  static BuiltSet<DeliverRequestCampaignTypeEnum> get values => _$deliverRequestCampaignTypeEnumValues;
  static DeliverRequestCampaignTypeEnum valueOf(String name) => _$deliverRequestCampaignTypeEnumValueOf(name);
}

