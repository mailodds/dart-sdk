//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// JSON-LD structured data (object, array, or string). Max 10KB.
class DeliverRequestStructuredData {
  DeliverRequestStructuredData({this.value});

  dynamic value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliverRequestStructuredData && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'DeliverRequestStructuredData[$value]';

  Map<String, dynamic> toJson() {
    if (value is Map) return value as Map<String, dynamic>;
    return {'value': value};
  }

  static DeliverRequestStructuredData? fromJson(dynamic json) {
    if (json == null) return null;
    return DeliverRequestStructuredData(value: json);
  }

  static List<DeliverRequestStructuredData> listFromJson(dynamic json, {bool growable = false}) {
    final result = <DeliverRequestStructuredData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverRequestStructuredData.fromJson(row);
        if (value != null) result.add(value);
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverRequestStructuredData> mapFromJson(dynamic json) {
    final map = <String, DeliverRequestStructuredData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        final value = DeliverRequestStructuredData.fromJson(entry.value);
        if (value != null) map[entry.key] = value;
      }
    }
    return map;
  }

  static Map<String, List<DeliverRequestStructuredData>> mapListFromJson(dynamic json, {bool growable = false}) {
    final map = <String, List<DeliverRequestStructuredData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverRequestStructuredData.listFromJson(entry.value, growable: growable);
      }
    }
    return map;
  }

  static const requiredKeys = <String>{};
}
