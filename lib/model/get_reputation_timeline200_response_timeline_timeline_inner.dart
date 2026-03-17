//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetReputationTimeline200ResponseTimelineTimelineInner {
  /// Returns a new [GetReputationTimeline200ResponseTimelineTimelineInner] instance.
  GetReputationTimeline200ResponseTimelineTimelineInner({
    this.date,
    this.sent,
    this.bounceRate,
    this.complaintRate,
    this.openRate,
    this.deliveryRate,
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
  int? sent;

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
  num? openRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? deliveryRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetReputationTimeline200ResponseTimelineTimelineInner &&
    other.date == date &&
    other.sent == sent &&
    other.bounceRate == bounceRate &&
    other.complaintRate == complaintRate &&
    other.openRate == openRate &&
    other.deliveryRate == deliveryRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (sent == null ? 0 : sent!.hashCode) +
    (bounceRate == null ? 0 : bounceRate!.hashCode) +
    (complaintRate == null ? 0 : complaintRate!.hashCode) +
    (openRate == null ? 0 : openRate!.hashCode) +
    (deliveryRate == null ? 0 : deliveryRate!.hashCode);

  @override
  String toString() => 'GetReputationTimeline200ResponseTimelineTimelineInner[date=$date, sent=$sent, bounceRate=$bounceRate, complaintRate=$complaintRate, openRate=$openRate, deliveryRate=$deliveryRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
    }
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
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
    if (this.openRate != null) {
      json[r'open_rate'] = this.openRate;
    } else {
      json[r'open_rate'] = null;
    }
    if (this.deliveryRate != null) {
      json[r'delivery_rate'] = this.deliveryRate;
    } else {
      json[r'delivery_rate'] = null;
    }
    return json;
  }

  /// Returns a new [GetReputationTimeline200ResponseTimelineTimelineInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetReputationTimeline200ResponseTimelineTimelineInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetReputationTimeline200ResponseTimelineTimelineInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetReputationTimeline200ResponseTimelineTimelineInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetReputationTimeline200ResponseTimelineTimelineInner(
        date: mapDateTime(json, r'date', r''),
        sent: mapValueOfType<int>(json, r'sent'),
        bounceRate: num.parse('${json[r'bounce_rate']}'),
        complaintRate: num.parse('${json[r'complaint_rate']}'),
        openRate: num.parse('${json[r'open_rate']}'),
        deliveryRate: num.parse('${json[r'delivery_rate']}'),
      );
    }
    return null;
  }

  static List<GetReputationTimeline200ResponseTimelineTimelineInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetReputationTimeline200ResponseTimelineTimelineInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetReputationTimeline200ResponseTimelineTimelineInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetReputationTimeline200ResponseTimelineTimelineInner> mapFromJson(dynamic json) {
    final map = <String, GetReputationTimeline200ResponseTimelineTimelineInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetReputationTimeline200ResponseTimelineTimelineInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetReputationTimeline200ResponseTimelineTimelineInner-objects as value to a dart map
  static Map<String, List<GetReputationTimeline200ResponseTimelineTimelineInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetReputationTimeline200ResponseTimelineTimelineInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetReputationTimeline200ResponseTimelineTimelineInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

