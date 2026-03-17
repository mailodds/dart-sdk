//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddContact201Response {
  /// Returns a new [AddContact201Response] instance.
  AddContact201Response({
    this.schemaVersion,
    this.requestId,
    this.contact,
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
  Object? contact;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddContact201Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.contact == contact;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (contact == null ? 0 : contact!.hashCode);

  @override
  String toString() => 'AddContact201Response[schemaVersion=$schemaVersion, requestId=$requestId, contact=$contact]';

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
    if (this.contact != null) {
      json[r'contact'] = this.contact;
    } else {
      json[r'contact'] = null;
    }
    return json;
  }

  /// Returns a new [AddContact201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddContact201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddContact201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddContact201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddContact201Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        contact: mapValueOfType<Object>(json, r'contact'),
      );
    }
    return null;
  }

  static List<AddContact201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddContact201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddContact201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddContact201Response> mapFromJson(dynamic json) {
    final map = <String, AddContact201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddContact201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddContact201Response-objects as value to a dart map
  static Map<String, List<AddContact201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddContact201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddContact201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

