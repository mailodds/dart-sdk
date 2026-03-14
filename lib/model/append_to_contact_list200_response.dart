//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppendToContactList200Response {
  /// Returns a new [AppendToContactList200Response] instance.
  AppendToContactList200Response({
    this.schemaVersion,
    this.requestId,
    this.contactList,
    this.addedCount,
    this.candidateCount,
    this.duplicateCount,
    this.breakdown,
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
  ContactList? contactList;

  /// Number of new emails added
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? addedCount;

  /// Total candidates from jobs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? candidateCount;

  /// Duplicates skipped
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duplicateCount;

  /// Per-status breakdown of candidates
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? breakdown;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppendToContactList200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.contactList == contactList &&
    other.addedCount == addedCount &&
    other.candidateCount == candidateCount &&
    other.duplicateCount == duplicateCount &&
    other.breakdown == breakdown;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (contactList == null ? 0 : contactList!.hashCode) +
    (addedCount == null ? 0 : addedCount!.hashCode) +
    (candidateCount == null ? 0 : candidateCount!.hashCode) +
    (duplicateCount == null ? 0 : duplicateCount!.hashCode) +
    (breakdown == null ? 0 : breakdown!.hashCode);

  @override
  String toString() => 'AppendToContactList200Response[schemaVersion=$schemaVersion, requestId=$requestId, contactList=$contactList, addedCount=$addedCount, candidateCount=$candidateCount, duplicateCount=$duplicateCount, breakdown=$breakdown]';

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
    if (this.contactList != null) {
      json[r'contact_list'] = this.contactList;
    } else {
      json[r'contact_list'] = null;
    }
    if (this.addedCount != null) {
      json[r'added_count'] = this.addedCount;
    } else {
      json[r'added_count'] = null;
    }
    if (this.candidateCount != null) {
      json[r'candidate_count'] = this.candidateCount;
    } else {
      json[r'candidate_count'] = null;
    }
    if (this.duplicateCount != null) {
      json[r'duplicate_count'] = this.duplicateCount;
    } else {
      json[r'duplicate_count'] = null;
    }
    if (this.breakdown != null) {
      json[r'breakdown'] = this.breakdown;
    } else {
      json[r'breakdown'] = null;
    }
    return json;
  }

  /// Returns a new [AppendToContactList200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppendToContactList200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AppendToContactList200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AppendToContactList200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AppendToContactList200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        contactList: ContactList.fromJson(json[r'contact_list']),
        addedCount: mapValueOfType<int>(json, r'added_count'),
        candidateCount: mapValueOfType<int>(json, r'candidate_count'),
        duplicateCount: mapValueOfType<int>(json, r'duplicate_count'),
        breakdown: mapValueOfType<Object>(json, r'breakdown'),
      );
    }
    return null;
  }

  static List<AppendToContactList200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppendToContactList200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppendToContactList200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppendToContactList200Response> mapFromJson(dynamic json) {
    final map = <String, AppendToContactList200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppendToContactList200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppendToContactList200Response-objects as value to a dart map
  static Map<String, List<AppendToContactList200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppendToContactList200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppendToContactList200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

