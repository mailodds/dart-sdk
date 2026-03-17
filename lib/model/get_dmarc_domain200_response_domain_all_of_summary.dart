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
    this.days,
    this.reportCount,
    this.sourceCount,
    this.totalMessages,
    this.totalPass,
    this.totalFail,
    this.passRate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? days;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reportCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sourceCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMessages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalFail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? passRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDmarcDomain200ResponseDomainAllOfSummary &&
    other.days == days &&
    other.reportCount == reportCount &&
    other.sourceCount == sourceCount &&
    other.totalMessages == totalMessages &&
    other.totalPass == totalPass &&
    other.totalFail == totalFail &&
    other.passRate == passRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days == null ? 0 : days!.hashCode) +
    (reportCount == null ? 0 : reportCount!.hashCode) +
    (sourceCount == null ? 0 : sourceCount!.hashCode) +
    (totalMessages == null ? 0 : totalMessages!.hashCode) +
    (totalPass == null ? 0 : totalPass!.hashCode) +
    (totalFail == null ? 0 : totalFail!.hashCode) +
    (passRate == null ? 0 : passRate!.hashCode);

  @override
  String toString() => 'GetDmarcDomain200ResponseDomainAllOfSummary[days=$days, reportCount=$reportCount, sourceCount=$sourceCount, totalMessages=$totalMessages, totalPass=$totalPass, totalFail=$totalFail, passRate=$passRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.days != null) {
      json[r'days'] = this.days;
    } else {
      json[r'days'] = null;
    }
    if (this.reportCount != null) {
      json[r'report_count'] = this.reportCount;
    } else {
      json[r'report_count'] = null;
    }
    if (this.sourceCount != null) {
      json[r'source_count'] = this.sourceCount;
    } else {
      json[r'source_count'] = null;
    }
    if (this.totalMessages != null) {
      json[r'total_messages'] = this.totalMessages;
    } else {
      json[r'total_messages'] = null;
    }
    if (this.totalPass != null) {
      json[r'total_pass'] = this.totalPass;
    } else {
      json[r'total_pass'] = null;
    }
    if (this.totalFail != null) {
      json[r'total_fail'] = this.totalFail;
    } else {
      json[r'total_fail'] = null;
    }
    if (this.passRate != null) {
      json[r'pass_rate'] = this.passRate;
    } else {
      json[r'pass_rate'] = null;
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
        days: mapValueOfType<int>(json, r'days'),
        reportCount: mapValueOfType<int>(json, r'report_count'),
        sourceCount: mapValueOfType<int>(json, r'source_count'),
        totalMessages: mapValueOfType<int>(json, r'total_messages'),
        totalPass: mapValueOfType<int>(json, r'total_pass'),
        totalFail: mapValueOfType<int>(json, r'total_fail'),
        passRate: num.parse('${json[r'pass_rate']}'),
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

