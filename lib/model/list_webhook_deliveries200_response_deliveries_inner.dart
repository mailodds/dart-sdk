//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ListWebhookDeliveries200ResponseDeliveriesInner {
  /// Returns a new [ListWebhookDeliveries200ResponseDeliveriesInner] instance.
  ListWebhookDeliveries200ResponseDeliveriesInner({
    this.id,
    this.eventType,
    this.status,
    this.statusCode,
    this.createdAt,
    this.jobId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

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
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  String? jobId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListWebhookDeliveries200ResponseDeliveriesInner &&
    other.id == id &&
    other.eventType == eventType &&
    other.status == status &&
    other.statusCode == statusCode &&
    other.createdAt == createdAt &&
    other.jobId == jobId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (eventType == null ? 0 : eventType!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (jobId == null ? 0 : jobId!.hashCode);

  @override
  String toString() => 'ListWebhookDeliveries200ResponseDeliveriesInner[id=$id, eventType=$eventType, status=$status, statusCode=$statusCode, createdAt=$createdAt, jobId=$jobId]';

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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusCode != null) {
      json[r'status_code'] = this.statusCode;
    } else {
      json[r'status_code'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.jobId != null) {
      json[r'job_id'] = this.jobId;
    } else {
      json[r'job_id'] = null;
    }
    return json;
  }

  /// Returns a new [ListWebhookDeliveries200ResponseDeliveriesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListWebhookDeliveries200ResponseDeliveriesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListWebhookDeliveries200ResponseDeliveriesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListWebhookDeliveries200ResponseDeliveriesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListWebhookDeliveries200ResponseDeliveriesInner(
        id: mapValueOfType<int>(json, r'id'),
        eventType: mapValueOfType<String>(json, r'event_type'),
        status: mapValueOfType<String>(json, r'status'),
        statusCode: mapValueOfType<int>(json, r'status_code'),
        createdAt: mapDateTime(json, r'created_at', r''),
        jobId: mapValueOfType<String>(json, r'job_id'),
      );
    }
    return null;
  }

  static List<ListWebhookDeliveries200ResponseDeliveriesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListWebhookDeliveries200ResponseDeliveriesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListWebhookDeliveries200ResponseDeliveriesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListWebhookDeliveries200ResponseDeliveriesInner> mapFromJson(dynamic json) {
    final map = <String, ListWebhookDeliveries200ResponseDeliveriesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListWebhookDeliveries200ResponseDeliveriesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListWebhookDeliveries200ResponseDeliveriesInner-objects as value to a dart map
  static Map<String, List<ListWebhookDeliveries200ResponseDeliveriesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListWebhookDeliveries200ResponseDeliveriesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListWebhookDeliveries200ResponseDeliveriesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

