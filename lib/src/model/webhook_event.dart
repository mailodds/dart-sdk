//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/job.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_event.g.dart';

/// Webhook payload delivered to your endpoint. Fields vary by event type.
///
/// Properties:
/// * [event] - Event type
/// * [timestamp] - When the event occurred
/// * [job] 
/// * [messageId] - Message ID (present for message.* and delivery events)
/// * [accountId] - Account ID (present for delivery events)
/// * [domainId] - Sending domain UUID (present for delivery events)
/// * [to] - Recipient email (present for delivery events)
/// * [status] - Delivery status (present for delivery events)
/// * [smtpCode] - SMTP response code (present for bounced/deferred/failed)
/// * [smtpResponse] - SMTP diagnostic string (present for bounced/deferred/failed)
/// * [mxHost] - MX host that handled delivery
/// * [bounceType] - Bounce classification (present for message.bounced)
/// * [enhancedStatusCode] - Enhanced SMTP status code (e.g., 5.1.1)
/// * [attempts] - Number of delivery attempts
/// * [isp] - Receiving ISP name
/// * [isMpp] - Whether the open was from Apple Mail Privacy Protection
/// * [ipAddress] - Client IP (present for message.opened/clicked)
/// * [userAgent] - Client user agent (present for message.opened/clicked)
/// * [isBot] - Whether the event was triggered by a bot (present for message.opened/clicked)
/// * [linkUrl] - Clicked URL (present for message.clicked)
/// * [linkIndex] - Position of clicked link in message (present for message.clicked)
@BuiltValue()
abstract class WebhookEvent implements Built<WebhookEvent, WebhookEventBuilder> {
  /// Event type
  @BuiltValueField(wireName: r'event')
  WebhookEventEventEnum get event;
  // enum eventEnum {  job.completed,  job.failed,  message.queued,  message.delivered,  message.bounced,  message.deferred,  message.failed,  message.opened,  message.clicked,  test,  };

  /// When the event occurred
  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  @BuiltValueField(wireName: r'job')
  Job? get job;

  /// Message ID (present for message.* and delivery events)
  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  /// Account ID (present for delivery events)
  @BuiltValueField(wireName: r'account_id')
  int? get accountId;

  /// Sending domain UUID (present for delivery events)
  @BuiltValueField(wireName: r'domain_id')
  String? get domainId;

  /// Recipient email (present for delivery events)
  @BuiltValueField(wireName: r'to')
  String? get to;

  /// Delivery status (present for delivery events)
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// SMTP response code (present for bounced/deferred/failed)
  @BuiltValueField(wireName: r'smtp_code')
  int? get smtpCode;

  /// SMTP diagnostic string (present for bounced/deferred/failed)
  @BuiltValueField(wireName: r'smtp_response')
  String? get smtpResponse;

  /// MX host that handled delivery
  @BuiltValueField(wireName: r'mx_host')
  String? get mxHost;

  /// Bounce classification (present for message.bounced)
  @BuiltValueField(wireName: r'bounce_type')
  WebhookEventBounceTypeEnum? get bounceType;
  // enum bounceTypeEnum {  hard,  soft,  };

  /// Enhanced SMTP status code (e.g., 5.1.1)
  @BuiltValueField(wireName: r'enhanced_status_code')
  String? get enhancedStatusCode;

  /// Number of delivery attempts
  @BuiltValueField(wireName: r'attempts')
  int? get attempts;

  /// Receiving ISP name
  @BuiltValueField(wireName: r'isp')
  String? get isp;

  /// Whether the open was from Apple Mail Privacy Protection
  @BuiltValueField(wireName: r'is_mpp')
  bool? get isMpp;

  /// Client IP (present for message.opened/clicked)
  @BuiltValueField(wireName: r'ip_address')
  String? get ipAddress;

  /// Client user agent (present for message.opened/clicked)
  @BuiltValueField(wireName: r'user_agent')
  String? get userAgent;

  /// Whether the event was triggered by a bot (present for message.opened/clicked)
  @BuiltValueField(wireName: r'is_bot')
  bool? get isBot;

  /// Clicked URL (present for message.clicked)
  @BuiltValueField(wireName: r'link_url')
  String? get linkUrl;

  /// Position of clicked link in message (present for message.clicked)
  @BuiltValueField(wireName: r'link_index')
  int? get linkIndex;

  WebhookEvent._();

  factory WebhookEvent([void updates(WebhookEventBuilder b)]) = _$WebhookEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookEvent> get serializer => _$WebhookEventSerializer();
}

class _$WebhookEventSerializer implements PrimitiveSerializer<WebhookEvent> {
  @override
  final Iterable<Type> types = const [WebhookEvent, _$WebhookEvent];

