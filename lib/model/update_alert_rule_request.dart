//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateAlertRuleRequest {
  /// Returns a new [UpdateAlertRuleRequest] instance.
  UpdateAlertRuleRequest({
    this.metric,
    this.threshold,
    this.channel,
    this.windowMinutes,
    this.enabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metric;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? threshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowMinutes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateAlertRuleRequest &&
    other.metric == metric &&
    other.threshold == threshold &&
    other.channel == channel &&
    other.windowMinutes == windowMinutes &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metric == null ? 0 : metric!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (windowMinutes == null ? 0 : windowMinutes!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'UpdateAlertRuleRequest[metric=$metric, threshold=$threshold, channel=$channel, windowMinutes=$windowMinutes, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
    if (this.threshold != null) {
      json[r'threshold'] = this.threshold;
    } else {
      json[r'threshold'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.windowMinutes != null) {
      json[r'window_minutes'] = this.windowMinutes;
    } else {
      json[r'window_minutes'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateAlertRuleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateAlertRuleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateAlertRuleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateAlertRuleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateAlertRuleRequest(
        metric: mapValueOfType<String>(json, r'metric'),
        threshold: num.parse('${json[r'threshold']}'),
        channel: mapValueOfType<String>(json, r'channel'),
        windowMinutes: mapValueOfType<int>(json, r'window_minutes'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<UpdateAlertRuleRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateAlertRuleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateAlertRuleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateAlertRuleRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateAlertRuleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateAlertRuleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateAlertRuleRequest-objects as value to a dart map
  static Map<String, List<UpdateAlertRuleRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateAlertRuleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateAlertRuleRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

