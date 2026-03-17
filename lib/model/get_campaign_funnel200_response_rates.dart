//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignFunnel200ResponseRates {
  /// Returns a new [GetCampaignFunnel200ResponseRates] instance.
  GetCampaignFunnel200ResponseRates({
    this.deliveryRate,
    this.openRate,
    this.clickRate,
    this.clickToOpenRate,
    this.bounceRate,
    this.unsubscribeRate,
    this.complaintRate,
  });

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clickToOpenRate;

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
  num? unsubscribeRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? complaintRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignFunnel200ResponseRates &&
    other.deliveryRate == deliveryRate &&
    other.openRate == openRate &&
    other.clickRate == clickRate &&
    other.clickToOpenRate == clickToOpenRate &&
    other.bounceRate == bounceRate &&
    other.unsubscribeRate == unsubscribeRate &&
    other.complaintRate == complaintRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deliveryRate == null ? 0 : deliveryRate!.hashCode) +
    (openRate == null ? 0 : openRate!.hashCode) +
    (clickRate == null ? 0 : clickRate!.hashCode) +
    (clickToOpenRate == null ? 0 : clickToOpenRate!.hashCode) +
    (bounceRate == null ? 0 : bounceRate!.hashCode) +
    (unsubscribeRate == null ? 0 : unsubscribeRate!.hashCode) +
    (complaintRate == null ? 0 : complaintRate!.hashCode);

  @override
  String toString() => 'GetCampaignFunnel200ResponseRates[deliveryRate=$deliveryRate, openRate=$openRate, clickRate=$clickRate, clickToOpenRate=$clickToOpenRate, bounceRate=$bounceRate, unsubscribeRate=$unsubscribeRate, complaintRate=$complaintRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.clickToOpenRate != null) {
      json[r'click_to_open_rate'] = this.clickToOpenRate;
    } else {
      json[r'click_to_open_rate'] = null;
    }
    if (this.bounceRate != null) {
      json[r'bounce_rate'] = this.bounceRate;
    } else {
      json[r'bounce_rate'] = null;
    }
    if (this.unsubscribeRate != null) {
      json[r'unsubscribe_rate'] = this.unsubscribeRate;
    } else {
      json[r'unsubscribe_rate'] = null;
    }
    if (this.complaintRate != null) {
      json[r'complaint_rate'] = this.complaintRate;
    } else {
      json[r'complaint_rate'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignFunnel200ResponseRates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignFunnel200ResponseRates? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignFunnel200ResponseRates[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignFunnel200ResponseRates[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignFunnel200ResponseRates(
        deliveryRate: num.parse('${json[r'delivery_rate']}'),
        openRate: num.parse('${json[r'open_rate']}'),
        clickRate: num.parse('${json[r'click_rate']}'),
        clickToOpenRate: num.parse('${json[r'click_to_open_rate']}'),
        bounceRate: num.parse('${json[r'bounce_rate']}'),
        unsubscribeRate: num.parse('${json[r'unsubscribe_rate']}'),
        complaintRate: num.parse('${json[r'complaint_rate']}'),
      );
    }
    return null;
  }

  static List<GetCampaignFunnel200ResponseRates> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignFunnel200ResponseRates>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignFunnel200ResponseRates.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignFunnel200ResponseRates> mapFromJson(dynamic json) {
    final map = <String, GetCampaignFunnel200ResponseRates>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignFunnel200ResponseRates.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignFunnel200ResponseRates-objects as value to a dart map
  static Map<String, List<GetCampaignFunnel200ResponseRates>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignFunnel200ResponseRates>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignFunnel200ResponseRates.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

