//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchDeliverResponseDelivery {
  /// Returns a new [BatchDeliverResponseDelivery] instance.
  BatchDeliverResponseDelivery({
    this.pool,
    this.lane,
    this.queuedAt,
  });

  /// IP pool used
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pool;

  /// Delivery lane (green or yellow)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lane;

  /// Timestamp when batch was queued
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? queuedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchDeliverResponseDelivery &&
    other.pool == pool &&
    other.lane == lane &&
    other.queuedAt == queuedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pool == null ? 0 : pool!.hashCode) +
    (lane == null ? 0 : lane!.hashCode) +
    (queuedAt == null ? 0 : queuedAt!.hashCode);

  @override
  String toString() => 'BatchDeliverResponseDelivery[pool=$pool, lane=$lane, queuedAt=$queuedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.lane != null) {
      json[r'lane'] = this.lane;
    } else {
      json[r'lane'] = null;
    }
    if (this.queuedAt != null) {
      json[r'queued_at'] = this.queuedAt!.toUtc().toIso8601String();
    } else {
      json[r'queued_at'] = null;
    }
    return json;
  }

  /// Returns a new [BatchDeliverResponseDelivery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchDeliverResponseDelivery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchDeliverResponseDelivery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchDeliverResponseDelivery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchDeliverResponseDelivery(
        pool: mapValueOfType<String>(json, r'pool'),
        lane: mapValueOfType<String>(json, r'lane'),
        queuedAt: mapDateTime(json, r'queued_at', r''),
      );
    }
    return null;
  }

  static List<BatchDeliverResponseDelivery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchDeliverResponseDelivery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchDeliverResponseDelivery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchDeliverResponseDelivery> mapFromJson(dynamic json) {
    final map = <String, BatchDeliverResponseDelivery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchDeliverResponseDelivery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchDeliverResponseDelivery-objects as value to a dart map
  static Map<String, List<BatchDeliverResponseDelivery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchDeliverResponseDelivery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchDeliverResponseDelivery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

