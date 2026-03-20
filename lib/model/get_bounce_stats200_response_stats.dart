//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetBounceStats200ResponseStats {
  /// Returns a new [GetBounceStats200ResponseStats] instance.
  GetBounceStats200ResponseStats({
    this.period,
    this.groupBy,
    this.data = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupBy;

  List<Object> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetBounceStats200ResponseStats &&
    other.period == period &&
    other.groupBy == groupBy &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (period == null ? 0 : period!.hashCode) +
    (groupBy == null ? 0 : groupBy!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'GetBounceStats200ResponseStats[period=$period, groupBy=$groupBy, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.groupBy != null) {
      json[r'group_by'] = this.groupBy;
    } else {
      json[r'group_by'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [GetBounceStats200ResponseStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetBounceStats200ResponseStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetBounceStats200ResponseStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetBounceStats200ResponseStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetBounceStats200ResponseStats(
        period: mapValueOfType<String>(json, r'period'),
        groupBy: mapValueOfType<String>(json, r'group_by'),
        data: json[r'data'] is List ? (json[r'data'] as List).cast<Object>().toList(growable: false) : const [],
      );
    }
    return null;
  }

  static List<GetBounceStats200ResponseStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetBounceStats200ResponseStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetBounceStats200ResponseStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetBounceStats200ResponseStats> mapFromJson(dynamic json) {
    final map = <String, GetBounceStats200ResponseStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetBounceStats200ResponseStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetBounceStats200ResponseStats-objects as value to a dart map
  static Map<String, List<GetBounceStats200ResponseStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetBounceStats200ResponseStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetBounceStats200ResponseStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