  @override
  final String wireName = r'WebhookEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(WebhookEventEventEnum),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
    if (object.job != null) {
      yield r'job';
      yield serializers.serialize(
        object.job,
        specifiedType: const FullType(Job),
      );
    }
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountId != null) {
      yield r'account_id';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType(int),
      );
    }
    if (object.domainId != null) {
      yield r'domain_id';
      yield serializers.serialize(
        object.domainId,
        specifiedType: const FullType(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
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
    if (object.smtpCode != null) {
      yield r'smtp_code';
      yield serializers.serialize(
        object.smtpCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.smtpResponse != null) {
      yield r'smtp_response';
      yield serializers.serialize(
        object.smtpResponse,
        specifiedType: const FullType(String),
      );
    }
    if (object.mxHost != null) {
      yield r'mx_host';
      yield serializers.serialize(
        object.mxHost,
        specifiedType: const FullType(String),
      );
    }
    if (object.bounceType != null) {
      yield r'bounce_type';
      yield serializers.serialize(
        object.bounceType,
        specifiedType: const FullType.nullable(WebhookEventBounceTypeEnum),
      );
    }
    if (object.enhancedStatusCode != null) {
      yield r'enhanced_status_code';
      yield serializers.serialize(
        object.enhancedStatusCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.attempts != null) {
      yield r'attempts';
      yield serializers.serialize(
        object.attempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.isp != null) {
      yield r'isp';
      yield serializers.serialize(
        object.isp,
        specifiedType: const FullType(String),
      );
    }
    if (object.isMpp != null) {
      yield r'is_mpp';
      yield serializers.serialize(
        object.isMpp,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ipAddress != null) {
      yield r'ip_address';
      yield serializers.serialize(
        object.ipAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.userAgent != null) {
      yield r'user_agent';
      yield serializers.serialize(
        object.userAgent,
        specifiedType: const FullType(String),
      );
    }
    if (object.isBot != null) {
      yield r'is_bot';
      yield serializers.serialize(
        object.isBot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.linkUrl != null) {
      yield r'link_url';
      yield serializers.serialize(
        object.linkUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.linkIndex != null) {
      yield r'link_index';
      yield serializers.serialize(
        object.linkIndex,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookEventEventEnum),
          ) as WebhookEventEventEnum;
          result.event = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'job':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Job),
          ) as Job;
          result.job.replace(valueDes);
          break;
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'account_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountId = valueDes;
          break;
        case r'domain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainId = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'smtp_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.smtpCode = valueDes;
          break;
        case r'smtp_response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.smtpResponse = valueDes;
          break;
        case r'mx_host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mxHost = valueDes;
          break;
        case r'bounce_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WebhookEventBounceTypeEnum),
          ) as WebhookEventBounceTypeEnum?;
          if (valueDes == null) continue;
          result.bounceType = valueDes;
          break;
        case r'enhanced_status_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enhancedStatusCode = valueDes;
          break;
        case r'attempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.attempts = valueDes;
          break;
        case r'isp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isp = valueDes;
          break;
        case r'is_mpp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isMpp = valueDes;
          break;
        case r'ip_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipAddress = valueDes;
          break;
        case r'user_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userAgent = valueDes;
          break;
        case r'is_bot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isBot = valueDes;
          break;
        case r'link_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.linkUrl = valueDes;
          break;
        case r'link_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.linkIndex = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookEventBuilder();
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

class WebhookEventEventEnum extends EnumClass {

  /// Event type
  @BuiltValueEnumConst(wireName: r'job.completed')
  static const WebhookEventEventEnum jobPeriodCompleted = _$webhookEventEventEnum_jobPeriodCompleted;
  /// Event type
  @BuiltValueEnumConst(wireName: r'job.failed')
  static const WebhookEventEventEnum jobPeriodFailed = _$webhookEventEventEnum_jobPeriodFailed;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.queued')
  static const WebhookEventEventEnum messagePeriodQueued = _$webhookEventEventEnum_messagePeriodQueued;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.delivered')
  static const WebhookEventEventEnum messagePeriodDelivered = _$webhookEventEventEnum_messagePeriodDelivered;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.bounced')
  static const WebhookEventEventEnum messagePeriodBounced = _$webhookEventEventEnum_messagePeriodBounced;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.deferred')
  static const WebhookEventEventEnum messagePeriodDeferred = _$webhookEventEventEnum_messagePeriodDeferred;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.failed')
  static const WebhookEventEventEnum messagePeriodFailed = _$webhookEventEventEnum_messagePeriodFailed;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.opened')
  static const WebhookEventEventEnum messagePeriodOpened = _$webhookEventEventEnum_messagePeriodOpened;
  /// Event type
  @BuiltValueEnumConst(wireName: r'message.clicked')
  static const WebhookEventEventEnum messagePeriodClicked = _$webhookEventEventEnum_messagePeriodClicked;
  /// Event type
  @BuiltValueEnumConst(wireName: r'test')
  static const WebhookEventEventEnum test = _$webhookEventEventEnum_test;

  static Serializer<WebhookEventEventEnum> get serializer => _$webhookEventEventEnumSerializer;

  const WebhookEventEventEnum._(String name): super(name);

  static BuiltSet<WebhookEventEventEnum> get values => _$webhookEventEventEnumValues;
  static WebhookEventEventEnum valueOf(String name) => _$webhookEventEventEnumValueOf(name);
}

class WebhookEventBounceTypeEnum extends EnumClass {

  /// Bounce classification (present for message.bounced)
  @BuiltValueEnumConst(wireName: r'hard')
  static const WebhookEventBounceTypeEnum hard = _$webhookEventBounceTypeEnum_hard;
  /// Bounce classification (present for message.bounced)
  @BuiltValueEnumConst(wireName: r'soft')
  static const WebhookEventBounceTypeEnum soft = _$webhookEventBounceTypeEnum_soft;

  static Serializer<WebhookEventBounceTypeEnum> get serializer => _$webhookEventBounceTypeEnumSerializer;

  const WebhookEventBounceTypeEnum._(String name): super(name);

  static BuiltSet<WebhookEventBounceTypeEnum> get values => _$webhookEventBounceTypeEnumValues;
  static WebhookEventBounceTypeEnum valueOf(String name) => _$webhookEventBounceTypeEnumValueOf(name);
}

