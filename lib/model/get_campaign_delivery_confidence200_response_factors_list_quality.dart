//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCampaignDeliveryConfidence200ResponseFactorsListQuality {
  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactorsListQuality] instance.
  GetCampaignDeliveryConfidence200ResponseFactorsListQuality({
    this.score,
    this.totalRecipients,
    this.validatedPct,
    this.suppressedCount,
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
  int? totalRecipients;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? validatedPct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suppressedCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignDeliveryConfidence200ResponseFactorsListQuality &&
    other.score == score &&
    other.totalRecipients == totalRecipients &&
    other.validatedPct == validatedPct &&
    other.suppressedCount == suppressedCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (totalRecipients == null ? 0 : totalRecipients!.hashCode) +
    (validatedPct == null ? 0 : validatedPct!.hashCode) +
    (suppressedCount == null ? 0 : suppressedCount!.hashCode);

  @override
  String toString() => 'GetCampaignDeliveryConfidence200ResponseFactorsListQuality[score=$score, totalRecipients=$totalRecipients, validatedPct=$validatedPct, suppressedCount=$suppressedCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.totalRecipients != null) {
      json[r'total_recipients'] = this.totalRecipients;
    } else {
      json[r'total_recipients'] = null;
    }
    if (this.validatedPct != null) {
      json[r'validated_pct'] = this.validatedPct;
    } else {
      json[r'validated_pct'] = null;
    }
    if (this.suppressedCount != null) {
      json[r'suppressed_count'] = this.suppressedCount;
    } else {
      json[r'suppressed_count'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactorsListQuality] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignDeliveryConfidence200ResponseFactorsListQuality? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignDeliveryConfidence200ResponseFactorsListQuality[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignDeliveryConfidence200ResponseFactorsListQuality[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignDeliveryConfidence200ResponseFactorsListQuality(
        score: mapValueOfType<int>(json, r'score'),
        totalRecipients: mapValueOfType<int>(json, r'total_recipients'),
        validatedPct: num.parse('${json[r'validated_pct']}'),
        suppressedCount: mapValueOfType<int>(json, r'suppressed_count'),
      );
    }
    return null;
  }

  static List<GetCampaignDeliveryConfidence200ResponseFactorsListQuality> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignDeliveryConfidence200ResponseFactorsListQuality>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignDeliveryConfidence200ResponseFactorsListQuality.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignDeliveryConfidence200ResponseFactorsListQuality> mapFromJson(dynamic json) {
    final map = <String, GetCampaignDeliveryConfidence200ResponseFactorsListQuality>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignDeliveryConfidence200ResponseFactorsListQuality.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignDeliveryConfidence200ResponseFactorsListQuality-objects as value to a dart map
  static Map<String, List<GetCampaignDeliveryConfidence200ResponseFactorsListQuality>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignDeliveryConfidence200ResponseFactorsListQuality>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignDeliveryConfidence200ResponseFactorsListQuality.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

