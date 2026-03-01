//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetrySummaryRates {
  /// Returns a new [TelemetrySummaryRates] instance.
  TelemetrySummaryRates({
    this.deliverable,
    this.reject,
    this.unknown,
    this.suppressed,
  });

  /// Rate of valid + catch_all emails
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? deliverable;

  /// Rate of invalid + do_not_mail emails
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? reject;

  /// Rate of unknown status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? unknown;

  /// Rate of suppressed emails
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? suppressed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetrySummaryRates &&
    other.deliverable == deliverable &&
    other.reject == reject &&
    other.unknown == unknown &&
    other.suppressed == suppressed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deliverable == null ? 0 : deliverable!.hashCode) +
    (reject == null ? 0 : reject!.hashCode) +
    (unknown == null ? 0 : unknown!.hashCode) +
    (suppressed == null ? 0 : suppressed!.hashCode);

  @override
  String toString() => 'TelemetrySummaryRates[deliverable=$deliverable, reject=$reject, unknown=$unknown, suppressed=$suppressed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deliverable != null) {
      json[r'deliverable'] = this.deliverable;
    } else {
      json[r'deliverable'] = null;
    }
    if (this.reject != null) {
      json[r'reject'] = this.reject;
    } else {
      json[r'reject'] = null;
    }
    if (this.unknown != null) {
      json[r'unknown'] = this.unknown;
    } else {
      json[r'unknown'] = null;
    }
    if (this.suppressed != null) {
      json[r'suppressed'] = this.suppressed;
    } else {
      json[r'suppressed'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetrySummaryRates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetrySummaryRates? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetrySummaryRates[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetrySummaryRates[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetrySummaryRates(
        deliverable: num.parse('${json[r'deliverable']}'),
        reject: num.parse('${json[r'reject']}'),
        unknown: num.parse('${json[r'unknown']}'),
        suppressed: num.parse('${json[r'suppressed']}'),
      );
    }
    return null;
  }

  static List<TelemetrySummaryRates> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetrySummaryRates>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetrySummaryRates.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetrySummaryRates> mapFromJson(dynamic json) {
    final map = <String, TelemetrySummaryRates>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetrySummaryRates.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetrySummaryRates-objects as value to a dart map
  static Map<String, List<TelemetrySummaryRates>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetrySummaryRates>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetrySummaryRates.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

