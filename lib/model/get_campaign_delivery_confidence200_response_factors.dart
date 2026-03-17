//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignDeliveryConfidence200ResponseFactors {
  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactors] instance.
  GetCampaignDeliveryConfidence200ResponseFactors({
    this.listQuality,
    this.senderReputation,
    this.domainAuth,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetCampaignDeliveryConfidence200ResponseFactorsListQuality? listQuality;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation? senderReputation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth? domainAuth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignDeliveryConfidence200ResponseFactors &&
    other.listQuality == listQuality &&
    other.senderReputation == senderReputation &&
    other.domainAuth == domainAuth;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (listQuality == null ? 0 : listQuality!.hashCode) +
    (senderReputation == null ? 0 : senderReputation!.hashCode) +
    (domainAuth == null ? 0 : domainAuth!.hashCode);

  @override
  String toString() => 'GetCampaignDeliveryConfidence200ResponseFactors[listQuality=$listQuality, senderReputation=$senderReputation, domainAuth=$domainAuth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.listQuality != null) {
      json[r'list_quality'] = this.listQuality;
    } else {
      json[r'list_quality'] = null;
    }
    if (this.senderReputation != null) {
      json[r'sender_reputation'] = this.senderReputation;
    } else {
      json[r'sender_reputation'] = null;
    }
    if (this.domainAuth != null) {
      json[r'domain_auth'] = this.domainAuth;
    } else {
      json[r'domain_auth'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignDeliveryConfidence200ResponseFactors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignDeliveryConfidence200ResponseFactors? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignDeliveryConfidence200ResponseFactors[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignDeliveryConfidence200ResponseFactors[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignDeliveryConfidence200ResponseFactors(
        listQuality: GetCampaignDeliveryConfidence200ResponseFactorsListQuality.fromJson(json[r'list_quality']),
        senderReputation: GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.fromJson(json[r'sender_reputation']),
        domainAuth: GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.fromJson(json[r'domain_auth']),
      );
    }
    return null;
  }

  static List<GetCampaignDeliveryConfidence200ResponseFactors> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignDeliveryConfidence200ResponseFactors>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignDeliveryConfidence200ResponseFactors.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignDeliveryConfidence200ResponseFactors> mapFromJson(dynamic json) {
    final map = <String, GetCampaignDeliveryConfidence200ResponseFactors>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignDeliveryConfidence200ResponseFactors.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignDeliveryConfidence200ResponseFactors-objects as value to a dart map
  static Map<String, List<GetCampaignDeliveryConfidence200ResponseFactors>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignDeliveryConfidence200ResponseFactors>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignDeliveryConfidence200ResponseFactors.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

