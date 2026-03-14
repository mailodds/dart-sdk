//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryContactListRequest {
  /// Returns a new [QueryContactListRequest] instance.
  QueryContactListRequest({
    this.filters = const [],
    this.page = 1,
    this.perPage = 100,
  });

  /// Array of filter conditions
  List<QueryContactListRequestFiltersInner> filters;

  int page;

  /// Maximum value: 500
  int perPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryContactListRequest &&
    _deepEquality.equals(other.filters, filters) &&
    other.page == page &&
    other.perPage == perPage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filters.hashCode) +
    (page.hashCode) +
    (perPage.hashCode);

  @override
  String toString() => 'QueryContactListRequest[filters=$filters, page=$page, perPage=$perPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filters'] = this.filters;
      json[r'page'] = this.page;
      json[r'per_page'] = this.perPage;
    return json;
  }

  /// Returns a new [QueryContactListRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryContactListRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryContactListRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryContactListRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryContactListRequest(
        filters: QueryContactListRequestFiltersInner.listFromJson(json[r'filters']),
        page: mapValueOfType<int>(json, r'page') ?? 1,
        perPage: mapValueOfType<int>(json, r'per_page') ?? 100,
      );
    }
    return null;
  }

  static List<QueryContactListRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryContactListRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryContactListRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryContactListRequest> mapFromJson(dynamic json) {
    final map = <String, QueryContactListRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryContactListRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryContactListRequest-objects as value to a dart map
  static Map<String, List<QueryContactListRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryContactListRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryContactListRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

