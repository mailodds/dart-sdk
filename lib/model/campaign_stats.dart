//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CampaignStats {
  /// Returns a new [CampaignStats] instance.
  CampaignStats({
    this.sent,
    this.delivered,
    this.opened,
    this.clicked,
    this.bounced,
    this.unsubscribed,
    this.suppressed,
    this.failed,
    this.conversions,
  });

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
  int? unsubscribed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suppressed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? conversions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignStats &&
    other.sent == sent &&
    other.delivered == delivered &&
    other.opened == opened &&
    other.clicked == clicked &&
    other.bounced == bounced &&
    other.unsubscribed == unsubscribed &&
    other.suppressed == suppressed &&
    other.failed == failed &&
    other.conversions == conversions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sent == null ? 0 : sent!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (opened == null ? 0 : opened!.hashCode) +
    (clicked == null ? 0 : clicked!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode) +
    (suppressed == null ? 0 : suppressed!.hashCode) +
    (failed == null ? 0 : failed!.hashCode) +
    (conversions == null ? 0 : conversions!.hashCode);

  @override
  String toString() => 'CampaignStats[sent=$sent, delivered=$delivered, opened=$opened, clicked=$clicked, bounced=$bounced, unsubscribed=$unsubscribed, suppressed=$suppressed, failed=$failed, conversions=$conversions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
    if (this.suppressed != null) {
      json[r'suppressed'] = this.suppressed;
    } else {
      json[r'suppressed'] = null;
    }
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.conversions != null) {
      json[r'conversions'] = this.conversions;
    } else {
      json[r'conversions'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignStats(
        sent: mapValueOfType<int>(json, r'sent'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        opened: mapValueOfType<int>(json, r'opened'),
        clicked: mapValueOfType<int>(json, r'clicked'),
        bounced: mapValueOfType<int>(json, r'bounced'),
        unsubscribed: mapValueOfType<int>(json, r'unsubscribed'),
        suppressed: mapValueOfType<int>(json, r'suppressed'),
        failed: mapValueOfType<int>(json, r'failed'),
        conversions: mapValueOfType<int>(json, r'conversions'),
      );
    }
    return null;
  }

  static List<CampaignStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignStats> mapFromJson(dynamic json) {
    final map = <String, CampaignStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignStats-objects as value to a dart map
  static Map<String, List<CampaignStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

