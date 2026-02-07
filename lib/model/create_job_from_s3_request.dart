//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateJobFromS3Request {
  /// Returns a new [CreateJobFromS3Request] instance.
  CreateJobFromS3Request({
    required this.s3Key,
    this.dedup = false,
  });

  /// S3 key from presigned upload
  String s3Key;

  bool dedup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateJobFromS3Request &&
    other.s3Key == s3Key &&
    other.dedup == dedup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (s3Key.hashCode) +
    (dedup.hashCode);

  @override
  String toString() => 'CreateJobFromS3Request[s3Key=$s3Key, dedup=$dedup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r's3_key'] = this.s3Key;
      json[r'dedup'] = this.dedup;
    return json;
  }

  /// Returns a new [CreateJobFromS3Request] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateJobFromS3Request? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateJobFromS3Request[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateJobFromS3Request[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateJobFromS3Request(
        s3Key: mapValueOfType<String>(json, r's3_key')!,
        dedup: mapValueOfType<bool>(json, r'dedup') ?? false,
      );
    }
    return null;
  }

  static List<CreateJobFromS3Request> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateJobFromS3Request>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateJobFromS3Request.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateJobFromS3Request> mapFromJson(dynamic json) {
    final map = <String, CreateJobFromS3Request>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateJobFromS3Request.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateJobFromS3Request-objects as value to a dart map
  static Map<String, List<CreateJobFromS3Request>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateJobFromS3Request>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateJobFromS3Request.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    's3_key',
  };
}

