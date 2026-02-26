//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingDomain {
  /// Returns a new [SendingDomain] instance.
  SendingDomain({
    this.id,
    this.domain,
    this.domainType,
    this.status,
    this.dkimSelector,
    this.dnsRecords,
    this.bimiSvgUrl,
    this.bimiVmcUrl,
    this.bimiEnabled,
    this.forwardRepliesTo,
    this.createdAt,
    this.updatedAt,
  });

  /// Domain UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Domain name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// Domain type (ns_delegated)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainType;

  /// Domain verification status
  SendingDomainStatusEnum? status;

  /// DKIM selector (e.g. mo1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dkimSelector;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainDnsRecords? dnsRecords;

  /// BIMI SVG logo URL
  String? bimiSvgUrl;

  /// BIMI VMC certificate URL
  String? bimiVmcUrl;

  /// Whether BIMI is enabled
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? bimiEnabled;

  /// Reply forwarding address
  String? forwardRepliesTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomain &&
    other.id == id &&
    other.domain == domain &&
    other.domainType == domainType &&
    other.status == status &&
    other.dkimSelector == dkimSelector &&
    other.dnsRecords == dnsRecords &&
    other.bimiSvgUrl == bimiSvgUrl &&
    other.bimiVmcUrl == bimiVmcUrl &&
    other.bimiEnabled == bimiEnabled &&
    other.forwardRepliesTo == forwardRepliesTo &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (domainType == null ? 0 : domainType!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (dkimSelector == null ? 0 : dkimSelector!.hashCode) +
    (dnsRecords == null ? 0 : dnsRecords!.hashCode) +
    (bimiSvgUrl == null ? 0 : bimiSvgUrl!.hashCode) +
    (bimiVmcUrl == null ? 0 : bimiVmcUrl!.hashCode) +
    (bimiEnabled == null ? 0 : bimiEnabled!.hashCode) +
    (forwardRepliesTo == null ? 0 : forwardRepliesTo!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'SendingDomain[id=$id, domain=$domain, domainType=$domainType, status=$status, dkimSelector=$dkimSelector, dnsRecords=$dnsRecords, bimiSvgUrl=$bimiSvgUrl, bimiVmcUrl=$bimiVmcUrl, bimiEnabled=$bimiEnabled, forwardRepliesTo=$forwardRepliesTo, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.domainType != null) {
      json[r'domain_type'] = this.domainType;
    } else {
      json[r'domain_type'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.dkimSelector != null) {
      json[r'dkim_selector'] = this.dkimSelector;
    } else {
      json[r'dkim_selector'] = null;
    }
    if (this.dnsRecords != null) {
      json[r'dns_records'] = this.dnsRecords;
    } else {
      json[r'dns_records'] = null;
    }
    if (this.bimiSvgUrl != null) {
      json[r'bimi_svg_url'] = this.bimiSvgUrl;
    } else {
      json[r'bimi_svg_url'] = null;
    }
    if (this.bimiVmcUrl != null) {
      json[r'bimi_vmc_url'] = this.bimiVmcUrl;
    } else {
      json[r'bimi_vmc_url'] = null;
    }
    if (this.bimiEnabled != null) {
      json[r'bimi_enabled'] = this.bimiEnabled;
    } else {
      json[r'bimi_enabled'] = null;
    }
    if (this.forwardRepliesTo != null) {
      json[r'forward_replies_to'] = this.forwardRepliesTo;
    } else {
      json[r'forward_replies_to'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [SendingDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomain(
        id: mapValueOfType<String>(json, r'id'),
        domain: mapValueOfType<String>(json, r'domain'),
        domainType: mapValueOfType<String>(json, r'domain_type'),
        status: SendingDomainStatusEnum.fromJson(json[r'status']),
        dkimSelector: mapValueOfType<String>(json, r'dkim_selector'),
        dnsRecords: SendingDomainDnsRecords.fromJson(json[r'dns_records']),
        bimiSvgUrl: mapValueOfType<String>(json, r'bimi_svg_url'),
        bimiVmcUrl: mapValueOfType<String>(json, r'bimi_vmc_url'),
        bimiEnabled: mapValueOfType<bool>(json, r'bimi_enabled'),
        forwardRepliesTo: mapValueOfType<String>(json, r'forward_replies_to'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<SendingDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomain> mapFromJson(dynamic json) {
    final map = <String, SendingDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomain-objects as value to a dart map
  static Map<String, List<SendingDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Domain verification status
class SendingDomainStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingDomainStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pendingDns = SendingDomainStatusEnum._(r'pending_dns');
  static const dnsPartial = SendingDomainStatusEnum._(r'dns_partial');
  static const active = SendingDomainStatusEnum._(r'active');
  static const suspended = SendingDomainStatusEnum._(r'suspended');

  /// List of all possible values in this [enum][SendingDomainStatusEnum].
  static const values = <SendingDomainStatusEnum>[
    pendingDns,
    dnsPartial,
    active,
    suspended,
  ];

  static SendingDomainStatusEnum? fromJson(dynamic value) => SendingDomainStatusEnumTypeTransformer().decode(value);

  static List<SendingDomainStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingDomainStatusEnum] to String,
/// and [decode] dynamic data back to [SendingDomainStatusEnum].
class SendingDomainStatusEnumTypeTransformer {
  factory SendingDomainStatusEnumTypeTransformer() => _instance ??= const SendingDomainStatusEnumTypeTransformer._();

  const SendingDomainStatusEnumTypeTransformer._();

  String encode(SendingDomainStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingDomainStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingDomainStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending_dns': return SendingDomainStatusEnum.pendingDns;
        case r'dns_partial': return SendingDomainStatusEnum.dnsPartial;
        case r'active': return SendingDomainStatusEnum.active;
        case r'suspended': return SendingDomainStatusEnum.suspended;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingDomainStatusEnumTypeTransformer] instance.
  static SendingDomainStatusEnumTypeTransformer? _instance;
}


