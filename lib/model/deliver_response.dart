//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverResponse {
  /// Returns a new [DeliverResponse] instance.
  DeliverResponse({
    this.messageId,
    this.status,
    this.delivery,
    this.validation,
    this.contentScan,
  });

  /// Unique message identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  /// Delivery status
  DeliverResponseStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeliverResponseDelivery? delivery;

  /// Pre-send validation results (when validate_first is true)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? validation;

  /// Content scan results
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? contentScan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverResponse &&
    other.messageId == messageId &&
    other.status == status &&
    other.delivery == delivery &&
    other.validation == validation &&
    other.contentScan == contentScan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageId == null ? 0 : messageId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (delivery == null ? 0 : delivery!.hashCode) +
    (validation == null ? 0 : validation!.hashCode) +
    (contentScan == null ? 0 : contentScan!.hashCode);

  @override
  String toString() => 'DeliverResponse[messageId=$messageId, status=$status, delivery=$delivery, validation=$validation, contentScan=$contentScan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messageId != null) {
      json[r'message_id'] = this.messageId;
    } else {
      json[r'message_id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.delivery != null) {
      json[r'delivery'] = this.delivery;
    } else {
      json[r'delivery'] = null;
    }
    if (this.validation != null) {
      json[r'validation'] = this.validation;
    } else {
      json[r'validation'] = null;
    }
    if (this.contentScan != null) {
      json[r'content_scan'] = this.contentScan;
    } else {
      json[r'content_scan'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverResponse(
        messageId: mapValueOfType<String>(json, r'message_id'),
        status: DeliverResponseStatusEnum.fromJson(json[r'status']),
        delivery: DeliverResponseDelivery.fromJson(json[r'delivery']),
        validation: mapValueOfType<Object>(json, r'validation'),
        contentScan: mapValueOfType<Object>(json, r'content_scan'),
      );
    }
    return null;
  }

  static List<DeliverResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverResponse> mapFromJson(dynamic json) {
    final map = <String, DeliverResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverResponse-objects as value to a dart map
  static Map<String, List<DeliverResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Delivery status
class DeliverResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const queued = DeliverResponseStatusEnum._(r'queued');

  /// List of all possible values in this [enum][DeliverResponseStatusEnum].
  static const values = <DeliverResponseStatusEnum>[
    queued,
  ];

  static DeliverResponseStatusEnum? fromJson(dynamic value) => DeliverResponseStatusEnumTypeTransformer().decode(value);

  static List<DeliverResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverResponseStatusEnum] to String,
/// and [decode] dynamic data back to [DeliverResponseStatusEnum].
class DeliverResponseStatusEnumTypeTransformer {
  factory DeliverResponseStatusEnumTypeTransformer() => _instance ??= const DeliverResponseStatusEnumTypeTransformer._();

  const DeliverResponseStatusEnumTypeTransformer._();

  String encode(DeliverResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'queued': return DeliverResponseStatusEnum.queued;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverResponseStatusEnumTypeTransformer] instance.
  static DeliverResponseStatusEnumTypeTransformer? _instance;
}


