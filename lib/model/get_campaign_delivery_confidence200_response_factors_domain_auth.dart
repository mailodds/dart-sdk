//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth {
  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth] instance.
  GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth({
    this.score,
    this.dkim,
    this.spf,
    this.dmarc,
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
  bool? dkim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? spf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dmarc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth &&
    other.score == score &&
    other.dkim == dkim &&
    other.spf == spf &&
    other.dmarc == dmarc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (dkim == null ? 0 : dkim!.hashCode) +
    (spf == null ? 0 : spf!.hashCode) +
    (dmarc == null ? 0 : dmarc!.hashCode);

  @override
  String toString() => 'GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth[score=$score, dkim=$dkim, spf=$spf, dmarc=$dmarc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.dkim != null) {
      json[r'dkim'] = this.dkim;
    } else {
      json[r'dkim'] = null;
    }
    if (this.spf != null) {
      json[r'spf'] = this.spf;
    } else {
      json[r'spf'] = null;
    }
    if (this.dmarc != null) {
      json[r'dmarc'] = this.dmarc;
    } else {
      json[r'dmarc'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth(
        score: mapValueOfType<int>(json, r'score'),
        dkim: mapValueOfType<bool>(json, r'dkim'),
        spf: mapValueOfType<bool>(json, r'spf'),
        dmarc: mapValueOfType<bool>(json, r'dmarc'),
      );
    }
    return null;
  }

  static List<GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth> mapFromJson(dynamic json) {
    final map = <String, GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth-objects as value to a dart map
  static Map<String, List<GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

