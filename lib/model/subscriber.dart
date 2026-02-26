//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Subscriber {
  /// Returns a new [Subscriber] instance.
  Subscriber({
    this.id,
    this.listId,
    this.email,
    this.name,
    this.status,
    this.consentSourceIp,
    this.consentPageUrl,
    this.consentFormId,
    this.consentTimestamp,
    this.confirmedAt,
    this.unsubscribedAt,
    this.validationResult,
    this.metadata,
    this.createdAt,
  });

  /// Subscriber UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// List UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  String? name;

  SubscriberStatusEnum? status;

  /// IP address of subscription
  String? consentSourceIp;

  /// Page URL where form was submitted
  String? consentPageUrl;

  /// Form identifier
  String? consentFormId;

  DateTime? consentTimestamp;

  DateTime? confirmedAt;

  DateTime? unsubscribedAt;

  /// Email validation result
  Object? validationResult;

  /// Custom metadata
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Subscriber &&
    other.id == id &&
    other.listId == listId &&
    other.email == email &&
    other.name == name &&
    other.status == status &&
    other.consentSourceIp == consentSourceIp &&
    other.consentPageUrl == consentPageUrl &&
    other.consentFormId == consentFormId &&
    other.consentTimestamp == consentTimestamp &&
    other.confirmedAt == confirmedAt &&
    other.unsubscribedAt == unsubscribedAt &&
    other.validationResult == validationResult &&
    other.metadata == metadata &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (listId == null ? 0 : listId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (consentSourceIp == null ? 0 : consentSourceIp!.hashCode) +
    (consentPageUrl == null ? 0 : consentPageUrl!.hashCode) +
    (consentFormId == null ? 0 : consentFormId!.hashCode) +
    (consentTimestamp == null ? 0 : consentTimestamp!.hashCode) +
    (confirmedAt == null ? 0 : confirmedAt!.hashCode) +
    (unsubscribedAt == null ? 0 : unsubscribedAt!.hashCode) +
    (validationResult == null ? 0 : validationResult!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'Subscriber[id=$id, listId=$listId, email=$email, name=$name, status=$status, consentSourceIp=$consentSourceIp, consentPageUrl=$consentPageUrl, consentFormId=$consentFormId, consentTimestamp=$consentTimestamp, confirmedAt=$confirmedAt, unsubscribedAt=$unsubscribedAt, validationResult=$validationResult, metadata=$metadata, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.listId != null) {
      json[r'list_id'] = this.listId;
    } else {
      json[r'list_id'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.consentSourceIp != null) {
      json[r'consent_source_ip'] = this.consentSourceIp;
    } else {
      json[r'consent_source_ip'] = null;
    }
    if (this.consentPageUrl != null) {
      json[r'consent_page_url'] = this.consentPageUrl;
    } else {
      json[r'consent_page_url'] = null;
    }
    if (this.consentFormId != null) {
      json[r'consent_form_id'] = this.consentFormId;
    } else {
      json[r'consent_form_id'] = null;
    }
    if (this.consentTimestamp != null) {
      json[r'consent_timestamp'] = this.consentTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'consent_timestamp'] = null;
    }
    if (this.confirmedAt != null) {
      json[r'confirmed_at'] = this.confirmedAt!.toUtc().toIso8601String();
    } else {
      json[r'confirmed_at'] = null;
    }
    if (this.unsubscribedAt != null) {
      json[r'unsubscribed_at'] = this.unsubscribedAt!.toUtc().toIso8601String();
    } else {
      json[r'unsubscribed_at'] = null;
    }
    if (this.validationResult != null) {
      json[r'validation_result'] = this.validationResult;
    } else {
      json[r'validation_result'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [Subscriber] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Subscriber? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Subscriber[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Subscriber[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Subscriber(
        id: mapValueOfType<String>(json, r'id'),
        listId: mapValueOfType<String>(json, r'list_id'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        status: SubscriberStatusEnum.fromJson(json[r'status']),
        consentSourceIp: mapValueOfType<String>(json, r'consent_source_ip'),
        consentPageUrl: mapValueOfType<String>(json, r'consent_page_url'),
        consentFormId: mapValueOfType<String>(json, r'consent_form_id'),
        consentTimestamp: mapDateTime(json, r'consent_timestamp', r''),
        confirmedAt: mapDateTime(json, r'confirmed_at', r''),
        unsubscribedAt: mapDateTime(json, r'unsubscribed_at', r''),
        validationResult: mapValueOfType<Object>(json, r'validation_result'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<Subscriber> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Subscriber>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Subscriber.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Subscriber> mapFromJson(dynamic json) {
    final map = <String, Subscriber>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Subscriber.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Subscriber-objects as value to a dart map
  static Map<String, List<Subscriber>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Subscriber>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Subscriber.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SubscriberStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SubscriberStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = SubscriberStatusEnum._(r'pending');
  static const confirmed = SubscriberStatusEnum._(r'confirmed');
  static const unsubscribed = SubscriberStatusEnum._(r'unsubscribed');
  static const bounced = SubscriberStatusEnum._(r'bounced');

  /// List of all possible values in this [enum][SubscriberStatusEnum].
  static const values = <SubscriberStatusEnum>[
    pending,
    confirmed,
    unsubscribed,
    bounced,
  ];

  static SubscriberStatusEnum? fromJson(dynamic value) => SubscriberStatusEnumTypeTransformer().decode(value);

  static List<SubscriberStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriberStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriberStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubscriberStatusEnum] to String,
/// and [decode] dynamic data back to [SubscriberStatusEnum].
class SubscriberStatusEnumTypeTransformer {
  factory SubscriberStatusEnumTypeTransformer() => _instance ??= const SubscriberStatusEnumTypeTransformer._();

  const SubscriberStatusEnumTypeTransformer._();

  String encode(SubscriberStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubscriberStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubscriberStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return SubscriberStatusEnum.pending;
        case r'confirmed': return SubscriberStatusEnum.confirmed;
        case r'unsubscribed': return SubscriberStatusEnum.unsubscribed;
        case r'bounced': return SubscriberStatusEnum.bounced;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubscriberStatusEnumTypeTransformer] instance.
  static SubscriberStatusEnumTypeTransformer? _instance;
}


