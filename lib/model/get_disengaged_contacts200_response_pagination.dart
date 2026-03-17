//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetDisengagedContacts200ResponsePagination {
  /// Returns a new [GetDisengagedContacts200ResponsePagination] instance.
  GetDisengagedContacts200ResponsePagination({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.hasNext,
  });

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
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasNext;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDisengagedContacts200ResponsePagination &&
    other.page == page &&
    other.perPage == perPage &&
    other.total == total &&
    other.totalPages == totalPages &&
    other.hasNext == hasNext;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (page == null ? 0 : page!.hashCode) +
    (perPage == null ? 0 : perPage!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (totalPages == null ? 0 : totalPages!.hashCode) +
    (hasNext == null ? 0 : hasNext!.hashCode);

  @override
  String toString() => 'GetDisengagedContacts200ResponsePagination[page=$page, perPage=$perPage, total=$total, totalPages=$totalPages, hasNext=$hasNext]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.totalPages != null) {
      json[r'total_pages'] = this.totalPages;
    } else {
      json[r'total_pages'] = null;
    }
    if (this.hasNext != null) {
      json[r'has_next'] = this.hasNext;
    } else {
      json[r'has_next'] = null;
    }
    return json;
  }

  /// Returns a new [GetDisengagedContacts200ResponsePagination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDisengagedContacts200ResponsePagination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDisengagedContacts200ResponsePagination[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDisengagedContacts200ResponsePagination[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDisengagedContacts200ResponsePagination(
        page: mapValueOfType<int>(json, r'page'),
        perPage: mapValueOfType<int>(json, r'per_page'),
        total: mapValueOfType<int>(json, r'total'),
        totalPages: mapValueOfType<int>(json, r'total_pages'),
        hasNext: mapValueOfType<bool>(json, r'has_next'),
      );
    }
    return null;
  }

  static List<GetDisengagedContacts200ResponsePagination> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDisengagedContacts200ResponsePagination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDisengagedContacts200ResponsePagination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDisengagedContacts200ResponsePagination> mapFromJson(dynamic json) {
    final map = <String, GetDisengagedContacts200ResponsePagination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDisengagedContacts200ResponsePagination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDisengagedContacts200ResponsePagination-objects as value to a dart map
  static Map<String, List<GetDisengagedContacts200ResponsePagination>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDisengagedContacts200ResponsePagination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDisengagedContacts200ResponsePagination.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

