//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetrySummaryTotals {
  /// Returns a new [TelemetrySummaryTotals] instance.
  TelemetrySummaryTotals({
    this.validations,
    this.creditsUsed,
  });

  /// Total validations in window
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? validations;

  /// Credits consumed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditsUsed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetrySummaryTotals &&
    other.validations == validations &&
    other.creditsUsed == creditsUsed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (validations == null ? 0 : validations!.hashCode) +
    (creditsUsed == null ? 0 : creditsUsed!.hashCode);

  @override
  String toString() => 'TelemetrySummaryTotals[validations=$validations, creditsUsed=$creditsUsed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.validations != null) {
      json[r'validations'] = this.validations;
    } else {
      json[r'validations'] = null;
    }
    if (this.creditsUsed != null) {
      json[r'creditsUsed'] = this.creditsUsed;
    } else {
      json[r'creditsUsed'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetrySummaryTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetrySummaryTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetrySummaryTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetrySummaryTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetrySummaryTotals(
        validations: mapValueOfType<int>(json, r'validations'),
        creditsUsed: mapValueOfType<int>(json, r'creditsUsed'),
      );
    }
    return null;
  }

  static List<TelemetrySummaryTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetrySummaryTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetrySummaryTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetrySummaryTotals> mapFromJson(dynamic json) {
    final map = <String, TelemetrySummaryTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetrySummaryTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetrySummaryTotals-objects as value to a dart map
  static Map<String, List<TelemetrySummaryTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetrySummaryTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetrySummaryTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

