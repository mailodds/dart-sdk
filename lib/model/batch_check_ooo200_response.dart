//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchCheckOoo200Response {
  /// Returns a new [BatchCheckOoo200Response] instance.
  BatchCheckOoo200Response({
    this.results = const [],
    this.total,
    this.oooCount,
  });

  List<BatchCheckOoo200ResponseResultsInner> results;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? oooCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchCheckOoo200Response &&
    _deepEquality.equals(other.results, results) &&
    other.total == total &&
    other.oooCount == oooCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (results.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (oooCount == null ? 0 : oooCount!.hashCode);

  @override
  String toString() => 'BatchCheckOoo200Response[results=$results, total=$total, oooCount=$oooCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = this.results;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.oooCount != null) {
      json[r'ooo_count'] = this.oooCount;
    } else {
      json[r'ooo_count'] = null;
    }
    return json;
  }

  /// Returns a new [BatchCheckOoo200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchCheckOoo200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchCheckOoo200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchCheckOoo200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchCheckOoo200Response(
        results: BatchCheckOoo200ResponseResultsInner.listFromJson(json[r'results']),
        total: mapValueOfType<int>(json, r'total'),
        oooCount: mapValueOfType<int>(json, r'ooo_count'),
      );
    }
    return null;
  }

  static List<BatchCheckOoo200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchCheckOoo200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchCheckOoo200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchCheckOoo200Response> mapFromJson(dynamic json) {
    final map = <String, BatchCheckOoo200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchCheckOoo200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchCheckOoo200Response-objects as value to a dart map
  static Map<String, List<BatchCheckOoo200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchCheckOoo200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchCheckOoo200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

