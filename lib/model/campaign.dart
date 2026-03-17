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
    required this.name,
    required this.status,
    required this.listId,
    required this.domainId,
    required this.fromEmail,
    this.fromName,
    this.replyTo,
    this.scheduledAt,
    this.sentAt,
    this.cancelledAt,
    this.variantCount,
    this.stats,
    required this.createdAt,
    this.updatedAt,
  });

  /// Campaign UUID
  String id;

  /// Campaign name
  String name;

  CampaignStatusEnum status;

  /// Target subscriber list UUID
  String listId;

  /// Sending domain UUID
  String domainId;

  String fromEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromName;

  String? replyTo;

  DateTime? scheduledAt;

  DateTime? sentAt;

  DateTime? cancelledAt;

  /// Number of A/B variants
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? variantCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CampaignStats? stats;

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
    other.name == name &&
    other.status == status &&
    other.listId == listId &&
    other.domainId == domainId &&
    other.fromEmail == fromEmail &&
    other.fromName == fromName &&
    other.replyTo == replyTo &&
    other.scheduledAt == scheduledAt &&
    other.sentAt == sentAt &&
    other.cancelledAt == cancelledAt &&
    other.variantCount == variantCount &&
    other.stats == stats &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (listId.hashCode) +
    (domainId.hashCode) +
    (fromEmail.hashCode) +
    (fromName == null ? 0 : fromName!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (scheduledAt == null ? 0 : scheduledAt!.hashCode) +
    (sentAt == null ? 0 : sentAt!.hashCode) +
    (cancelledAt == null ? 0 : cancelledAt!.hashCode) +
    (variantCount == null ? 0 : variantCount!.hashCode) +
    (stats == null ? 0 : stats!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Campaign[id=$id, name=$name, status=$status, listId=$listId, domainId=$domainId, fromEmail=$fromEmail, fromName=$fromName, replyTo=$replyTo, scheduledAt=$scheduledAt, sentAt=$sentAt, cancelledAt=$cancelledAt, variantCount=$variantCount, stats=$stats, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'list_id'] = this.listId;
      json[r'domain_id'] = this.domainId;
      json[r'from_email'] = this.fromEmail;
    if (this.fromName != null) {
      json[r'from_name'] = this.fromName;
    } else {
      json[r'from_name'] = null;
    }
    if (this.replyTo != null) {
      json[r'reply_to'] = this.replyTo;
    } else {
      json[r'reply_to'] = null;
    }
    if (this.scheduledAt != null) {
      json[r'scheduled_at'] = this.scheduledAt!.toUtc().toIso8601String();
    } else {
      json[r'scheduled_at'] = null;
    }
    if (this.sentAt != null) {
      json[r'sent_at'] = this.sentAt!.toUtc().toIso8601String();
    } else {
      json[r'sent_at'] = null;
    }
    if (this.cancelledAt != null) {
      json[r'cancelled_at'] = this.cancelledAt!.toUtc().toIso8601String();
    } else {
      json[r'cancelled_at'] = null;
    }
    if (this.variantCount != null) {
      json[r'variant_count'] = this.variantCount;
    } else {
      json[r'variant_count'] = null;
    }
    if (this.stats != null) {
      json[r'stats'] = this.stats;
    } else {
      json[r'stats'] = null;
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
        name: mapValueOfType<String>(json, r'name')!,
        status: CampaignStatusEnum.fromJson(json[r'status'])!,
        listId: mapValueOfType<String>(json, r'list_id')!,
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        fromEmail: mapValueOfType<String>(json, r'from_email')!,
        fromName: mapValueOfType<String>(json, r'from_name'),
        replyTo: mapValueOfType<String>(json, r'reply_to'),
        scheduledAt: mapDateTime(json, r'scheduled_at', r''),
        sentAt: mapDateTime(json, r'sent_at', r''),
        cancelledAt: mapDateTime(json, r'cancelled_at', r''),
        variantCount: mapValueOfType<int>(json, r'variant_count'),
        stats: CampaignStats.fromJson(json[r'stats']),
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
    'list_id',
    'domain_id',
    'from_email',
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


