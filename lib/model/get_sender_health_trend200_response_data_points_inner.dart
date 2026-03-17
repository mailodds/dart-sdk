//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetSenderHealthTrend200ResponseDataPointsInner {
  /// Returns a new [GetSenderHealthTrend200ResponseDataPointsInner] instance.
  GetSenderHealthTrend200ResponseDataPointsInner({
    this.date,
    this.score,
    this.deliveryRate,
    this.bounceRate,
    this.complaintRate,
    this.volume,
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
  int? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? deliveryRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? bounceRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? complaintRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSenderHealthTrend200ResponseDataPointsInner &&
    other.date == date &&
    other.score == score &&
    other.deliveryRate == deliveryRate &&
    other.bounceRate == bounceRate &&
    other.complaintRate == complaintRate &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (deliveryRate == null ? 0 : deliveryRate!.hashCode) +
    (bounceRate == null ? 0 : bounceRate!.hashCode) +
    (complaintRate == null ? 0 : complaintRate!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'GetSenderHealthTrend200ResponseDataPointsInner[date=$date, score=$score, deliveryRate=$deliveryRate, bounceRate=$bounceRate, complaintRate=$complaintRate, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.deliveryRate != null) {
      json[r'delivery_rate'] = this.deliveryRate;
    } else {
      json[r'delivery_rate'] = null;
    }
    if (this.bounceRate != null) {
      json[r'bounce_rate'] = this.bounceRate;
    } else {
      json[r'bounce_rate'] = null;
    }
    if (this.complaintRate != null) {
      json[r'complaint_rate'] = this.complaintRate;
    } else {
      json[r'complaint_rate'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [GetSenderHealthTrend200ResponseDataPointsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSenderHealthTrend200ResponseDataPointsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSenderHealthTrend200ResponseDataPointsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSenderHealthTrend200ResponseDataPointsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSenderHealthTrend200ResponseDataPointsInner(
        date: mapDateTime(json, r'date', r''),
        score: mapValueOfType<int>(json, r'score'),
        deliveryRate: num.parse('${json[r'delivery_rate']}'),
        bounceRate: num.parse('${json[r'bounce_rate']}'),
        complaintRate: num.parse('${json[r'complaint_rate']}'),
        volume: mapValueOfType<int>(json, r'volume'),
      );
    }
    return null;
  }

  static List<GetSenderHealthTrend200ResponseDataPointsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSenderHealthTrend200ResponseDataPointsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSenderHealthTrend200ResponseDataPointsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSenderHealthTrend200ResponseDataPointsInner> mapFromJson(dynamic json) {
    final map = <String, GetSenderHealthTrend200ResponseDataPointsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSenderHealthTrend200ResponseDataPointsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSenderHealthTrend200ResponseDataPointsInner-objects as value to a dart map
  static Map<String, List<GetSenderHealthTrend200ResponseDataPointsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSenderHealthTrend200ResponseDataPointsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSenderHealthTrend200ResponseDataPointsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

