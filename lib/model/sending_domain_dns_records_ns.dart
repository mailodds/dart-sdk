//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingDomainDnsRecordsNs {
  /// Returns a new [SendingDomainDnsRecordsNs] instance.
  SendingDomainDnsRecordsNs({
    this.type,
    this.host,
    this.targets = const [],
    this.status,
    this.verifiedAt,
  });

  /// Record type (NS)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// NS record host (mo.yourdomain.com)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// NS target servers
  List<String> targets;

  /// Verification status
  SendingDomainDnsRecordsNsStatusEnum? status;

  DateTime? verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomainDnsRecordsNs &&
    other.type == type &&
    other.host == host &&
    _deepEquality.equals(other.targets, targets) &&
    other.status == status &&
    other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (targets.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode);

  @override
  String toString() => 'SendingDomainDnsRecordsNs[type=$type, host=$host, targets=$targets, status=$status, verifiedAt=$verifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
      json[r'targets'] = this.targets;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.verifiedAt != null) {
      json[r'verified_at'] = this.verifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'verified_at'] = null;
    }
    return json;
  }

  /// Returns a new [SendingDomainDnsRecordsNs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomainDnsRecordsNs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomainDnsRecordsNs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomainDnsRecordsNs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomainDnsRecordsNs(
        type: mapValueOfType<String>(json, r'type'),
        host: mapValueOfType<String>(json, r'host'),
        targets: json[r'targets'] is Iterable
            ? (json[r'targets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: SendingDomainDnsRecordsNsStatusEnum.fromJson(json[r'status']),
        verifiedAt: mapDateTime(json, r'verified_at', r''),
      );
    }
    return null;
  }

  static List<SendingDomainDnsRecordsNs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainDnsRecordsNs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainDnsRecordsNs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomainDnsRecordsNs> mapFromJson(dynamic json) {
    final map = <String, SendingDomainDnsRecordsNs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomainDnsRecordsNs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomainDnsRecordsNs-objects as value to a dart map
  static Map<String, List<SendingDomainDnsRecordsNs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomainDnsRecordsNs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomainDnsRecordsNs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Verification status
class SendingDomainDnsRecordsNsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingDomainDnsRecordsNsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = SendingDomainDnsRecordsNsStatusEnum._(r'pending');
  static const verified = SendingDomainDnsRecordsNsStatusEnum._(r'verified');

  /// List of all possible values in this [enum][SendingDomainDnsRecordsNsStatusEnum].
  static const values = <SendingDomainDnsRecordsNsStatusEnum>[
    pending,
    verified,
  ];

  static SendingDomainDnsRecordsNsStatusEnum? fromJson(dynamic value) => SendingDomainDnsRecordsNsStatusEnumTypeTransformer().decode(value);

  static List<SendingDomainDnsRecordsNsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainDnsRecordsNsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainDnsRecordsNsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingDomainDnsRecordsNsStatusEnum] to String,
/// and [decode] dynamic data back to [SendingDomainDnsRecordsNsStatusEnum].
class SendingDomainDnsRecordsNsStatusEnumTypeTransformer {
  factory SendingDomainDnsRecordsNsStatusEnumTypeTransformer() => _instance ??= const SendingDomainDnsRecordsNsStatusEnumTypeTransformer._();

  const SendingDomainDnsRecordsNsStatusEnumTypeTransformer._();

  String encode(SendingDomainDnsRecordsNsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingDomainDnsRecordsNsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingDomainDnsRecordsNsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return SendingDomainDnsRecordsNsStatusEnum.pending;
        case r'verified': return SendingDomainDnsRecordsNsStatusEnum.verified;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingDomainDnsRecordsNsStatusEnumTypeTransformer] instance.
  static SendingDomainDnsRecordsNsStatusEnumTypeTransformer? _instance;
}


