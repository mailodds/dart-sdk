//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class QueryContactList200ResponseEmailsInner {
  /// Returns a new [QueryContactList200ResponseEmailsInner] instance.
  QueryContactList200ResponseEmailsInner({
    this.email,
    this.status,
    this.domain,
    this.addedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? addedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryContactList200ResponseEmailsInner &&
    other.email == email &&
    other.status == status &&
    other.domain == domain &&
    other.addedAt == addedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (addedAt == null ? 0 : addedAt!.hashCode);

  @override
  String toString() => 'QueryContactList200ResponseEmailsInner[email=$email, status=$status, domain=$domain, addedAt=$addedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.addedAt != null) {
      json[r'added_at'] = this.addedAt!.toUtc().toIso8601String();
    } else {
      json[r'added_at'] = null;
    }
    return json;
  }

  /// Returns a new [QueryContactList200ResponseEmailsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryContactList200ResponseEmailsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryContactList200ResponseEmailsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryContactList200ResponseEmailsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryContactList200ResponseEmailsInner(
        email: mapValueOfType<String>(json, r'email'),
        status: mapValueOfType<String>(json, r'status'),
        domain: mapValueOfType<String>(json, r'domain'),
        addedAt: mapDateTime(json, r'added_at', r''),
      );
    }
    return null;
  }

  static List<QueryContactList200ResponseEmailsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryContactList200ResponseEmailsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryContactList200ResponseEmailsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryContactList200ResponseEmailsInner> mapFromJson(dynamic json) {
    final map = <String, QueryContactList200ResponseEmailsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryContactList200ResponseEmailsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryContactList200ResponseEmailsInner-objects as value to a dart map
  static Map<String, List<QueryContactList200ResponseEmailsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryContactList200ResponseEmailsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryContactList200ResponseEmailsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

