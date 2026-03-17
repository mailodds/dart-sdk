//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class BlacklistMonitor {
  /// Returns a new [BlacklistMonitor] instance.
  BlacklistMonitor({
    this.id,
    this.target,
    this.targetType,
    this.status,
    this.listedCount,
    this.lastCheckedAt,
    this.latestCheck,
    this.createdAt,
  });

  /// Monitor UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IP address or domain being monitored
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  BlacklistMonitorTargetTypeEnum? targetType;

  /// Current status (clean, listed)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Number of blacklists currently listing this target
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? listedCount;

  DateTime? lastCheckedAt;

  BlacklistMonitorLatestCheck? latestCheck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlacklistMonitor &&
    other.id == id &&
    other.target == target &&
    other.targetType == targetType &&
    other.status == status &&
    other.listedCount == listedCount &&
    other.lastCheckedAt == lastCheckedAt &&
    other.latestCheck == latestCheck &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (targetType == null ? 0 : targetType!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (listedCount == null ? 0 : listedCount!.hashCode) +
    (lastCheckedAt == null ? 0 : lastCheckedAt!.hashCode) +
    (latestCheck == null ? 0 : latestCheck!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'BlacklistMonitor[id=$id, target=$target, targetType=$targetType, status=$status, listedCount=$listedCount, lastCheckedAt=$lastCheckedAt, latestCheck=$latestCheck, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.targetType != null) {
      json[r'target_type'] = this.targetType;
    } else {
      json[r'target_type'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.listedCount != null) {
      json[r'listed_count'] = this.listedCount;
    } else {
      json[r'listed_count'] = null;
    }
    if (this.lastCheckedAt != null) {
      json[r'last_checked_at'] = this.lastCheckedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_checked_at'] = null;
    }
    if (this.latestCheck != null) {
      json[r'latest_check'] = this.latestCheck;
    } else {
      json[r'latest_check'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [BlacklistMonitor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlacklistMonitor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlacklistMonitor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlacklistMonitor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlacklistMonitor(
        id: mapValueOfType<String>(json, r'id'),
        target: mapValueOfType<String>(json, r'target'),
        targetType: BlacklistMonitorTargetTypeEnum.fromJson(json[r'target_type']),
        status: mapValueOfType<String>(json, r'status'),
        listedCount: mapValueOfType<int>(json, r'listed_count'),
        lastCheckedAt: mapDateTime(json, r'last_checked_at', r''),
        latestCheck: BlacklistMonitorLatestCheck.fromJson(json[r'latest_check']),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<BlacklistMonitor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlacklistMonitor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlacklistMonitor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlacklistMonitor> mapFromJson(dynamic json) {
    final map = <String, BlacklistMonitor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlacklistMonitor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlacklistMonitor-objects as value to a dart map
  static Map<String, List<BlacklistMonitor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlacklistMonitor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlacklistMonitor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BlacklistMonitorTargetTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BlacklistMonitorTargetTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ip = BlacklistMonitorTargetTypeEnum._(r'ip');
  static const domain = BlacklistMonitorTargetTypeEnum._(r'domain');

  /// List of all possible values in this [enum][BlacklistMonitorTargetTypeEnum].
  static const values = <BlacklistMonitorTargetTypeEnum>[
    ip,
    domain,
  ];

  static BlacklistMonitorTargetTypeEnum? fromJson(dynamic value) => BlacklistMonitorTargetTypeEnumTypeTransformer().decode(value);

  static List<BlacklistMonitorTargetTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlacklistMonitorTargetTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlacklistMonitorTargetTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BlacklistMonitorTargetTypeEnum] to String,
/// and [decode] dynamic data back to [BlacklistMonitorTargetTypeEnum].
class BlacklistMonitorTargetTypeEnumTypeTransformer {
  factory BlacklistMonitorTargetTypeEnumTypeTransformer() => _instance ??= const BlacklistMonitorTargetTypeEnumTypeTransformer._();

  const BlacklistMonitorTargetTypeEnumTypeTransformer._();

  String encode(BlacklistMonitorTargetTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BlacklistMonitorTargetTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BlacklistMonitorTargetTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ip': return BlacklistMonitorTargetTypeEnum.ip;
        case r'domain': return BlacklistMonitorTargetTypeEnum.domain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BlacklistMonitorTargetTypeEnumTypeTransformer] instance.
  static BlacklistMonitorTargetTypeEnumTypeTransformer? _instance;
}


