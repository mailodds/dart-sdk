//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchProductsResponse {
  /// Returns a new [BatchProductsResponse] instance.
  BatchProductsResponse({
    this.schemaVersion,
    this.requestId,
    this.created,
    this.updated,
    this.errored,
    this.errors = const [],
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

  /// Products created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// Products updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  /// Products that failed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errored;

  /// Error details (max 20)
  List<BatchProductsResponseErrorsInner> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchProductsResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.created == created &&
    other.updated == updated &&
    other.errored == errored &&
    _deepEquality.equals(other.errors, errors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (errored == null ? 0 : errored!.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'BatchProductsResponse[schemaVersion=$schemaVersion, requestId=$requestId, created=$created, updated=$updated, errored=$errored, errors=$errors]';

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
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.errored != null) {
      json[r'errored'] = this.errored;
    } else {
      json[r'errored'] = null;
    }
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [BatchProductsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchProductsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchProductsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchProductsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchProductsResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        created: mapValueOfType<int>(json, r'created'),
        updated: mapValueOfType<int>(json, r'updated'),
        errored: mapValueOfType<int>(json, r'errored'),
        errors: BatchProductsResponseErrorsInner.listFromJson(json[r'errors']),
      );
    }
    return null;
  }

  static List<BatchProductsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchProductsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchProductsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchProductsResponse> mapFromJson(dynamic json) {
    final map = <String, BatchProductsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchProductsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchProductsResponse-objects as value to a dart map
  static Map<String, List<BatchProductsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchProductsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchProductsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

