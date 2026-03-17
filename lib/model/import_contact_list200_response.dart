//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ImportContactList200Response {
  /// Returns a new [ImportContactList200Response] instance.
  ImportContactList200Response({
    this.schemaVersion,
    this.requestId,
    this.imported,
    this.skipped,
    this.duplicates,
    this.errors,
    this.total,
    this.contactList,
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
  int? imported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skipped;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duplicates;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? contactList;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportContactList200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.imported == imported &&
    other.skipped == skipped &&
    other.duplicates == duplicates &&
    other.errors == errors &&
    other.total == total &&
    other.contactList == contactList;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (imported == null ? 0 : imported!.hashCode) +
    (skipped == null ? 0 : skipped!.hashCode) +
    (duplicates == null ? 0 : duplicates!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (contactList == null ? 0 : contactList!.hashCode);

  @override
  String toString() => 'ImportContactList200Response[schemaVersion=$schemaVersion, requestId=$requestId, imported=$imported, skipped=$skipped, duplicates=$duplicates, errors=$errors, total=$total, contactList=$contactList]';

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
    if (this.imported != null) {
      json[r'imported'] = this.imported;
    } else {
      json[r'imported'] = null;
    }
    if (this.skipped != null) {
      json[r'skipped'] = this.skipped;
    } else {
      json[r'skipped'] = null;
    }
    if (this.duplicates != null) {
      json[r'duplicates'] = this.duplicates;
    } else {
      json[r'duplicates'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.contactList != null) {
      json[r'contact_list'] = this.contactList;
    } else {
      json[r'contact_list'] = null;
    }
    return json;
  }

  /// Returns a new [ImportContactList200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportContactList200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportContactList200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportContactList200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportContactList200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        imported: mapValueOfType<int>(json, r'imported'),
        skipped: mapValueOfType<int>(json, r'skipped'),
        duplicates: mapValueOfType<int>(json, r'duplicates'),
        errors: mapValueOfType<int>(json, r'errors'),
        total: mapValueOfType<int>(json, r'total'),
        contactList: mapValueOfType<Object>(json, r'contact_list'),
      );
    }
    return null;
  }

  static List<ImportContactList200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportContactList200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportContactList200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportContactList200Response> mapFromJson(dynamic json) {
    final map = <String, ImportContactList200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportContactList200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportContactList200Response-objects as value to a dart map
  static Map<String, List<ImportContactList200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportContactList200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportContactList200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

