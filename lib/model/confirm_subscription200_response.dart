//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConfirmSubscription200Response {
  /// Returns a new [ConfirmSubscription200Response] instance.
  ConfirmSubscription200Response({
    this.confirmed,
    this.email,
    this.listId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? confirmed;

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
  String? listId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfirmSubscription200Response &&
    other.confirmed == confirmed &&
    other.email == email &&
    other.listId == listId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (confirmed == null ? 0 : confirmed!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (listId == null ? 0 : listId!.hashCode);

  @override
  String toString() => 'ConfirmSubscription200Response[confirmed=$confirmed, email=$email, listId=$listId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.confirmed != null) {
      json[r'confirmed'] = this.confirmed;
    } else {
      json[r'confirmed'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.listId != null) {
      json[r'list_id'] = this.listId;
    } else {
      json[r'list_id'] = null;
    }
    return json;
  }

  /// Returns a new [ConfirmSubscription200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfirmSubscription200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConfirmSubscription200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConfirmSubscription200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfirmSubscription200Response(
        confirmed: mapValueOfType<bool>(json, r'confirmed'),
        email: mapValueOfType<String>(json, r'email'),
        listId: mapValueOfType<String>(json, r'list_id'),
      );
    }
    return null;
  }

  static List<ConfirmSubscription200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfirmSubscription200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfirmSubscription200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfirmSubscription200Response> mapFromJson(dynamic json) {
    final map = <String, ConfirmSubscription200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfirmSubscription200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfirmSubscription200Response-objects as value to a dart map
  static Map<String, List<ConfirmSubscription200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConfirmSubscription200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConfirmSubscription200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

