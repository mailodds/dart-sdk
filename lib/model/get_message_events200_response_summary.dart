//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMessageEvents200ResponseSummary {
  /// Returns a new [GetMessageEvents200ResponseSummary] instance.
  GetMessageEvents200ResponseSummary({
    this.delivered,
    this.bounced,
    this.humanOpens,
    this.botOpens,
    this.clicks,
    this.unsubscribed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? delivered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? bounced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? humanOpens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? botOpens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clicks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unsubscribed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMessageEvents200ResponseSummary &&
    other.delivered == delivered &&
    other.bounced == bounced &&
    other.humanOpens == humanOpens &&
    other.botOpens == botOpens &&
    other.clicks == clicks &&
    other.unsubscribed == unsubscribed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (delivered == null ? 0 : delivered!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (humanOpens == null ? 0 : humanOpens!.hashCode) +
    (botOpens == null ? 0 : botOpens!.hashCode) +
    (clicks == null ? 0 : clicks!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode);

  @override
  String toString() => 'GetMessageEvents200ResponseSummary[delivered=$delivered, bounced=$bounced, humanOpens=$humanOpens, botOpens=$botOpens, clicks=$clicks, unsubscribed=$unsubscribed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.humanOpens != null) {
      json[r'human_opens'] = this.humanOpens;
    } else {
      json[r'human_opens'] = null;
    }
    if (this.botOpens != null) {
      json[r'bot_opens'] = this.botOpens;
    } else {
      json[r'bot_opens'] = null;
    }
    if (this.clicks != null) {
      json[r'clicks'] = this.clicks;
    } else {
      json[r'clicks'] = null;
    }
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
    return json;
  }

  /// Returns a new [GetMessageEvents200ResponseSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMessageEvents200ResponseSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMessageEvents200ResponseSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMessageEvents200ResponseSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMessageEvents200ResponseSummary(
        delivered: mapValueOfType<bool>(json, r'delivered'),
        bounced: mapValueOfType<bool>(json, r'bounced'),
        humanOpens: mapValueOfType<int>(json, r'human_opens'),
        botOpens: mapValueOfType<int>(json, r'bot_opens'),
        clicks: mapValueOfType<int>(json, r'clicks'),
        unsubscribed: mapValueOfType<bool>(json, r'unsubscribed'),
      );
    }
    return null;
  }

  static List<GetMessageEvents200ResponseSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMessageEvents200ResponseSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMessageEvents200ResponseSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMessageEvents200ResponseSummary> mapFromJson(dynamic json) {
    final map = <String, GetMessageEvents200ResponseSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMessageEvents200ResponseSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMessageEvents200ResponseSummary-objects as value to a dart map
  static Map<String, List<GetMessageEvents200ResponseSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMessageEvents200ResponseSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMessageEvents200ResponseSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

