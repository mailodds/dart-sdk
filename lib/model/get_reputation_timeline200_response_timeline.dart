//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetReputationTimeline200ResponseTimeline {
  /// Returns a new [GetReputationTimeline200ResponseTimeline] instance.
  GetReputationTimeline200ResponseTimeline({
    this.period,
    this.timeline = const [],
  });

  GetReputationTimeline200ResponseTimelinePeriodEnum? period;

  List<GetReputationTimeline200ResponseTimelineTimelineInner> timeline;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetReputationTimeline200ResponseTimeline &&
    other.period == period &&
    _deepEquality.equals(other.timeline, timeline);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (period == null ? 0 : period!.hashCode) +
    (timeline.hashCode);

  @override
  String toString() => 'GetReputationTimeline200ResponseTimeline[period=$period, timeline=$timeline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
      json[r'timeline'] = this.timeline;
    return json;
  }

  /// Returns a new [GetReputationTimeline200ResponseTimeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetReputationTimeline200ResponseTimeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetReputationTimeline200ResponseTimeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetReputationTimeline200ResponseTimeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetReputationTimeline200ResponseTimeline(
        period: GetReputationTimeline200ResponseTimelinePeriodEnum.fromJson(json[r'period']),
        timeline: GetReputationTimeline200ResponseTimelineTimelineInner.listFromJson(json[r'timeline']),
      );
    }
    return null;
  }

  static List<GetReputationTimeline200ResponseTimeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetReputationTimeline200ResponseTimeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetReputationTimeline200ResponseTimeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetReputationTimeline200ResponseTimeline> mapFromJson(dynamic json) {
    final map = <String, GetReputationTimeline200ResponseTimeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetReputationTimeline200ResponseTimeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetReputationTimeline200ResponseTimeline-objects as value to a dart map
  static Map<String, List<GetReputationTimeline200ResponseTimeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetReputationTimeline200ResponseTimeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetReputationTimeline200ResponseTimeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GetReputationTimeline200ResponseTimelinePeriodEnum {
  /// Instantiate a new enum with the provided [value].
  const GetReputationTimeline200ResponseTimelinePeriodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n24h = GetReputationTimeline200ResponseTimelinePeriodEnum._(r'24h');
  static const n7d = GetReputationTimeline200ResponseTimelinePeriodEnum._(r'7d');
  static const n30d = GetReputationTimeline200ResponseTimelinePeriodEnum._(r'30d');

  /// List of all possible values in this [enum][GetReputationTimeline200ResponseTimelinePeriodEnum].
  static const values = <GetReputationTimeline200ResponseTimelinePeriodEnum>[
    n24h,
    n7d,
    n30d,
  ];

  static GetReputationTimeline200ResponseTimelinePeriodEnum? fromJson(dynamic value) => GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer().decode(value);

  static List<GetReputationTimeline200ResponseTimelinePeriodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetReputationTimeline200ResponseTimelinePeriodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetReputationTimeline200ResponseTimelinePeriodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetReputationTimeline200ResponseTimelinePeriodEnum] to String,
/// and [decode] dynamic data back to [GetReputationTimeline200ResponseTimelinePeriodEnum].
class GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer {
  factory GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer() => _instance ??= const GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer._();

  const GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer._();

  String encode(GetReputationTimeline200ResponseTimelinePeriodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetReputationTimeline200ResponseTimelinePeriodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetReputationTimeline200ResponseTimelinePeriodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'24h': return GetReputationTimeline200ResponseTimelinePeriodEnum.n24h;
        case r'7d': return GetReputationTimeline200ResponseTimelinePeriodEnum.n7d;
        case r'30d': return GetReputationTimeline200ResponseTimelinePeriodEnum.n30d;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer] instance.
  static GetReputationTimeline200ResponseTimelinePeriodEnumTypeTransformer? _instance;
}


