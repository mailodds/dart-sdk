//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetInactiveContactsReport200ResponseByListInner {
  /// Returns a new [GetInactiveContactsReport200ResponseByListInner] instance.
  GetInactiveContactsReport200ResponseByListInner({
    this.listId,
    this.listName,
    this.inactiveCount,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inactiveCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetInactiveContactsReport200ResponseByListInner &&
    other.listId == listId &&
    other.listName == listName &&
    other.inactiveCount == inactiveCount &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (listId == null ? 0 : listId!.hashCode) +
    (listName == null ? 0 : listName!.hashCode) +
    (inactiveCount == null ? 0 : inactiveCount!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'GetInactiveContactsReport200ResponseByListInner[listId=$listId, listName=$listName, inactiveCount=$inactiveCount, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.listId != null) {
      json[r'list_id'] = this.listId;
    } else {
      json[r'list_id'] = null;
    }
    if (this.listName != null) {
      json[r'list_name'] = this.listName;
    } else {
      json[r'list_name'] = null;
    }
    if (this.inactiveCount != null) {
      json[r'inactive_count'] = this.inactiveCount;
    } else {
      json[r'inactive_count'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [GetInactiveContactsReport200ResponseByListInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetInactiveContactsReport200ResponseByListInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetInactiveContactsReport200ResponseByListInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetInactiveContactsReport200ResponseByListInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetInactiveContactsReport200ResponseByListInner(
        listId: mapValueOfType<String>(json, r'list_id'),
        listName: mapValueOfType<String>(json, r'list_name'),
        inactiveCount: mapValueOfType<int>(json, r'inactive_count'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<GetInactiveContactsReport200ResponseByListInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetInactiveContactsReport200ResponseByListInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetInactiveContactsReport200ResponseByListInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetInactiveContactsReport200ResponseByListInner> mapFromJson(dynamic json) {
    final map = <String, GetInactiveContactsReport200ResponseByListInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetInactiveContactsReport200ResponseByListInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetInactiveContactsReport200ResponseByListInner-objects as value to a dart map
  static Map<String, List<GetInactiveContactsReport200ResponseByListInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetInactiveContactsReport200ResponseByListInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetInactiveContactsReport200ResponseByListInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

