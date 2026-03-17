//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CrossReferenceBounces200Response {
  /// Returns a new [CrossReferenceBounces200Response] instance.
  CrossReferenceBounces200Response({
    this.schemaVersion,
    this.requestId,
    this.crossReference,
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
  CrossReferenceBounces200ResponseCrossReference? crossReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CrossReferenceBounces200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.crossReference == crossReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (crossReference == null ? 0 : crossReference!.hashCode);

  @override
  String toString() => 'CrossReferenceBounces200Response[schemaVersion=$schemaVersion, requestId=$requestId, crossReference=$crossReference]';

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
    if (this.crossReference != null) {
      json[r'cross_reference'] = this.crossReference;
    } else {
      json[r'cross_reference'] = null;
    }
    return json;
  }

  /// Returns a new [CrossReferenceBounces200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CrossReferenceBounces200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CrossReferenceBounces200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CrossReferenceBounces200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CrossReferenceBounces200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        crossReference: CrossReferenceBounces200ResponseCrossReference.fromJson(json[r'cross_reference']),
      );
    }
    return null;
  }

  static List<CrossReferenceBounces200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CrossReferenceBounces200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CrossReferenceBounces200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CrossReferenceBounces200Response> mapFromJson(dynamic json) {
    final map = <String, CrossReferenceBounces200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CrossReferenceBounces200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CrossReferenceBounces200Response-objects as value to a dart map
  static Map<String, List<CrossReferenceBounces200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CrossReferenceBounces200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CrossReferenceBounces200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

