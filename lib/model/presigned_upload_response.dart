//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PresignedUploadResponse {
  /// Returns a new [PresignedUploadResponse] instance.
  PresignedUploadResponse({
    this.schemaVersion,
    this.requestId,
    this.upload,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Unique request identifier
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
  PresignedUploadResponseUpload? upload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PresignedUploadResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.upload == upload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (upload == null ? 0 : upload!.hashCode);

  @override
  String toString() => 'PresignedUploadResponse[schemaVersion=$schemaVersion, requestId=$requestId, upload=$upload]';

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
    if (this.upload != null) {
      json[r'upload'] = this.upload;
    } else {
      json[r'upload'] = null;
    }
    return json;
  }

  /// Returns a new [PresignedUploadResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PresignedUploadResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PresignedUploadResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PresignedUploadResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PresignedUploadResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        upload: PresignedUploadResponseUpload.fromJson(json[r'upload']),
      );
    }
    return null;
  }

  static List<PresignedUploadResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PresignedUploadResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PresignedUploadResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PresignedUploadResponse> mapFromJson(dynamic json) {
    final map = <String, PresignedUploadResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PresignedUploadResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PresignedUploadResponse-objects as value to a dart map
  static Map<String, List<PresignedUploadResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PresignedUploadResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PresignedUploadResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

