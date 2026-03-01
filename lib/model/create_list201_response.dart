//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateList201Response {
  /// Returns a new [CreateList201Response] instance.
  CreateList201Response({
    this.list,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SubscriberList? list;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateList201Response &&
    other.list == list;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (list == null ? 0 : list!.hashCode);

  @override
  String toString() => 'CreateList201Response[list=$list]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.list != null) {
      json[r'list'] = this.list;
    } else {
      json[r'list'] = null;
    }
    return json;
  }

  /// Returns a new [CreateList201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateList201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateList201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateList201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateList201Response(
        list: SubscriberList.fromJson(json[r'list']),
      );
    }
    return null;
  }

  static List<CreateList201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateList201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateList201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateList201Response> mapFromJson(dynamic json) {
    final map = <String, CreateList201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateList201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateList201Response-objects as value to a dart map
  static Map<String, List<CreateList201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateList201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateList201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

