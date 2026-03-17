//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CampaignVariant {
  /// Returns a new [CampaignVariant] instance.
  CampaignVariant({
    required this.id,
    required this.campaignId,
    required this.name,
    required this.subject,
    this.html,
    this.text,
    required this.weight,
    this.createdAt,
  });

  /// Variant UUID
  String id;

  String campaignId;

  /// Variant name (e.g., \"Variant A\")
  String name;

  String subject;

  /// HTML email body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  /// Plain text email body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Traffic weight percentage (all variant weights must sum to 100)
  int weight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignVariant &&
    other.id == id &&
    other.campaignId == campaignId &&
    other.name == name &&
    other.subject == subject &&
    other.html == html &&
    other.text == text &&
    other.weight == weight &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (campaignId.hashCode) +
    (name.hashCode) +
    (subject.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (weight.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'CampaignVariant[id=$id, campaignId=$campaignId, name=$name, subject=$subject, html=$html, text=$text, weight=$weight, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'campaign_id'] = this.campaignId;
      json[r'name'] = this.name;
      json[r'subject'] = this.subject;
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'weight'] = this.weight;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignVariant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignVariant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignVariant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignVariant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignVariant(
        id: mapValueOfType<String>(json, r'id')!,
        campaignId: mapValueOfType<String>(json, r'campaign_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        html: mapValueOfType<String>(json, r'html'),
        text: mapValueOfType<String>(json, r'text'),
        weight: mapValueOfType<int>(json, r'weight')!,
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<CampaignVariant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignVariant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignVariant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignVariant> mapFromJson(dynamic json) {
    final map = <String, CampaignVariant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignVariant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignVariant-objects as value to a dart map
  static Map<String, List<CampaignVariant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignVariant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignVariant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'campaign_id',
    'name',
    'subject',
    'weight',
  };
}

