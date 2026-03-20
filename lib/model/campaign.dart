//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class Campaign {
  /// Returns a new [Campaign] instance.
  Campaign({
    required this.id,
    this.accountId,
    required this.name,
    required this.status,
    required this.domainId,
    this.subject,
    required this.fromAddress,
    this.replyTo,
    this.htmlBody,
    this.textBody,
    this.htmlBodyDark,
    this.textBodyDark,
    this.campaignType,
    this.autoDetectSchema,
    this.promoAnnotations,
    this.throwawayPolicy,
    this.scheduledAt,
    this.startedAt,
    this.completedAt,
    this.recipientCount,
    this.isAbTest,
    this.winningVariantId,
    this.abTestConfig,
    this.errorMessage,
    this.stats,
    this.openRate,
    this.clickRate,
    required this.createdAt,
    this.updatedAt,
  });

  /// Campaign UUID
  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  /// Campaign name
  String name;

  CampaignStatusEnum status;

  /// Sending domain UUID
  String domainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Sender email address
  String fromAddress;

  String? replyTo;

  String? htmlBody;

  String? textBody;

  String? htmlBodyDark;

  String? textBodyDark;

  String? campaignType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoDetectSchema;

  Object? promoAnnotations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? throwawayPolicy;

  DateTime? scheduledAt;

  DateTime? startedAt;

  DateTime? completedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recipientCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAbTest;

  String? winningVariantId;

  Object? abTestConfig;

  String? errorMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CampaignStats? stats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? openRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clickRate;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Campaign &&
    other.id == id &&
    other.accountId == accountId &&
    other.name == name &&
    other.status == status &&
    other.domainId == domainId &&
    other.subject == subject &&
    other.fromAddress == fromAddress &&
    other.replyTo == replyTo &&
    other.htmlBody == htmlBody &&
    other.textBody == textBody &&
    other.htmlBodyDark == htmlBodyDark &&
    other.textBodyDark == textBodyDark &&
    other.campaignType == campaignType &&
    other.autoDetectSchema == autoDetectSchema &&
    other.promoAnnotations == promoAnnotations &&
    other.throwawayPolicy == throwawayPolicy &&
    other.scheduledAt == scheduledAt &&
    other.startedAt == startedAt &&
    other.completedAt == completedAt &&
    other.recipientCount == recipientCount &&
    other.isAbTest == isAbTest &&
    other.winningVariantId == winningVariantId &&
    other.abTestConfig == abTestConfig &&
    other.errorMessage == errorMessage &&
    other.stats == stats &&
    other.openRate == openRate &&
    other.clickRate == clickRate &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (domainId.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (fromAddress.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (htmlBody == null ? 0 : htmlBody!.hashCode) +
    (textBody == null ? 0 : textBody!.hashCode) +
    (htmlBodyDark == null ? 0 : htmlBodyDark!.hashCode) +
    (textBodyDark == null ? 0 : textBodyDark!.hashCode) +
    (campaignType == null ? 0 : campaignType!.hashCode) +
    (autoDetectSchema == null ? 0 : autoDetectSchema!.hashCode) +
    (promoAnnotations == null ? 0 : promoAnnotations!.hashCode) +
    (throwawayPolicy == null ? 0 : throwawayPolicy!.hashCode) +
    (scheduledAt == null ? 0 : scheduledAt!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (recipientCount == null ? 0 : recipientCount!.hashCode) +
    (isAbTest == null ? 0 : isAbTest!.hashCode) +
    (winningVariantId == null ? 0 : winningVariantId!.hashCode) +
    (abTestConfig == null ? 0 : abTestConfig!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (stats == null ? 0 : stats!.hashCode) +
    (openRate == null ? 0 : openRate!.hashCode) +
    (clickRate == null ? 0 : clickRate!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Campaign[id=$id, accountId=$accountId, name=$name, status=$status, domainId=$domainId, subject=$subject, fromAddress=$fromAddress, replyTo=$replyTo, htmlBody=$htmlBody, textBody=$textBody, htmlBodyDark=$htmlBodyDark, textBodyDark=$textBodyDark, campaignType=$campaignType, autoDetectSchema=$autoDetectSchema, promoAnnotations=$promoAnnotations, throwawayPolicy=$throwawayPolicy, scheduledAt=$scheduledAt, startedAt=$startedAt, completedAt=$completedAt, recipientCount=$recipientCount, isAbTest=$isAbTest, winningVariantId=$winningVariantId, abTestConfig=$abTestConfig, errorMessage=$errorMessage, stats=$stats, openRate=$openRate, clickRate=$clickRate, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'domain_id'] = this.domainId;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'from_address'] = this.fromAddress;
    if (this.replyTo != null) {
      json[r'reply_to'] = this.replyTo;
    } else {
      json[r'reply_to'] = null;
    }
    if (this.htmlBody != null) {
      json[r'html_body'] = this.htmlBody;
    } else {
      json[r'html_body'] = null;
    }
    if (this.textBody != null) {
      json[r'text_body'] = this.textBody;
    } else {
      json[r'text_body'] = null;
    }
    if (this.htmlBodyDark != null) {
      json[r'html_body_dark'] = this.htmlBodyDark;
    } else {
      json[r'html_body_dark'] = null;
    }
    if (this.textBodyDark != null) {
      json[r'text_body_dark'] = this.textBodyDark;
    } else {
      json[r'text_body_dark'] = null;
    }
    if (this.campaignType != null) {
      json[r'campaign_type'] = this.campaignType;
    } else {
      json[r'campaign_type'] = null;
    }
    if (this.autoDetectSchema != null) {
      json[r'auto_detect_schema'] = this.autoDetectSchema;
    } else {
      json[r'auto_detect_schema'] = null;
    }
    if (this.promoAnnotations != null) {
      json[r'promo_annotations'] = this.promoAnnotations;
    } else {
      json[r'promo_annotations'] = null;
    }
    if (this.throwawayPolicy != null) {
      json[r'throwaway_policy'] = this.throwawayPolicy;
    } else {
      json[r'throwaway_policy'] = null;
    }
    if (this.scheduledAt != null) {
      json[r'scheduled_at'] = this.scheduledAt!.toUtc().toIso8601String();
    } else {
      json[r'scheduled_at'] = null;
    }
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'started_at'] = null;
    }
    if (this.completedAt != null) {
      json[r'completed_at'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completed_at'] = null;
    }
    if (this.recipientCount != null) {
      json[r'recipient_count'] = this.recipientCount;
    } else {
      json[r'recipient_count'] = null;
    }
    if (this.isAbTest != null) {
      json[r'is_ab_test'] = this.isAbTest;
    } else {
      json[r'is_ab_test'] = null;
    }
    if (this.winningVariantId != null) {
      json[r'winning_variant_id'] = this.winningVariantId;
    } else {
      json[r'winning_variant_id'] = null;
    }
    if (this.abTestConfig != null) {
      json[r'ab_test_config'] = this.abTestConfig;
    } else {
      json[r'ab_test_config'] = null;
    }
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
    if (this.stats != null) {
      json[r'stats'] = this.stats;
    } else {
      json[r'stats'] = null;
    }
    if (this.openRate != null) {
      json[r'open_rate'] = this.openRate;
    } else {
      json[r'open_rate'] = null;
    }
    if (this.clickRate != null) {
      json[r'click_rate'] = this.clickRate;
    } else {
      json[r'click_rate'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [Campaign] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Campaign? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Campaign[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Campaign[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Campaign(
        id: mapValueOfType<String>(json, r'id')!,
        accountId: mapValueOfType<int>(json, r'account_id'),
        name: mapValueOfType<String>(json, r'name')!,
        status: CampaignStatusEnum.fromJson(json[r'status'])!,
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        subject: mapValueOfType<String>(json, r'subject'),
        fromAddress: mapValueOfType<String>(json, r'from_address')!,
        replyTo: mapValueOfType<String>(json, r'reply_to'),
        htmlBody: mapValueOfType<String>(json, r'html_body'),
        textBody: mapValueOfType<String>(json, r'text_body'),
        htmlBodyDark: mapValueOfType<String>(json, r'html_body_dark'),
        textBodyDark: mapValueOfType<String>(json, r'text_body_dark'),
        campaignType: mapValueOfType<String>(json, r'campaign_type'),
        autoDetectSchema: mapValueOfType<bool>(json, r'auto_detect_schema'),
        promoAnnotations: mapValueOfType<Object>(json, r'promo_annotations'),
        throwawayPolicy: mapValueOfType<String>(json, r'throwaway_policy'),
        scheduledAt: mapDateTime(json, r'scheduled_at', r''),
        startedAt: mapDateTime(json, r'started_at', r''),
        completedAt: mapDateTime(json, r'completed_at', r''),
        recipientCount: mapValueOfType<int>(json, r'recipient_count'),
        isAbTest: mapValueOfType<bool>(json, r'is_ab_test'),
        winningVariantId: mapValueOfType<String>(json, r'winning_variant_id'),
        abTestConfig: mapValueOfType<Object>(json, r'ab_test_config'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        stats: CampaignStats.fromJson(json[r'stats']),
        openRate: num.parse('${json[r'open_rate']}'),
        clickRate: num.parse('${json[r'click_rate']}'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<Campaign> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Campaign>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Campaign.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Campaign> mapFromJson(dynamic json) {
    final map = <String, Campaign>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Campaign.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Campaign-objects as value to a dart map
  static Map<String, List<Campaign>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Campaign>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Campaign.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'status',
    'domain_id',
    'from_address',
    'created_at',
  };
}


class CampaignStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CampaignStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const draft = CampaignStatusEnum._(r'draft');
  static const scheduled = CampaignStatusEnum._(r'scheduled');
  static const sending = CampaignStatusEnum._(r'sending');
  static const sent = CampaignStatusEnum._(r'sent');
  static const cancelled = CampaignStatusEnum._(r'cancelled');

  /// List of all possible values in this [enum][CampaignStatusEnum].
  static const values = <CampaignStatusEnum>[
    draft,
    scheduled,
    sending,
    sent,
    cancelled,
  ];

  static CampaignStatusEnum? fromJson(dynamic value) => CampaignStatusEnumTypeTransformer().decode(value);

  static List<CampaignStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignStatusEnum] to String,
/// and [decode] dynamic data back to [CampaignStatusEnum].
class CampaignStatusEnumTypeTransformer {
  factory CampaignStatusEnumTypeTransformer() => _instance ??= const CampaignStatusEnumTypeTransformer._();

  const CampaignStatusEnumTypeTransformer._();

  String encode(CampaignStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'draft': return CampaignStatusEnum.draft;
        case r'scheduled': return CampaignStatusEnum.scheduled;
        case r'sending': return CampaignStatusEnum.sending;
        case r'sent': return CampaignStatusEnum.sent;
        case r'cancelled': return CampaignStatusEnum.cancelled;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignStatusEnumTypeTransformer] instance.
  static CampaignStatusEnumTypeTransformer? _instance;
}


