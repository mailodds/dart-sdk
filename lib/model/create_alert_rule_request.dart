//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateAlertRuleRequest {
  /// Returns a new [CreateAlertRuleRequest] instance.
  CreateAlertRuleRequest({
    required this.metric,
    required this.threshold,
    required this.channel,
    this.windowMinutes = 60,
    this.enabled = true,
  });

  /// Metric to monitor (e.g., bounce_rate, complaint_rate)
  String metric;

  /// Threshold value (0-1, e.g. 0.02 for 2%)
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  num threshold;

  /// Notification channel (e.g., webhook)
  String channel;

  /// Evaluation window in minutes (15, 60, 1440, or 2880)
  int windowMinutes;

  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAlertRuleRequest &&
    other.metric == metric &&
    other.threshold == threshold &&
    other.channel == channel &&
    other.windowMinutes == windowMinutes &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metric.hashCode) +
    (threshold.hashCode) +
    (channel.hashCode) +
    (windowMinutes.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'CreateAlertRuleRequest[metric=$metric, threshold=$threshold, channel=$channel, windowMinutes=$windowMinutes, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'metric'] = this.metric;
      json[r'threshold'] = this.threshold;
      json[r'channel'] = this.channel;
      json[r'window_minutes'] = this.windowMinutes;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [CreateAlertRuleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAlertRuleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAlertRuleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAlertRuleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAlertRuleRequest(
        metric: mapValueOfType<String>(json, r'metric')!,
        threshold: num.parse('${json[r'threshold']}'),
        channel: mapValueOfType<String>(json, r'channel')!,
        windowMinutes: mapValueOfType<int>(json, r'window_minutes') ?? 60,
        enabled: mapValueOfType<bool>(json, r'enabled') ?? true,
      );
    }
    return null;
  }

  static List<CreateAlertRuleRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAlertRuleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAlertRuleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAlertRuleRequest> mapFromJson(dynamic json) {
    final map = <String, CreateAlertRuleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAlertRuleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAlertRuleRequest-objects as value to a dart map
  static Map<String, List<CreateAlertRuleRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAlertRuleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAlertRuleRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'metric',
    'threshold',
    'channel',
  };
}

