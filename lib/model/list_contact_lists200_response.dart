//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListContactLists200Response {
  /// Returns a new [ListContactLists200Response] instance.
  ListContactLists200Response({
    this.schemaVersion,
    this.requestId,
    this.contactLists = const [],
    this.total,
    this.page,
    this.perPage,
    this.pages,
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

  List<ContactList> contactLists;

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
  int? page;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? perPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListContactLists200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    _deepEquality.equals(other.contactLists, contactLists) &&
    other.total == total &&
    other.page == page &&
    other.perPage == perPage &&
    other.pages == pages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (contactLists.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (perPage == null ? 0 : perPage!.hashCode) +
    (pages == null ? 0 : pages!.hashCode);

  @override
  String toString() => 'ListContactLists200Response[schemaVersion=$schemaVersion, requestId=$requestId, contactLists=$contactLists, total=$total, page=$page, perPage=$perPage, pages=$pages]';

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
      json[r'contact_lists'] = this.contactLists;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.perPage != null) {
      json[r'per_page'] = this.perPage;
    } else {
      json[r'per_page'] = null;
    }
    if (this.pages != null) {
      json[r'pages'] = this.pages;
    } else {
      json[r'pages'] = null;
    }
    return json;
  }

  /// Returns a new [ListContactLists200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListContactLists200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListContactLists200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListContactLists200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListContactLists200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        contactLists: ContactList.listFromJson(json[r'contact_lists']),
        total: mapValueOfType<int>(json, r'total'),
        page: mapValueOfType<int>(json, r'page'),
        perPage: mapValueOfType<int>(json, r'per_page'),
        pages: mapValueOfType<int>(json, r'pages'),
      );
    }
    return null;
  }

  static List<ListContactLists200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListContactLists200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListContactLists200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListContactLists200Response> mapFromJson(dynamic json) {
    final map = <String, ListContactLists200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListContactLists200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListContactLists200Response-objects as value to a dart map
  static Map<String, List<ListContactLists200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListContactLists200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListContactLists200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

