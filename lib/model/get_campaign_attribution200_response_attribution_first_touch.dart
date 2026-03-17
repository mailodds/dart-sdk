//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignAttribution200ResponseAttributionFirstTouch {
  /// Returns a new [GetCampaignAttribution200ResponseAttributionFirstTouch] instance.
  GetCampaignAttribution200ResponseAttributionFirstTouch({
    this.conversions,
    this.revenue,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? conversions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? revenue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignAttribution200ResponseAttributionFirstTouch &&
    other.conversions == conversions &&
    other.revenue == revenue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conversions == null ? 0 : conversions!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode);

  @override
  String toString() => 'GetCampaignAttribution200ResponseAttributionFirstTouch[conversions=$conversions, revenue=$revenue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.conversions != null) {
      json[r'conversions'] = this.conversions;
    } else {
      json[r'conversions'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignAttribution200ResponseAttributionFirstTouch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignAttribution200ResponseAttributionFirstTouch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignAttribution200ResponseAttributionFirstTouch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignAttribution200ResponseAttributionFirstTouch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignAttribution200ResponseAttributionFirstTouch(
        conversions: mapValueOfType<int>(json, r'conversions'),
        revenue: num.parse('${json[r'revenue']}'),
      );
    }
    return null;
  }

  static List<GetCampaignAttribution200ResponseAttributionFirstTouch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignAttribution200ResponseAttributionFirstTouch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignAttribution200ResponseAttributionFirstTouch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignAttribution200ResponseAttributionFirstTouch> mapFromJson(dynamic json) {
    final map = <String, GetCampaignAttribution200ResponseAttributionFirstTouch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignAttribution200ResponseAttributionFirstTouch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignAttribution200ResponseAttributionFirstTouch-objects as value to a dart map
  static Map<String, List<GetCampaignAttribution200ResponseAttributionFirstTouch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignAttribution200ResponseAttributionFirstTouch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignAttribution200ResponseAttributionFirstTouch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

