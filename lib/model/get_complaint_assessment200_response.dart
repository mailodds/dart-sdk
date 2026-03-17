//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetComplaintAssessment200Response {
  /// Returns a new [GetComplaintAssessment200Response] instance.
  GetComplaintAssessment200Response({
    this.schemaVersion,
    this.requestId,
    this.complaintRate,
    this.riskLevel,
    this.totalComplaints,
    this.totalSent,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? complaintRate;

  GetComplaintAssessment200ResponseRiskLevelEnum? riskLevel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalComplaints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetComplaintAssessment200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.complaintRate == complaintRate &&
    other.riskLevel == riskLevel &&
    other.totalComplaints == totalComplaints &&
    other.totalSent == totalSent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (complaintRate == null ? 0 : complaintRate!.hashCode) +
    (riskLevel == null ? 0 : riskLevel!.hashCode) +
    (totalComplaints == null ? 0 : totalComplaints!.hashCode) +
    (totalSent == null ? 0 : totalSent!.hashCode);

  @override
  String toString() => 'GetComplaintAssessment200Response[schemaVersion=$schemaVersion, requestId=$requestId, complaintRate=$complaintRate, riskLevel=$riskLevel, totalComplaints=$totalComplaints, totalSent=$totalSent]';

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
    if (this.complaintRate != null) {
      json[r'complaint_rate'] = this.complaintRate;
    } else {
      json[r'complaint_rate'] = null;
    }
    if (this.riskLevel != null) {
      json[r'risk_level'] = this.riskLevel;
    } else {
      json[r'risk_level'] = null;
    }
    if (this.totalComplaints != null) {
      json[r'total_complaints'] = this.totalComplaints;
    } else {
      json[r'total_complaints'] = null;
    }
    if (this.totalSent != null) {
      json[r'total_sent'] = this.totalSent;
    } else {
      json[r'total_sent'] = null;
    }
    return json;
  }

  /// Returns a new [GetComplaintAssessment200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetComplaintAssessment200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetComplaintAssessment200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetComplaintAssessment200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetComplaintAssessment200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        complaintRate: num.parse('${json[r'complaint_rate']}'),
        riskLevel: GetComplaintAssessment200ResponseRiskLevelEnum.fromJson(json[r'risk_level']),
        totalComplaints: mapValueOfType<int>(json, r'total_complaints'),
        totalSent: mapValueOfType<int>(json, r'total_sent'),
      );
    }
    return null;
  }

  static List<GetComplaintAssessment200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetComplaintAssessment200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetComplaintAssessment200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetComplaintAssessment200Response> mapFromJson(dynamic json) {
    final map = <String, GetComplaintAssessment200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetComplaintAssessment200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetComplaintAssessment200Response-objects as value to a dart map
  static Map<String, List<GetComplaintAssessment200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetComplaintAssessment200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetComplaintAssessment200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GetComplaintAssessment200ResponseRiskLevelEnum {
  /// Instantiate a new enum with the provided [value].
  const GetComplaintAssessment200ResponseRiskLevelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const low = GetComplaintAssessment200ResponseRiskLevelEnum._(r'low');
  static const medium = GetComplaintAssessment200ResponseRiskLevelEnum._(r'medium');
  static const high = GetComplaintAssessment200ResponseRiskLevelEnum._(r'high');
  static const critical = GetComplaintAssessment200ResponseRiskLevelEnum._(r'critical');

  /// List of all possible values in this [enum][GetComplaintAssessment200ResponseRiskLevelEnum].
  static const values = <GetComplaintAssessment200ResponseRiskLevelEnum>[
    low,
    medium,
    high,
    critical,
  ];

  static GetComplaintAssessment200ResponseRiskLevelEnum? fromJson(dynamic value) => GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer().decode(value);

  static List<GetComplaintAssessment200ResponseRiskLevelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetComplaintAssessment200ResponseRiskLevelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetComplaintAssessment200ResponseRiskLevelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetComplaintAssessment200ResponseRiskLevelEnum] to String,
/// and [decode] dynamic data back to [GetComplaintAssessment200ResponseRiskLevelEnum].
class GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer {
  factory GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer() => _instance ??= const GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer._();

  const GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer._();

  String encode(GetComplaintAssessment200ResponseRiskLevelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetComplaintAssessment200ResponseRiskLevelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetComplaintAssessment200ResponseRiskLevelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'low': return GetComplaintAssessment200ResponseRiskLevelEnum.low;
        case r'medium': return GetComplaintAssessment200ResponseRiskLevelEnum.medium;
        case r'high': return GetComplaintAssessment200ResponseRiskLevelEnum.high;
        case r'critical': return GetComplaintAssessment200ResponseRiskLevelEnum.critical;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer] instance.
  static GetComplaintAssessment200ResponseRiskLevelEnumTypeTransformer? _instance;
}


