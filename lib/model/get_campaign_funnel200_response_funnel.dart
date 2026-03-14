//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCampaignFunnel200ResponseFunnel {
  /// Returns a new [GetCampaignFunnel200ResponseFunnel] instance.
  GetCampaignFunnel200ResponseFunnel({
    this.sent,
    this.delivered,
    this.opened,
    this.clicked,
    this.unsubscribed,
    this.bounced,
    this.complained,
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
  int? unsubscribed;

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
  int? complained;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignFunnel200ResponseFunnel &&
    other.sent == sent &&
    other.delivered == delivered &&
    other.opened == opened &&
    other.clicked == clicked &&
    other.unsubscribed == unsubscribed &&
    other.bounced == bounced &&
    other.complained == complained;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sent == null ? 0 : sent!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (opened == null ? 0 : opened!.hashCode) +
    (clicked == null ? 0 : clicked!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (complained == null ? 0 : complained!.hashCode);

  @override
  String toString() => 'GetCampaignFunnel200ResponseFunnel[sent=$sent, delivered=$delivered, opened=$opened, clicked=$clicked, unsubscribed=$unsubscribed, bounced=$bounced, complained=$complained]';

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
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
    if (this.bounced != null) {
      json[r'bounced'] = this.bounced;
    } else {
      json[r'bounced'] = null;
    }
    if (this.complained != null) {
      json[r'complained'] = this.complained;
    } else {
      json[r'complained'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignFunnel200ResponseFunnel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignFunnel200ResponseFunnel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignFunnel200ResponseFunnel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignFunnel200ResponseFunnel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignFunnel200ResponseFunnel(
        sent: mapValueOfType<int>(json, r'sent'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        opened: mapValueOfType<int>(json, r'opened'),
        clicked: mapValueOfType<int>(json, r'clicked'),
        unsubscribed: mapValueOfType<int>(json, r'unsubscribed'),
        bounced: mapValueOfType<int>(json, r'bounced'),
        complained: mapValueOfType<int>(json, r'complained'),
      );
    }
    return null;
  }

  static List<GetCampaignFunnel200ResponseFunnel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignFunnel200ResponseFunnel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignFunnel200ResponseFunnel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignFunnel200ResponseFunnel> mapFromJson(dynamic json) {
    final map = <String, GetCampaignFunnel200ResponseFunnel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignFunnel200ResponseFunnel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignFunnel200ResponseFunnel-objects as value to a dart map
  static Map<String, List<GetCampaignFunnel200ResponseFunnel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignFunnel200ResponseFunnel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignFunnel200ResponseFunnel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

