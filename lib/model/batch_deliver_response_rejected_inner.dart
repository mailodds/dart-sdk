//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchDeliverResponseRejectedInner {
  /// Returns a new [BatchDeliverResponseRejectedInner] instance.
  BatchDeliverResponseRejectedInner({
    this.email,
    this.reason,
    this.status,
    this.subStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Rejection reason (suppressed, validation_rejected)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Validation status if rejected by validation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Validation sub-status if rejected by validation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchDeliverResponseRejectedInner &&
    other.email == email &&
    other.reason == reason &&
    other.status == status &&
    other.subStatus == subStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subStatus == null ? 0 : subStatus!.hashCode);

  @override
  String toString() => 'BatchDeliverResponseRejectedInner[email=$email, reason=$reason, status=$status, subStatus=$subStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subStatus != null) {
      json[r'sub_status'] = this.subStatus;
    } else {
      json[r'sub_status'] = null;
    }
    return json;
  }

  /// Returns a new [BatchDeliverResponseRejectedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchDeliverResponseRejectedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchDeliverResponseRejectedInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchDeliverResponseRejectedInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchDeliverResponseRejectedInner(
        email: mapValueOfType<String>(json, r'email'),
        reason: mapValueOfType<String>(json, r'reason'),
        status: mapValueOfType<String>(json, r'status'),
        subStatus: mapValueOfType<String>(json, r'sub_status'),
      );
    }
    return null;
  }

  static List<BatchDeliverResponseRejectedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchDeliverResponseRejectedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchDeliverResponseRejectedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchDeliverResponseRejectedInner> mapFromJson(dynamic json) {
    final map = <String, BatchDeliverResponseRejectedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchDeliverResponseRejectedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchDeliverResponseRejectedInner-objects as value to a dart map
  static Map<String, List<BatchDeliverResponseRejectedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchDeliverResponseRejectedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchDeliverResponseRejectedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

