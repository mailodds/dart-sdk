//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DmarcDomain {
  /// Returns a new [DmarcDomain] instance.
  DmarcDomain({
    this.id,
    this.domain,
    this.reportingAddress,
    this.dnsVerified,
    this.dnsVerifiedAt,
    this.createdAt,
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

  /// DMARC aggregate report receiving address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reportingAddress;

  /// Whether DNS record has been verified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dnsVerified;

  DateTime? dnsVerifiedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DmarcDomain &&
    other.id == id &&
    other.domain == domain &&
    other.reportingAddress == reportingAddress &&
    other.dnsVerified == dnsVerified &&
    other.dnsVerifiedAt == dnsVerifiedAt &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (reportingAddress == null ? 0 : reportingAddress!.hashCode) +
    (dnsVerified == null ? 0 : dnsVerified!.hashCode) +
    (dnsVerifiedAt == null ? 0 : dnsVerifiedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'DmarcDomain[id=$id, domain=$domain, reportingAddress=$reportingAddress, dnsVerified=$dnsVerified, dnsVerifiedAt=$dnsVerifiedAt, createdAt=$createdAt]';

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
    if (this.reportingAddress != null) {
      json[r'reporting_address'] = this.reportingAddress;
    } else {
      json[r'reporting_address'] = null;
    }
    if (this.dnsVerified != null) {
      json[r'dns_verified'] = this.dnsVerified;
    } else {
      json[r'dns_verified'] = null;
    }
    if (this.dnsVerifiedAt != null) {
      json[r'dns_verified_at'] = this.dnsVerifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'dns_verified_at'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [DmarcDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DmarcDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DmarcDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DmarcDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DmarcDomain(
        id: mapValueOfType<String>(json, r'id'),
        domain: mapValueOfType<String>(json, r'domain'),
        reportingAddress: mapValueOfType<String>(json, r'reporting_address'),
        dnsVerified: mapValueOfType<bool>(json, r'dns_verified'),
        dnsVerifiedAt: mapDateTime(json, r'dns_verified_at', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<DmarcDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DmarcDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DmarcDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DmarcDomain> mapFromJson(dynamic json) {
    final map = <String, DmarcDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DmarcDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DmarcDomain-objects as value to a dart map
  static Map<String, List<DmarcDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DmarcDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DmarcDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

