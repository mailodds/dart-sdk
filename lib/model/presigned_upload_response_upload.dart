//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PresignedUploadResponseUpload {
  /// Returns a new [PresignedUploadResponseUpload] instance.
  PresignedUploadResponseUpload({
    this.url,
    this.fields,
    this.s3Key,
    this.expiresIn,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? s3Key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PresignedUploadResponseUpload &&
    other.url == url &&
    other.fields == fields &&
    other.s3Key == s3Key &&
    other.expiresIn == expiresIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (fields == null ? 0 : fields!.hashCode) +
    (s3Key == null ? 0 : s3Key!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode);

  @override
  String toString() => 'PresignedUploadResponseUpload[url=$url, fields=$fields, s3Key=$s3Key, expiresIn=$expiresIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.fields != null) {
      json[r'fields'] = this.fields;
    } else {
      json[r'fields'] = null;
    }
    if (this.s3Key != null) {
      json[r's3_key'] = this.s3Key;
    } else {
      json[r's3_key'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expires_in'] = this.expiresIn;
    } else {
      json[r'expires_in'] = null;
    }
    return json;
  }

  /// Returns a new [PresignedUploadResponseUpload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PresignedUploadResponseUpload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PresignedUploadResponseUpload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PresignedUploadResponseUpload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PresignedUploadResponseUpload(
        url: mapValueOfType<String>(json, r'url'),
        fields: mapValueOfType<Object>(json, r'fields'),
        s3Key: mapValueOfType<String>(json, r's3_key'),
        expiresIn: mapValueOfType<int>(json, r'expires_in'),
      );
    }
    return null;
  }

  static List<PresignedUploadResponseUpload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PresignedUploadResponseUpload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PresignedUploadResponseUpload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PresignedUploadResponseUpload> mapFromJson(dynamic json) {
    final map = <String, PresignedUploadResponseUpload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PresignedUploadResponseUpload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PresignedUploadResponseUpload-objects as value to a dart map
  static Map<String, List<PresignedUploadResponseUpload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PresignedUploadResponseUpload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PresignedUploadResponseUpload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

