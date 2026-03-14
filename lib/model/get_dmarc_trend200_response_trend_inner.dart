//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetDmarcTrend200ResponseTrendInner {
  /// Returns a new [GetDmarcTrend200ResponseTrendInner] instance.
  GetDmarcTrend200ResponseTrendInner({
    this.date,
    this.pass,
    this.fail,
    this.total,
    this.passRate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? passRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDmarcTrend200ResponseTrendInner &&
    other.date == date &&
    other.pass == pass &&
    other.fail == fail &&
    other.total == total &&
    other.passRate == passRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (pass == null ? 0 : pass!.hashCode) +
    (fail == null ? 0 : fail!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (passRate == null ? 0 : passRate!.hashCode);

  @override
  String toString() => 'GetDmarcTrend200ResponseTrendInner[date=$date, pass=$pass, fail=$fail, total=$total, passRate=$passRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
    }
    if (this.pass != null) {
      json[r'pass'] = this.pass;
    } else {
      json[r'pass'] = null;
    }
    if (this.fail != null) {
      json[r'fail'] = this.fail;
    } else {
      json[r'fail'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.passRate != null) {
      json[r'pass_rate'] = this.passRate;
    } else {
      json[r'pass_rate'] = null;
    }
    return json;
  }

  /// Returns a new [GetDmarcTrend200ResponseTrendInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDmarcTrend200ResponseTrendInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDmarcTrend200ResponseTrendInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDmarcTrend200ResponseTrendInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDmarcTrend200ResponseTrendInner(
        date: mapDateTime(json, r'date', r''),
        pass: mapValueOfType<int>(json, r'pass'),
        fail: mapValueOfType<int>(json, r'fail'),
        total: mapValueOfType<int>(json, r'total'),
        passRate: num.parse('${json[r'pass_rate']}'),
      );
    }
    return null;
  }

  static List<GetDmarcTrend200ResponseTrendInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDmarcTrend200ResponseTrendInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDmarcTrend200ResponseTrendInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDmarcTrend200ResponseTrendInner> mapFromJson(dynamic json) {
    final map = <String, GetDmarcTrend200ResponseTrendInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDmarcTrend200ResponseTrendInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDmarcTrend200ResponseTrendInner-objects as value to a dart map
  static Map<String, List<GetDmarcTrend200ResponseTrendInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDmarcTrend200ResponseTrendInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDmarcTrend200ResponseTrendInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

