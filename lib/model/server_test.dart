//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServerTest {
  /// Returns a new [ServerTest] instance.
  ServerTest({
    this.id,
    this.domain,
    this.status,
    this.mxRecords = const [],
    this.smtpCheck,
    this.dnsChecks,
    this.score,
    this.recommendations = const [],
    this.createdAt,
  });

  /// Test UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Tested domain
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// Test status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  List<ServerTestMxRecordsInner> mxRecords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerTestSmtpCheck? smtpCheck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerTestDnsChecks? dnsChecks;

  /// Overall server configuration score (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  List<String> recommendations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerTest &&
    other.id == id &&
    other.domain == domain &&
    other.status == status &&
    _deepEquality.equals(other.mxRecords, mxRecords) &&
    other.smtpCheck == smtpCheck &&
    other.dnsChecks == dnsChecks &&
    other.score == score &&
    _deepEquality.equals(other.recommendations, recommendations) &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (mxRecords.hashCode) +
    (smtpCheck == null ? 0 : smtpCheck!.hashCode) +
    (dnsChecks == null ? 0 : dnsChecks!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (recommendations.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'ServerTest[id=$id, domain=$domain, status=$status, mxRecords=$mxRecords, smtpCheck=$smtpCheck, dnsChecks=$dnsChecks, score=$score, recommendations=$recommendations, createdAt=$createdAt]';

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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'mx_records'] = this.mxRecords;
    if (this.smtpCheck != null) {
      json[r'smtp_check'] = this.smtpCheck;
    } else {
      json[r'smtp_check'] = null;
    }
    if (this.dnsChecks != null) {
      json[r'dns_checks'] = this.dnsChecks;
    } else {
      json[r'dns_checks'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
      json[r'recommendations'] = this.recommendations;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [ServerTest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerTest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServerTest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServerTest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServerTest(
        id: mapValueOfType<String>(json, r'id'),
        domain: mapValueOfType<String>(json, r'domain'),
        status: mapValueOfType<String>(json, r'status'),
        mxRecords: ServerTestMxRecordsInner.listFromJson(json[r'mx_records']),
        smtpCheck: ServerTestSmtpCheck.fromJson(json[r'smtp_check']),
        dnsChecks: ServerTestDnsChecks.fromJson(json[r'dns_checks']),
        score: mapValueOfType<int>(json, r'score'),
        recommendations: json[r'recommendations'] is Iterable
            ? (json[r'recommendations'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<ServerTest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerTest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerTest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerTest> mapFromJson(dynamic json) {
    final map = <String, ServerTest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerTest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerTest-objects as value to a dart map
  static Map<String, List<ServerTest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerTest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerTest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

