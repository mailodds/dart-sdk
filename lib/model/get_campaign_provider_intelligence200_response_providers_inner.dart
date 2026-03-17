//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignProviderIntelligence200ResponseProvidersInner {
  /// Returns a new [GetCampaignProviderIntelligence200ResponseProvidersInner] instance.
  GetCampaignProviderIntelligence200ResponseProvidersInner({
    this.provider,
    this.sent,
    this.delivered,
    this.bounced,
    this.opened,
    this.clicked,
    this.deliveryRate,
    this.openRate,
    this.clickRate,
  });

  /// Provider name (e.g. gmail, outlook, yahoo)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

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
  int? delivered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bounced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? opened;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clicked;

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
  num? openRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clickRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignProviderIntelligence200ResponseProvidersInner &&
    other.provider == provider &&
    other.sent == sent &&
    other.delivered == delivered &&
    other.bounced == bounced &&
    other.opened == opened &&
    other.clicked == clicked &&
    other.deliveryRate == deliveryRate &&
    other.openRate == openRate &&
    other.clickRate == clickRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider == null ? 0 : provider!.hashCode) +
    (sent == null ? 0 : sent!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (opened == null ? 0 : opened!.hashCode) +
    (clicked == null ? 0 : clicked!.hashCode) +
    (deliveryRate == null ? 0 : deliveryRate!.hashCode) +
    (openRate == null ? 0 : openRate!.hashCode) +
    (clickRate == null ? 0 : clickRate!.hashCode);

  @override
  String toString() => 'GetCampaignProviderIntelligence200ResponseProvidersInner[provider=$provider, sent=$sent, delivered=$delivered, bounced=$bounced, opened=$opened, clicked=$clicked, deliveryRate=$deliveryRate, openRate=$openRate, clickRate=$clickRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
    }
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.bounced != null) {
      json[r'bounced'] = this.bounced;
    } else {
      json[r'bounced'] = null;
    }
    if (this.opened != null) {
      json[r'opened'] = this.opened;
    } else {
      json[r'opened'] = null;
    }
    if (this.clicked != null) {
      json[r'clicked'] = this.clicked;
    } else {
      json[r'clicked'] = null;
    }
    if (this.deliveryRate != null) {
      json[r'delivery_rate'] = this.deliveryRate;
    } else {
      json[r'delivery_rate'] = null;
    }
    if (this.openRate != null) {
      json[r'open_rate'] = this.openRate;
    } else {
      json[r'open_rate'] = null;
    }
    if (this.clickRate != null) {
      json[r'click_rate'] = this.clickRate;
    } else {
      json[r'click_rate'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignProviderIntelligence200ResponseProvidersInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignProviderIntelligence200ResponseProvidersInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignProviderIntelligence200ResponseProvidersInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignProviderIntelligence200ResponseProvidersInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignProviderIntelligence200ResponseProvidersInner(
        provider: mapValueOfType<String>(json, r'provider'),
        sent: mapValueOfType<int>(json, r'sent'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        bounced: mapValueOfType<int>(json, r'bounced'),
        opened: mapValueOfType<int>(json, r'opened'),
        clicked: mapValueOfType<int>(json, r'clicked'),
        deliveryRate: num.parse('${json[r'delivery_rate']}'),
        openRate: num.parse('${json[r'open_rate']}'),
        clickRate: num.parse('${json[r'click_rate']}'),
      );
    }
    return null;
  }

  static List<GetCampaignProviderIntelligence200ResponseProvidersInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignProviderIntelligence200ResponseProvidersInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignProviderIntelligence200ResponseProvidersInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignProviderIntelligence200ResponseProvidersInner> mapFromJson(dynamic json) {
    final map = <String, GetCampaignProviderIntelligence200ResponseProvidersInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignProviderIntelligence200ResponseProvidersInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignProviderIntelligence200ResponseProvidersInner-objects as value to a dart map
  static Map<String, List<GetCampaignProviderIntelligence200ResponseProvidersInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignProviderIntelligence200ResponseProvidersInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignProviderIntelligence200ResponseProvidersInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

