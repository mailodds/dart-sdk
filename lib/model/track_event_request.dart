//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackEventRequest {
  /// Returns a new [TrackEventRequest] instance.
  TrackEventRequest({
    required this.eventType,
    required this.email,
    this.properties,
    this.occurredAt,
    this.idempotencyKey,
  });

  /// Type of commerce event
  TrackEventRequestEventTypeEnum eventType;

  /// Email address associated with the event
  String email;

  /// Event-specific data (e.g., order_id, value, product_url)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? properties;

  /// When the event occurred (defaults to now)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? occurredAt;

  /// Unique key to prevent duplicate events (5 min TTL)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idempotencyKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackEventRequest &&
    other.eventType == eventType &&
    other.email == email &&
    other.properties == properties &&
    other.occurredAt == occurredAt &&
    other.idempotencyKey == idempotencyKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventType.hashCode) +
    (email.hashCode) +
    (properties == null ? 0 : properties!.hashCode) +
    (occurredAt == null ? 0 : occurredAt!.hashCode) +
    (idempotencyKey == null ? 0 : idempotencyKey!.hashCode);

  @override
  String toString() => 'TrackEventRequest[eventType=$eventType, email=$email, properties=$properties, occurredAt=$occurredAt, idempotencyKey=$idempotencyKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_type'] = this.eventType;
      json[r'email'] = this.email;
    if (this.properties != null) {
      json[r'properties'] = this.properties;
    } else {
      json[r'properties'] = null;
    }
    if (this.occurredAt != null) {
      json[r'occurred_at'] = this.occurredAt!.toUtc().toIso8601String();
    } else {
      json[r'occurred_at'] = null;
    }
    if (this.idempotencyKey != null) {
      json[r'idempotency_key'] = this.idempotencyKey;
    } else {
      json[r'idempotency_key'] = null;
    }
    return json;
  }

  /// Returns a new [TrackEventRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackEventRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackEventRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackEventRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackEventRequest(
        eventType: TrackEventRequestEventTypeEnum.fromJson(json[r'event_type'])!,
        email: mapValueOfType<String>(json, r'email')!,
        properties: mapValueOfType<Object>(json, r'properties'),
        occurredAt: mapDateTime(json, r'occurred_at', r''),
        idempotencyKey: mapValueOfType<String>(json, r'idempotency_key'),
      );
    }
    return null;
  }

  static List<TrackEventRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackEventRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackEventRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackEventRequest> mapFromJson(dynamic json) {
    final map = <String, TrackEventRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackEventRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackEventRequest-objects as value to a dart map
  static Map<String, List<TrackEventRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackEventRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackEventRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_type',
    'email',
  };
}

/// Type of commerce event
class TrackEventRequestEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TrackEventRequestEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const purchase = TrackEventRequestEventTypeEnum._(r'purchase');
  static const cartAbandon = TrackEventRequestEventTypeEnum._(r'cart_abandon');
  static const browse = TrackEventRequestEventTypeEnum._(r'browse');
  static const wishlist = TrackEventRequestEventTypeEnum._(r'wishlist');
  static const review = TrackEventRequestEventTypeEnum._(r'review');
  static const shadowDnsDwell = TrackEventRequestEventTypeEnum._(r'shadow_dns_dwell');
  static const cssProbe = TrackEventRequestEventTypeEnum._(r'css_probe');
  static const identityStitch = TrackEventRequestEventTypeEnum._(r'identity_stitch');

  /// List of all possible values in this [enum][TrackEventRequestEventTypeEnum].
  static const values = <TrackEventRequestEventTypeEnum>[
    purchase,
    cartAbandon,
    browse,
    wishlist,
    review,
    shadowDnsDwell,
    cssProbe,
    identityStitch,
  ];

  static TrackEventRequestEventTypeEnum? fromJson(dynamic value) => TrackEventRequestEventTypeEnumTypeTransformer().decode(value);

  static List<TrackEventRequestEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackEventRequestEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackEventRequestEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TrackEventRequestEventTypeEnum] to String,
/// and [decode] dynamic data back to [TrackEventRequestEventTypeEnum].
class TrackEventRequestEventTypeEnumTypeTransformer {
  factory TrackEventRequestEventTypeEnumTypeTransformer() => _instance ??= const TrackEventRequestEventTypeEnumTypeTransformer._();

  const TrackEventRequestEventTypeEnumTypeTransformer._();

  String encode(TrackEventRequestEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TrackEventRequestEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TrackEventRequestEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'purchase': return TrackEventRequestEventTypeEnum.purchase;
        case r'cart_abandon': return TrackEventRequestEventTypeEnum.cartAbandon;
        case r'browse': return TrackEventRequestEventTypeEnum.browse;
        case r'wishlist': return TrackEventRequestEventTypeEnum.wishlist;
        case r'review': return TrackEventRequestEventTypeEnum.review;
        case r'shadow_dns_dwell': return TrackEventRequestEventTypeEnum.shadowDnsDwell;
        case r'css_probe': return TrackEventRequestEventTypeEnum.cssProbe;
        case r'identity_stitch': return TrackEventRequestEventTypeEnum.identityStitch;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TrackEventRequestEventTypeEnumTypeTransformer] instance.
  static TrackEventRequestEventTypeEnumTypeTransformer? _instance;
}


