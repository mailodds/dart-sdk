//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class AlertRule {
  /// Returns a new [AlertRule] instance.
  AlertRule({
    this.id,
    this.metric,
    this.threshold,
    this.channel,
    this.windowMinutes,
    this.enabled,
    this.createdAt,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Monitored metric name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metric;

  /// Alert threshold value (0-1)
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? threshold;

  /// Notification channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Evaluation window in minutes
  AlertRuleWindowMinutesEnum? windowMinutes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlertRule &&
    other.id == id &&
    other.metric == metric &&
    other.threshold == threshold &&
    other.channel == channel &&
    other.windowMinutes == windowMinutes &&
    other.enabled == enabled &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (metric == null ? 0 : metric!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (windowMinutes == null ? 0 : windowMinutes!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AlertRule[id=$id, metric=$metric, threshold=$threshold, channel=$channel, windowMinutes=$windowMinutes, enabled=$enabled, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [AlertRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlertRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlertRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlertRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlertRule(
        id: mapValueOfType<String>(json, r'id'),
        metric: mapValueOfType<String>(json, r'metric'),
        threshold: num.parse('${json[r'threshold']}'),
        channel: mapValueOfType<String>(json, r'channel'),
        windowMinutes: AlertRuleWindowMinutesEnum.fromJson(json[r'window_minutes']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<AlertRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlertRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlertRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlertRule> mapFromJson(dynamic json) {
    final map = <String, AlertRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlertRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlertRule-objects as value to a dart map
  static Map<String, List<AlertRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlertRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlertRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Evaluation window in minutes
class AlertRuleWindowMinutesEnum {
  /// Instantiate a new enum with the provided [value].
  const AlertRuleWindowMinutesEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number15 = AlertRuleWindowMinutesEnum._(15);
  static const number60 = AlertRuleWindowMinutesEnum._(60);
  static const number1440 = AlertRuleWindowMinutesEnum._(1440);
  static const number2880 = AlertRuleWindowMinutesEnum._(2880);

  /// List of all possible values in this [enum][AlertRuleWindowMinutesEnum].
  static const values = <AlertRuleWindowMinutesEnum>[
    number15,
    number60,
    number1440,
    number2880,
  ];

  static AlertRuleWindowMinutesEnum? fromJson(dynamic value) => AlertRuleWindowMinutesEnumTypeTransformer().decode(value);

  static List<AlertRuleWindowMinutesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlertRuleWindowMinutesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlertRuleWindowMinutesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlertRuleWindowMinutesEnum] to int,
/// and [decode] dynamic data back to [AlertRuleWindowMinutesEnum].
class AlertRuleWindowMinutesEnumTypeTransformer {
  factory AlertRuleWindowMinutesEnumTypeTransformer() => _instance ??= const AlertRuleWindowMinutesEnumTypeTransformer._();

  const AlertRuleWindowMinutesEnumTypeTransformer._();

  int encode(AlertRuleWindowMinutesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlertRuleWindowMinutesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlertRuleWindowMinutesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 15: return AlertRuleWindowMinutesEnum.number15;
        case 60: return AlertRuleWindowMinutesEnum.number60;
        case 1440: return AlertRuleWindowMinutesEnum.number1440;
        case 2880: return AlertRuleWindowMinutesEnum.number2880;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlertRuleWindowMinutesEnumTypeTransformer] instance.
  static AlertRuleWindowMinutesEnumTypeTransformer? _instance;
}


