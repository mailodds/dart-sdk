//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetDmarcDomain200ResponseDomainAllOfSummary {
  /// Returns a new [GetDmarcDomain200ResponseDomainAllOfSummary] instance.
  GetDmarcDomain200ResponseDomainAllOfSummary({
    this.totalReports,
    this.totalRecords,
    this.passRate,
    this.failRate,
    this.dkimAligned,
    this.spfAligned,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalReports;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRecords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? passRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? failRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? dkimAligned;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? spfAligned;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDmarcDomain200ResponseDomainAllOfSummary &&
    other.totalReports == totalReports &&
    other.totalRecords == totalRecords &&
    other.passRate == passRate &&
    other.failRate == failRate &&
    other.dkimAligned == dkimAligned &&
    other.spfAligned == spfAligned;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalReports == null ? 0 : totalReports!.hashCode) +
    (totalRecords == null ? 0 : totalRecords!.hashCode) +
    (passRate == null ? 0 : passRate!.hashCode) +
    (failRate == null ? 0 : failRate!.hashCode) +
    (dkimAligned == null ? 0 : dkimAligned!.hashCode) +
    (spfAligned == null ? 0 : spfAligned!.hashCode);

  @override
  String toString() => 'GetDmarcDomain200ResponseDomainAllOfSummary[totalReports=$totalReports, totalRecords=$totalRecords, passRate=$passRate, failRate=$failRate, dkimAligned=$dkimAligned, spfAligned=$spfAligned]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.totalReports != null) {
      json[r'total_reports'] = this.totalReports;
    } else {
      json[r'total_reports'] = null;
    }
    if (this.totalRecords != null) {
      json[r'total_records'] = this.totalRecords;
    } else {
      json[r'total_records'] = null;
    }
    if (this.passRate != null) {
      json[r'pass_rate'] = this.passRate;
    } else {
      json[r'pass_rate'] = null;
    }
    if (this.failRate != null) {
      json[r'fail_rate'] = this.failRate;
    } else {
      json[r'fail_rate'] = null;
    }
    if (this.dkimAligned != null) {
      json[r'dkim_aligned'] = this.dkimAligned;
    } else {
      json[r'dkim_aligned'] = null;
    }
    if (this.spfAligned != null) {
      json[r'spf_aligned'] = this.spfAligned;
    } else {
      json[r'spf_aligned'] = null;
    }
    return json;
  }

  /// Returns a new [GetDmarcDomain200ResponseDomainAllOfSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDmarcDomain200ResponseDomainAllOfSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDmarcDomain200ResponseDomainAllOfSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDmarcDomain200ResponseDomainAllOfSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDmarcDomain200ResponseDomainAllOfSummary(
        totalReports: mapValueOfType<int>(json, r'total_reports'),
        totalRecords: mapValueOfType<int>(json, r'total_records'),
        passRate: num.parse('${json[r'pass_rate']}'),
        failRate: num.parse('${json[r'fail_rate']}'),
        dkimAligned: num.parse('${json[r'dkim_aligned']}'),
        spfAligned: num.parse('${json[r'spf_aligned']}'),
      );
    }
    return null;
  }

  static List<GetDmarcDomain200ResponseDomainAllOfSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDmarcDomain200ResponseDomainAllOfSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDmarcDomain200ResponseDomainAllOfSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDmarcDomain200ResponseDomainAllOfSummary> mapFromJson(dynamic json) {
    final map = <String, GetDmarcDomain200ResponseDomainAllOfSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDmarcDomain200ResponseDomainAllOfSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDmarcDomain200ResponseDomainAllOfSummary-objects as value to a dart map
  static Map<String, List<GetDmarcDomain200ResponseDomainAllOfSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDmarcDomain200ResponseDomainAllOfSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDmarcDomain200ResponseDomainAllOfSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

