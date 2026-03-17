//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class SyncResponse {
  /// Returns a new [SyncResponse] instance.
  SyncResponse({
    this.schemaVersion,
    this.requestId,
    this.scheduled,
    this.storeId,
    this.idempotent,
    this.existingJobId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scheduled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storeId;

  /// True if this was a duplicate request matched by Idempotency-Key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idempotent;

  /// ID of existing sync job if one was already running
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? existingJobId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SyncResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.scheduled == scheduled &&
    other.storeId == storeId &&
    other.idempotent == idempotent &&
    other.existingJobId == existingJobId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (scheduled == null ? 0 : scheduled!.hashCode) +
    (storeId == null ? 0 : storeId!.hashCode) +
    (idempotent == null ? 0 : idempotent!.hashCode) +
    (existingJobId == null ? 0 : existingJobId!.hashCode);

  @override
  String toString() => 'SyncResponse[schemaVersion=$schemaVersion, requestId=$requestId, scheduled=$scheduled, storeId=$storeId, idempotent=$idempotent, existingJobId=$existingJobId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.requestId != null) {
      json[r'request_id'] = this.requestId;
    } else {
      json[r'request_id'] = null;
    }
    if (this.scheduled != null) {
      json[r'scheduled'] = this.scheduled;
    } else {
      json[r'scheduled'] = null;
    }
    if (this.storeId != null) {
      json[r'store_id'] = this.storeId;
    } else {
      json[r'store_id'] = null;
    }
    if (this.idempotent != null) {
      json[r'idempotent'] = this.idempotent;
    } else {
      json[r'idempotent'] = null;
    }
    if (this.existingJobId != null) {
      json[r'existing_job_id'] = this.existingJobId;
    } else {
      json[r'existing_job_id'] = null;
    }
    return json;
  }

  /// Returns a new [SyncResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SyncResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SyncResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SyncResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SyncResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        scheduled: mapValueOfType<bool>(json, r'scheduled'),
        storeId: mapValueOfType<String>(json, r'store_id'),
        idempotent: mapValueOfType<bool>(json, r'idempotent'),
        existingJobId: mapValueOfType<String>(json, r'existing_job_id'),
      );
    }
    return null;
  }

  static List<SyncResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SyncResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SyncResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SyncResponse> mapFromJson(dynamic json) {
    final map = <String, SyncResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SyncResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SyncResponse-objects as value to a dart map
  static Map<String, List<SyncResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SyncResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SyncResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

