//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuppressionAuditResponseEntriesInner {
  /// Returns a new [SuppressionAuditResponseEntriesInner] instance.
  SuppressionAuditResponseEntriesInner({
    this.id,
    this.eventType,
    this.eventCategory,
    this.details,
    this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Audit event type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventCategory;

  /// Event-specific details
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? details;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuppressionAuditResponseEntriesInner &&
    other.id == id &&
    other.eventType == eventType &&
    other.eventCategory == eventCategory &&
    other.details == details &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (eventType == null ? 0 : eventType!.hashCode) +
    (eventCategory == null ? 0 : eventCategory!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'SuppressionAuditResponseEntriesInner[id=$id, eventType=$eventType, eventCategory=$eventCategory, details=$details, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.eventType != null) {
      json[r'event_type'] = this.eventType;
    } else {
      json[r'event_type'] = null;
    }
    if (this.eventCategory != null) {
      json[r'event_category'] = this.eventCategory;
    } else {
      json[r'event_category'] = null;
    }
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [SuppressionAuditResponseEntriesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuppressionAuditResponseEntriesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuppressionAuditResponseEntriesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuppressionAuditResponseEntriesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuppressionAuditResponseEntriesInner(
        id: mapValueOfType<int>(json, r'id'),
        eventType: mapValueOfType<String>(json, r'event_type'),
        eventCategory: mapValueOfType<String>(json, r'event_category'),
        details: mapValueOfType<Object>(json, r'details'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<SuppressionAuditResponseEntriesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressionAuditResponseEntriesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressionAuditResponseEntriesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuppressionAuditResponseEntriesInner> mapFromJson(dynamic json) {
    final map = <String, SuppressionAuditResponseEntriesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuppressionAuditResponseEntriesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuppressionAuditResponseEntriesInner-objects as value to a dart map
  static Map<String, List<SuppressionAuditResponseEntriesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuppressionAuditResponseEntriesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuppressionAuditResponseEntriesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

