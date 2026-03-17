//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignFunnel200Response {
  /// Returns a new [GetCampaignFunnel200Response] instance.
  GetCampaignFunnel200Response({
    this.schemaVersion,
    this.requestId,
    this.campaignId,
    this.funnel,
    this.rates,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Unique request identifier
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
  String? campaignId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetCampaignFunnel200ResponseFunnel? funnel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetCampaignFunnel200ResponseRates? rates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignFunnel200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.campaignId == campaignId &&
    other.funnel == funnel &&
    other.rates == rates;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (campaignId == null ? 0 : campaignId!.hashCode) +
    (funnel == null ? 0 : funnel!.hashCode) +
    (rates == null ? 0 : rates!.hashCode);

  @override
  String toString() => 'GetCampaignFunnel200Response[schemaVersion=$schemaVersion, requestId=$requestId, campaignId=$campaignId, funnel=$funnel, rates=$rates]';

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
    if (this.campaignId != null) {
      json[r'campaign_id'] = this.campaignId;
    } else {
      json[r'campaign_id'] = null;
    }
    if (this.funnel != null) {
      json[r'funnel'] = this.funnel;
    } else {
      json[r'funnel'] = null;
    }
    if (this.rates != null) {
      json[r'rates'] = this.rates;
    } else {
      json[r'rates'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignFunnel200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignFunnel200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignFunnel200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignFunnel200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignFunnel200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        campaignId: mapValueOfType<String>(json, r'campaign_id'),
        funnel: GetCampaignFunnel200ResponseFunnel.fromJson(json[r'funnel']),
        rates: GetCampaignFunnel200ResponseRates.fromJson(json[r'rates']),
      );
    }
    return null;
  }

  static List<GetCampaignFunnel200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignFunnel200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignFunnel200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignFunnel200Response> mapFromJson(dynamic json) {
    final map = <String, GetCampaignFunnel200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignFunnel200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignFunnel200Response-objects as value to a dart map
  static Map<String, List<GetCampaignFunnel200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignFunnel200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignFunnel200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

