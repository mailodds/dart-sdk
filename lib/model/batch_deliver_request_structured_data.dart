//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Structured data for batch deliver request. Accepts JSON object, array, or string.
class BatchDeliverRequestStructuredData {
  /// The underlying value.
  final dynamic value;

  /// Returns a new [BatchDeliverRequestStructuredData] instance.
  BatchDeliverRequestStructuredData(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchDeliverRequestStructuredData && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'BatchDeliverRequestStructuredData[$value]';

  dynamic toJson() {
    return value;
  }

  /// Returns a new [BatchDeliverRequestStructuredData] instance from the given value.
  // ignore: prefer_constructors_over_static_methods
  static BatchDeliverRequestStructuredData? fromJson(dynamic value) {
    if (value != null) {
      return BatchDeliverRequestStructuredData(value);
    }
    return null;
  }

  static List<BatchDeliverRequestStructuredData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchDeliverRequestStructuredData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchDeliverRequestStructuredData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchDeliverRequestStructuredData> mapFromJson(dynamic json) {
    final map = <String, BatchDeliverRequestStructuredData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchDeliverRequestStructuredData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchDeliverRequestStructuredData-objects as value to a dart map
  static Map<String, List<BatchDeliverRequestStructuredData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchDeliverRequestStructuredData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchDeliverRequestStructuredData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
