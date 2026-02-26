//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverRequest {
  /// Returns a new [DeliverRequest] instance.
  DeliverRequest({
    this.to = const [],
    required this.from,
    required this.subject,
    this.html,
    this.text,
    required this.domainId,
    this.replyTo,
    this.headers,
    this.tags = const [],
    this.campaignType,
    this.structuredData,
    this.options,
  });

  /// List of recipient email addresses
  List<DeliverRequestToInner> to;

  /// Sender email address (must match sending domain)
  String from;

  /// Email subject line
  String subject;

  /// HTML email body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  /// Plain text email body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Sending domain UUID
  String domainId;

  /// Reply-to address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyTo;

  /// Extra email headers
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? headers;

  /// Tags for categorization
  List<String> tags;

  /// Campaign type for JSON-LD auto-generation
  DeliverRequestCampaignTypeEnum? campaignType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeliverRequestStructuredData? structuredData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeliverRequestOptions? options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverRequest &&
    _deepEquality.equals(other.to, to) &&
    other.from == from &&
    other.subject == subject &&
    other.html == html &&
    other.text == text &&
    other.domainId == domainId &&
    other.replyTo == replyTo &&
    other.headers == headers &&
    _deepEquality.equals(other.tags, tags) &&
    other.campaignType == campaignType &&
    other.structuredData == structuredData &&
    other.options == options;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (from.hashCode) +
    (subject.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (domainId.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (headers == null ? 0 : headers!.hashCode) +
    (tags.hashCode) +
    (campaignType == null ? 0 : campaignType!.hashCode) +
    (structuredData == null ? 0 : structuredData!.hashCode) +
    (options == null ? 0 : options!.hashCode);

  @override
  String toString() => 'DeliverRequest[to=$to, from=$from, subject=$subject, html=$html, text=$text, domainId=$domainId, replyTo=$replyTo, headers=$headers, tags=$tags, campaignType=$campaignType, structuredData=$structuredData, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'from'] = this.from;
      json[r'subject'] = this.subject;
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'domain_id'] = this.domainId;
    if (this.replyTo != null) {
      json[r'reply_to'] = this.replyTo;
    } else {
      json[r'reply_to'] = null;
    }
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.campaignType != null) {
      json[r'campaign_type'] = this.campaignType;
    } else {
      json[r'campaign_type'] = null;
    }
    if (this.structuredData != null) {
      json[r'structured_data'] = this.structuredData;
    } else {
      json[r'structured_data'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverRequest(
        to: DeliverRequestToInner.listFromJson(json[r'to']),
        from: mapValueOfType<String>(json, r'from')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        html: mapValueOfType<String>(json, r'html'),
        text: mapValueOfType<String>(json, r'text'),
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        replyTo: mapValueOfType<String>(json, r'reply_to'),
        headers: mapValueOfType<Object>(json, r'headers'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        campaignType: DeliverRequestCampaignTypeEnum.fromJson(json[r'campaign_type']),
        structuredData: DeliverRequestStructuredData.fromJson(json[r'structured_data']),
        options: DeliverRequestOptions.fromJson(json[r'options']),
      );
    }
    return null;
  }

  static List<DeliverRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverRequest> mapFromJson(dynamic json) {
    final map = <String, DeliverRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverRequest-objects as value to a dart map
  static Map<String, List<DeliverRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
    'from',
    'subject',
    'domain_id',
  };
}

/// Campaign type for JSON-LD auto-generation
class DeliverRequestCampaignTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverRequestCampaignTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const orderConfirmation = DeliverRequestCampaignTypeEnum._(r'order_confirmation');
  static const shippingNotification = DeliverRequestCampaignTypeEnum._(r'shipping_notification');
  static const subscriptionConfirm = DeliverRequestCampaignTypeEnum._(r'subscription_confirm');
  static const reviewRequest = DeliverRequestCampaignTypeEnum._(r'review_request');
  static const eventInvitation = DeliverRequestCampaignTypeEnum._(r'event_invitation');
  static const promotional = DeliverRequestCampaignTypeEnum._(r'promotional');
  static const welcome = DeliverRequestCampaignTypeEnum._(r'welcome');
  static const passwordReset = DeliverRequestCampaignTypeEnum._(r'password_reset');
  static const appointmentReminder = DeliverRequestCampaignTypeEnum._(r'appointment_reminder');
  static const ticketConfirmation = DeliverRequestCampaignTypeEnum._(r'ticket_confirmation');

  /// List of all possible values in this [enum][DeliverRequestCampaignTypeEnum].
  static const values = <DeliverRequestCampaignTypeEnum>[
    orderConfirmation,
    shippingNotification,
    subscriptionConfirm,
    reviewRequest,
    eventInvitation,
    promotional,
    welcome,
    passwordReset,
    appointmentReminder,
    ticketConfirmation,
  ];

  static DeliverRequestCampaignTypeEnum? fromJson(dynamic value) => DeliverRequestCampaignTypeEnumTypeTransformer().decode(value);

  static List<DeliverRequestCampaignTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverRequestCampaignTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverRequestCampaignTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverRequestCampaignTypeEnum] to String,
/// and [decode] dynamic data back to [DeliverRequestCampaignTypeEnum].
class DeliverRequestCampaignTypeEnumTypeTransformer {
  factory DeliverRequestCampaignTypeEnumTypeTransformer() => _instance ??= const DeliverRequestCampaignTypeEnumTypeTransformer._();

  const DeliverRequestCampaignTypeEnumTypeTransformer._();

  String encode(DeliverRequestCampaignTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverRequestCampaignTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverRequestCampaignTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'order_confirmation': return DeliverRequestCampaignTypeEnum.orderConfirmation;
        case r'shipping_notification': return DeliverRequestCampaignTypeEnum.shippingNotification;
        case r'subscription_confirm': return DeliverRequestCampaignTypeEnum.subscriptionConfirm;
        case r'review_request': return DeliverRequestCampaignTypeEnum.reviewRequest;
        case r'event_invitation': return DeliverRequestCampaignTypeEnum.eventInvitation;
        case r'promotional': return DeliverRequestCampaignTypeEnum.promotional;
        case r'welcome': return DeliverRequestCampaignTypeEnum.welcome;
        case r'password_reset': return DeliverRequestCampaignTypeEnum.passwordReset;
        case r'appointment_reminder': return DeliverRequestCampaignTypeEnum.appointmentReminder;
        case r'ticket_confirmation': return DeliverRequestCampaignTypeEnum.ticketConfirmation;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverRequestCampaignTypeEnumTypeTransformer] instance.
  static DeliverRequestCampaignTypeEnumTypeTransformer? _instance;
}


