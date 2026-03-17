//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation {
  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation] instance.
  GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation({
    this.score,
    this.recentBounceRate,
    this.recentComplaintRate,
  });

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
  num? recentBounceRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? recentComplaintRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation &&
    other.score == score &&
    other.recentBounceRate == recentBounceRate &&
    other.recentComplaintRate == recentComplaintRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (recentBounceRate == null ? 0 : recentBounceRate!.hashCode) +
    (recentComplaintRate == null ? 0 : recentComplaintRate!.hashCode);

  @override
  String toString() => 'GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation[score=$score, recentBounceRate=$recentBounceRate, recentComplaintRate=$recentComplaintRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.recentBounceRate != null) {
      json[r'recent_bounce_rate'] = this.recentBounceRate;
    } else {
      json[r'recent_bounce_rate'] = null;
    }
    if (this.recentComplaintRate != null) {
      json[r'recent_complaint_rate'] = this.recentComplaintRate;
    } else {
      json[r'recent_complaint_rate'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation(
        score: mapValueOfType<int>(json, r'score'),
        recentBounceRate: num.parse('${json[r'recent_bounce_rate']}'),
        recentComplaintRate: num.parse('${json[r'recent_complaint_rate']}'),
      );
    }
    return null;
  }

  static List<GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation> mapFromJson(dynamic json) {
    final map = <String, GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation-objects as value to a dart map
  static Map<String, List<GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

