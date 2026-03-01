//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetrySummary {
  /// Returns a new [TelemetrySummary] instance.
  TelemetrySummary({
    this.schemaVersion,
    this.window,
    this.generatedAt,
    this.timezone,
    this.totals,
    this.rates,
    this.topReasons = const [],
    this.topDomains = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  TelemetrySummaryWindowEnum? window;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? generatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TelemetrySummaryTotals? totals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TelemetrySummaryRates? rates;

  /// Top rejection/status reasons
  List<TelemetrySummaryTopReasonsInner> topReasons;

  /// Top domains by volume
  List<TelemetrySummaryTopDomainsInner> topDomains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetrySummary &&
    other.schemaVersion == schemaVersion &&
    other.window == window &&
    other.generatedAt == generatedAt &&
    other.timezone == timezone &&
    other.totals == totals &&
    other.rates == rates &&
    _deepEquality.equals(other.topReasons, topReasons) &&
    _deepEquality.equals(other.topDomains, topDomains);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (window == null ? 0 : window!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (totals == null ? 0 : totals!.hashCode) +
    (rates == null ? 0 : rates!.hashCode) +
    (topReasons.hashCode) +
    (topDomains.hashCode);

  @override
  String toString() => 'TelemetrySummary[schemaVersion=$schemaVersion, window=$window, generatedAt=$generatedAt, timezone=$timezone, totals=$totals, rates=$rates, topReasons=$topReasons, topDomains=$topDomains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schemaVersion'] = this.schemaVersion;
    } else {
      json[r'schemaVersion'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt!.toUtc().toIso8601String();
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    if (this.rates != null) {
      json[r'rates'] = this.rates;
    } else {
      json[r'rates'] = null;
    }
      json[r'topReasons'] = this.topReasons;
      json[r'topDomains'] = this.topDomains;
    return json;
  }

  /// Returns a new [TelemetrySummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetrySummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetrySummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetrySummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetrySummary(
        schemaVersion: mapValueOfType<String>(json, r'schemaVersion'),
        window: TelemetrySummaryWindowEnum.fromJson(json[r'window']),
        generatedAt: mapDateTime(json, r'generatedAt', r''),
        timezone: mapValueOfType<String>(json, r'timezone'),
        totals: TelemetrySummaryTotals.fromJson(json[r'totals']),
        rates: TelemetrySummaryRates.fromJson(json[r'rates']),
        topReasons: TelemetrySummaryTopReasonsInner.listFromJson(json[r'topReasons']),
        topDomains: TelemetrySummaryTopDomainsInner.listFromJson(json[r'topDomains']),
      );
    }
    return null;
  }

  static List<TelemetrySummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetrySummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetrySummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetrySummary> mapFromJson(dynamic json) {
    final map = <String, TelemetrySummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetrySummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetrySummary-objects as value to a dart map
  static Map<String, List<TelemetrySummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetrySummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetrySummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TelemetrySummaryWindowEnum {
  /// Instantiate a new enum with the provided [value].
  const TelemetrySummaryWindowEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1h = TelemetrySummaryWindowEnum._(r'1h');
  static const n24h = TelemetrySummaryWindowEnum._(r'24h');
  static const n30d = TelemetrySummaryWindowEnum._(r'30d');

  /// List of all possible values in this [enum][TelemetrySummaryWindowEnum].
  static const values = <TelemetrySummaryWindowEnum>[
    n1h,
    n24h,
    n30d,
  ];

  static TelemetrySummaryWindowEnum? fromJson(dynamic value) => TelemetrySummaryWindowEnumTypeTransformer().decode(value);

  static List<TelemetrySummaryWindowEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetrySummaryWindowEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetrySummaryWindowEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TelemetrySummaryWindowEnum] to String,
/// and [decode] dynamic data back to [TelemetrySummaryWindowEnum].
class TelemetrySummaryWindowEnumTypeTransformer {
  factory TelemetrySummaryWindowEnumTypeTransformer() => _instance ??= const TelemetrySummaryWindowEnumTypeTransformer._();

  const TelemetrySummaryWindowEnumTypeTransformer._();

  String encode(TelemetrySummaryWindowEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TelemetrySummaryWindowEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TelemetrySummaryWindowEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1h': return TelemetrySummaryWindowEnum.n1h;
        case r'24h': return TelemetrySummaryWindowEnum.n24h;
        case r'30d': return TelemetrySummaryWindowEnum.n30d;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TelemetrySummaryWindowEnumTypeTransformer] instance.
  static TelemetrySummaryWindowEnumTypeTransformer? _instance;
}


