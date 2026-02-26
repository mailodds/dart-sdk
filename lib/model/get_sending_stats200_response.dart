//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSendingStats200Response {
  /// Returns a new [GetSendingStats200Response] instance.
  GetSendingStats200Response({
    this.stats,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSendingStats200ResponseStats? stats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSendingStats200Response &&
    other.stats == stats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stats == null ? 0 : stats!.hashCode);

  @override
  String toString() => 'GetSendingStats200Response[stats=$stats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.stats != null) {
      json[r'stats'] = this.stats;
    } else {
      json[r'stats'] = null;
    }
    return json;
  }

  /// Returns a new [GetSendingStats200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSendingStats200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSendingStats200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSendingStats200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSendingStats200Response(
        stats: GetSendingStats200ResponseStats.fromJson(json[r'stats']),
      );
    }
    return null;
  }

  static List<GetSendingStats200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSendingStats200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSendingStats200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSendingStats200Response> mapFromJson(dynamic json) {
    final map = <String, GetSendingStats200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSendingStats200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSendingStats200Response-objects as value to a dart map
  static Map<String, List<GetSendingStats200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSendingStats200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSendingStats200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

