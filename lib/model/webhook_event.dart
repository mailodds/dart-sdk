//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEvent {
  /// Returns a new [WebhookEvent] instance.
  WebhookEvent({
    required this.event,
    required this.timestamp,
    this.job,
    this.messageId,
    this.accountId,
    this.domainId,
    this.to,
    this.status,
    this.smtpCode,
    this.smtpResponse,
    this.mxHost,
    this.bounceType,
    this.enhancedStatusCode,
    this.attempts,
    this.isp,
    this.isMpp,
    this.ipAddress,
    this.userAgent,
    this.isBot,
    this.linkUrl,
    this.linkIndex,
  });

  /// Event type
  WebhookEventEventEnum event;

  /// When the event occurred
  DateTime timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Job? job;

  /// Message ID (present for message.* and delivery events)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  /// Account ID (present for delivery events)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  /// Sending domain UUID (present for delivery events)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainId;

  /// Recipient email (present for delivery events)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// Delivery status (present for delivery events)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SMTP response code (present for bounced/deferred/failed)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? smtpCode;

  /// SMTP diagnostic string (present for bounced/deferred/failed)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpResponse;

  /// MX host that handled delivery
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mxHost;

  /// Bounce classification (present for message.bounced)
  WebhookEventBounceTypeEnum? bounceType;

  /// Enhanced SMTP status code (e.g., 5.1.1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enhancedStatusCode;

  /// Number of delivery attempts
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attempts;

  /// Receiving ISP name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isp;

  /// Whether the open was from Apple Mail Privacy Protection
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMpp;

  /// Client IP (present for message.opened/clicked)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  /// Client user agent (present for message.opened/clicked)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  /// Whether the event was triggered by a bot (present for message.opened/clicked)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBot;

  /// Clicked URL (present for message.clicked)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkUrl;

  /// Position of clicked link in message (present for message.clicked)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? linkIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEvent &&
    other.event == event &&
    other.timestamp == timestamp &&
    other.job == job &&
    other.messageId == messageId &&
    other.accountId == accountId &&
    other.domainId == domainId &&
    other.to == to &&
    other.status == status &&
    other.smtpCode == smtpCode &&
    other.smtpResponse == smtpResponse &&
    other.mxHost == mxHost &&
    other.bounceType == bounceType &&
    other.enhancedStatusCode == enhancedStatusCode &&
    other.attempts == attempts &&
    other.isp == isp &&
    other.isMpp == isMpp &&
    other.ipAddress == ipAddress &&
    other.userAgent == userAgent &&
    other.isBot == isBot &&
    other.linkUrl == linkUrl &&
    other.linkIndex == linkIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (event.hashCode) +
    (timestamp.hashCode) +
    (job == null ? 0 : job!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (smtpCode == null ? 0 : smtpCode!.hashCode) +
    (smtpResponse == null ? 0 : smtpResponse!.hashCode) +
    (mxHost == null ? 0 : mxHost!.hashCode) +
    (bounceType == null ? 0 : bounceType!.hashCode) +
    (enhancedStatusCode == null ? 0 : enhancedStatusCode!.hashCode) +
    (attempts == null ? 0 : attempts!.hashCode) +
    (isp == null ? 0 : isp!.hashCode) +
    (isMpp == null ? 0 : isMpp!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (userAgent == null ? 0 : userAgent!.hashCode) +
    (isBot == null ? 0 : isBot!.hashCode) +
    (linkUrl == null ? 0 : linkUrl!.hashCode) +
    (linkIndex == null ? 0 : linkIndex!.hashCode);

  @override
  String toString() => 'WebhookEvent[event=$event, timestamp=$timestamp, job=$job, messageId=$messageId, accountId=$accountId, domainId=$domainId, to=$to, status=$status, smtpCode=$smtpCode, smtpResponse=$smtpResponse, mxHost=$mxHost, bounceType=$bounceType, enhancedStatusCode=$enhancedStatusCode, attempts=$attempts, isp=$isp, isMpp=$isMpp, ipAddress=$ipAddress, userAgent=$userAgent, isBot=$isBot, linkUrl=$linkUrl, linkIndex=$linkIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event'] = this.event;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    if (this.job != null) {
      json[r'job'] = this.job;
    } else {
      json[r'job'] = null;
    }
    if (this.messageId != null) {
      json[r'message_id'] = this.messageId;
    } else {
      json[r'message_id'] = null;
    }
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    if (this.domainId != null) {
      json[r'domain_id'] = this.domainId;
    } else {
      json[r'domain_id'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.smtpCode != null) {
      json[r'smtp_code'] = this.smtpCode;
    } else {
      json[r'smtp_code'] = null;
    }
    if (this.smtpResponse != null) {
      json[r'smtp_response'] = this.smtpResponse;
    } else {
      json[r'smtp_response'] = null;
    }
    if (this.mxHost != null) {
      json[r'mx_host'] = this.mxHost;
    } else {
      json[r'mx_host'] = null;
    }
    if (this.bounceType != null) {
      json[r'bounce_type'] = this.bounceType;
    } else {
      json[r'bounce_type'] = null;
    }
    if (this.enhancedStatusCode != null) {
      json[r'enhanced_status_code'] = this.enhancedStatusCode;
    } else {
      json[r'enhanced_status_code'] = null;
    }
    if (this.attempts != null) {
      json[r'attempts'] = this.attempts;
    } else {
      json[r'attempts'] = null;
    }
    if (this.isp != null) {
      json[r'isp'] = this.isp;
    } else {
      json[r'isp'] = null;
    }
    if (this.isMpp != null) {
      json[r'is_mpp'] = this.isMpp;
    } else {
      json[r'is_mpp'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ip_address'] = this.ipAddress;
    } else {
      json[r'ip_address'] = null;
    }
    if (this.userAgent != null) {
      json[r'user_agent'] = this.userAgent;
    } else {
      json[r'user_agent'] = null;
    }
    if (this.isBot != null) {
      json[r'is_bot'] = this.isBot;
    } else {
      json[r'is_bot'] = null;
    }
    if (this.linkUrl != null) {
      json[r'link_url'] = this.linkUrl;
    } else {
      json[r'link_url'] = null;
    }
    if (this.linkIndex != null) {
      json[r'link_index'] = this.linkIndex;
    } else {
      json[r'link_index'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookEvent(
        event: WebhookEventEventEnum.fromJson(json[r'event'])!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        job: Job.fromJson(json[r'job']),
        messageId: mapValueOfType<String>(json, r'message_id'),
        accountId: mapValueOfType<int>(json, r'account_id'),
        domainId: mapValueOfType<String>(json, r'domain_id'),
        to: mapValueOfType<String>(json, r'to'),
        status: mapValueOfType<String>(json, r'status'),
        smtpCode: mapValueOfType<int>(json, r'smtp_code'),
        smtpResponse: mapValueOfType<String>(json, r'smtp_response'),
        mxHost: mapValueOfType<String>(json, r'mx_host'),
        bounceType: WebhookEventBounceTypeEnum.fromJson(json[r'bounce_type']),
        enhancedStatusCode: mapValueOfType<String>(json, r'enhanced_status_code'),
        attempts: mapValueOfType<int>(json, r'attempts'),
        isp: mapValueOfType<String>(json, r'isp'),
        isMpp: mapValueOfType<bool>(json, r'is_mpp'),
        ipAddress: mapValueOfType<String>(json, r'ip_address'),
        userAgent: mapValueOfType<String>(json, r'user_agent'),
        isBot: mapValueOfType<bool>(json, r'is_bot'),
        linkUrl: mapValueOfType<String>(json, r'link_url'),
        linkIndex: mapValueOfType<int>(json, r'link_index'),
      );
    }
    return null;
  }

  static List<WebhookEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEvent> mapFromJson(dynamic json) {
    final map = <String, WebhookEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEvent-objects as value to a dart map
  static Map<String, List<WebhookEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event',
    'timestamp',
  };
}

/// Event type
class WebhookEventEventEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEventEventEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const jobPeriodCompleted = WebhookEventEventEnum._(r'job.completed');
  static const jobPeriodFailed = WebhookEventEventEnum._(r'job.failed');
  static const messagePeriodQueued = WebhookEventEventEnum._(r'message.queued');
  static const messagePeriodDelivered = WebhookEventEventEnum._(r'message.delivered');
  static const messagePeriodBounced = WebhookEventEventEnum._(r'message.bounced');
  static const messagePeriodDeferred = WebhookEventEventEnum._(r'message.deferred');
  static const messagePeriodFailed = WebhookEventEventEnum._(r'message.failed');
  static const messagePeriodOpened = WebhookEventEventEnum._(r'message.opened');
  static const messagePeriodClicked = WebhookEventEventEnum._(r'message.clicked');
  static const test = WebhookEventEventEnum._(r'test');

  /// List of all possible values in this [enum][WebhookEventEventEnum].
  static const values = <WebhookEventEventEnum>[
    jobPeriodCompleted,
    jobPeriodFailed,
    messagePeriodQueued,
    messagePeriodDelivered,
    messagePeriodBounced,
    messagePeriodDeferred,
    messagePeriodFailed,
    messagePeriodOpened,
    messagePeriodClicked,
    test,
  ];

  static WebhookEventEventEnum? fromJson(dynamic value) => WebhookEventEventEnumTypeTransformer().decode(value);

  static List<WebhookEventEventEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEventEventEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventEventEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEventEventEnum] to String,
/// and [decode] dynamic data back to [WebhookEventEventEnum].
class WebhookEventEventEnumTypeTransformer {
  factory WebhookEventEventEnumTypeTransformer() => _instance ??= const WebhookEventEventEnumTypeTransformer._();

  const WebhookEventEventEnumTypeTransformer._();

  String encode(WebhookEventEventEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEventEventEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEventEventEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'job.completed': return WebhookEventEventEnum.jobPeriodCompleted;
        case r'job.failed': return WebhookEventEventEnum.jobPeriodFailed;
        case r'message.queued': return WebhookEventEventEnum.messagePeriodQueued;
        case r'message.delivered': return WebhookEventEventEnum.messagePeriodDelivered;
        case r'message.bounced': return WebhookEventEventEnum.messagePeriodBounced;
        case r'message.deferred': return WebhookEventEventEnum.messagePeriodDeferred;
        case r'message.failed': return WebhookEventEventEnum.messagePeriodFailed;
        case r'message.opened': return WebhookEventEventEnum.messagePeriodOpened;
        case r'message.clicked': return WebhookEventEventEnum.messagePeriodClicked;
        case r'test': return WebhookEventEventEnum.test;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEventEventEnumTypeTransformer] instance.
  static WebhookEventEventEnumTypeTransformer? _instance;
}


/// Bounce classification (present for message.bounced)
class WebhookEventBounceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEventBounceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const hard = WebhookEventBounceTypeEnum._(r'hard');
  static const soft = WebhookEventBounceTypeEnum._(r'soft');

  /// List of all possible values in this [enum][WebhookEventBounceTypeEnum].
  static const values = <WebhookEventBounceTypeEnum>[
    hard,
    soft,
  ];

  static WebhookEventBounceTypeEnum? fromJson(dynamic value) => WebhookEventBounceTypeEnumTypeTransformer().decode(value);

  static List<WebhookEventBounceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEventBounceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventBounceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEventBounceTypeEnum] to String,
/// and [decode] dynamic data back to [WebhookEventBounceTypeEnum].
class WebhookEventBounceTypeEnumTypeTransformer {
  factory WebhookEventBounceTypeEnumTypeTransformer() => _instance ??= const WebhookEventBounceTypeEnumTypeTransformer._();

  const WebhookEventBounceTypeEnumTypeTransformer._();

  String encode(WebhookEventBounceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEventBounceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEventBounceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'hard': return WebhookEventBounceTypeEnum.hard;
        case r'soft': return WebhookEventBounceTypeEnum.soft;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEventBounceTypeEnumTypeTransformer] instance.
  static WebhookEventBounceTypeEnumTypeTransformer? _instance;
}


