//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCampaignABResults200ResponseVariantsInner {
  /// Returns a new [GetCampaignABResults200ResponseVariantsInner] instance.
  GetCampaignABResults200ResponseVariantsInner({
    this.variantId,
    this.name,
    this.subject,
    this.weight,
    this.sent,
    this.delivered,
    this.opened,
    this.clicked,
    this.bounced,
    this.openRate,
    this.clickRate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variantId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weight;

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
  int? bounced;

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
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignABResults200ResponseVariantsInner &&
    other.variantId == variantId &&
    other.name == name &&
    other.subject == subject &&
    other.weight == weight &&
    other.sent == sent &&
    other.delivered == delivered &&
    other.opened == opened &&
    other.clicked == clicked &&
    other.bounced == bounced &&
    other.openRate == openRate &&
    other.clickRate == clickRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variantId == null ? 0 : variantId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (sent == null ? 0 : sent!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (opened == null ? 0 : opened!.hashCode) +
    (clicked == null ? 0 : clicked!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (openRate == null ? 0 : openRate!.hashCode) +
    (clickRate == null ? 0 : clickRate!.hashCode);

  @override
  String toString() => 'GetCampaignABResults200ResponseVariantsInner[variantId=$variantId, name=$name, subject=$subject, weight=$weight, sent=$sent, delivered=$delivered, opened=$opened, clicked=$clicked, bounced=$bounced, openRate=$openRate, clickRate=$clickRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.variantId != null) {
      json[r'variant_id'] = this.variantId;
    } else {
      json[r'variant_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
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
    if (this.bounced != null) {
      json[r'bounced'] = this.bounced;
    } else {
      json[r'bounced'] = null;
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

  /// Returns a new [GetCampaignABResults200ResponseVariantsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignABResults200ResponseVariantsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignABResults200ResponseVariantsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignABResults200ResponseVariantsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignABResults200ResponseVariantsInner(
        variantId: mapValueOfType<String>(json, r'variant_id'),
        name: mapValueOfType<String>(json, r'name'),
        subject: mapValueOfType<String>(json, r'subject'),
        weight: mapValueOfType<int>(json, r'weight'),
        sent: mapValueOfType<int>(json, r'sent'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        opened: mapValueOfType<int>(json, r'opened'),
        clicked: mapValueOfType<int>(json, r'clicked'),
        bounced: mapValueOfType<int>(json, r'bounced'),
        openRate: num.parse('${json[r'open_rate']}'),
        clickRate: num.parse('${json[r'click_rate']}'),
      );
    }
    return null;
  }

  static List<GetCampaignABResults200ResponseVariantsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignABResults200ResponseVariantsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignABResults200ResponseVariantsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignABResults200ResponseVariantsInner> mapFromJson(dynamic json) {
    final map = <String, GetCampaignABResults200ResponseVariantsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignABResults200ResponseVariantsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignABResults200ResponseVariantsInner-objects as value to a dart map
  static Map<String, List<GetCampaignABResults200ResponseVariantsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignABResults200ResponseVariantsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignABResults200ResponseVariantsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

