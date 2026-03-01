//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchDeliverResponse {
  /// Returns a new [BatchDeliverResponse] instance.
  BatchDeliverResponse({
    this.schemaVersion,
    this.requestId,
    this.total,
    this.accepted,
    this.rejected = const [],
    this.status,
    this.delivery,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Unique request identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  /// Total recipients submitted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Number of recipients accepted for delivery
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accepted;

  /// Recipients that were rejected (suppressed or failed validation)
  List<BatchDeliverResponseRejectedInner> rejected;

  /// Batch status
  BatchDeliverResponseStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BatchDeliverResponseDelivery? delivery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchDeliverResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.total == total &&
    other.accepted == accepted &&
    _deepEquality.equals(other.rejected, rejected) &&
    other.status == status &&
    other.delivery == delivery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (accepted == null ? 0 : accepted!.hashCode) +
    (rejected.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (delivery == null ? 0 : delivery!.hashCode);

  @override
  String toString() => 'BatchDeliverResponse[schemaVersion=$schemaVersion, requestId=$requestId, total=$total, accepted=$accepted, rejected=$rejected, status=$status, delivery=$delivery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.requestId != null) {
      json[r'request_id'] = this.requestId;
    } else {
      json[r'request_id'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.accepted != null) {
      json[r'accepted'] = this.accepted;
    } else {
      json[r'accepted'] = null;
    }
      json[r'rejected'] = this.rejected;
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
    return json;
  }

  /// Returns a new [BatchDeliverResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchDeliverResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchDeliverResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchDeliverResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchDeliverResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        total: mapValueOfType<int>(json, r'total'),
        accepted: mapValueOfType<int>(json, r'accepted'),
        rejected: BatchDeliverResponseRejectedInner.listFromJson(json[r'rejected']),
        status: BatchDeliverResponseStatusEnum.fromJson(json[r'status']),
        delivery: BatchDeliverResponseDelivery.fromJson(json[r'delivery']),
      );
    }
    return null;
  }

  static List<BatchDeliverResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchDeliverResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchDeliverResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchDeliverResponse> mapFromJson(dynamic json) {
    final map = <String, BatchDeliverResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchDeliverResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchDeliverResponse-objects as value to a dart map
  static Map<String, List<BatchDeliverResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchDeliverResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchDeliverResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Batch status
class BatchDeliverResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BatchDeliverResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const queued = BatchDeliverResponseStatusEnum._(r'queued');
  static const allRejected = BatchDeliverResponseStatusEnum._(r'all_rejected');

  /// List of all possible values in this [enum][BatchDeliverResponseStatusEnum].
  static const values = <BatchDeliverResponseStatusEnum>[
    queued,
    allRejected,
  ];

  static BatchDeliverResponseStatusEnum? fromJson(dynamic value) => BatchDeliverResponseStatusEnumTypeTransformer().decode(value);

  static List<BatchDeliverResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchDeliverResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchDeliverResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BatchDeliverResponseStatusEnum] to String,
/// and [decode] dynamic data back to [BatchDeliverResponseStatusEnum].
class BatchDeliverResponseStatusEnumTypeTransformer {
  factory BatchDeliverResponseStatusEnumTypeTransformer() => _instance ??= const BatchDeliverResponseStatusEnumTypeTransformer._();

  const BatchDeliverResponseStatusEnumTypeTransformer._();

  String encode(BatchDeliverResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BatchDeliverResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BatchDeliverResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'queued': return BatchDeliverResponseStatusEnum.queued;
        case r'all_rejected': return BatchDeliverResponseStatusEnum.allRejected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BatchDeliverResponseStatusEnumTypeTransformer] instance.
  static BatchDeliverResponseStatusEnumTypeTransformer? _instance;
}


