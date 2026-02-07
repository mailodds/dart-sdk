//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeletePolicy200Response {
  /// Returns a new [DeletePolicy200Response] instance.
  DeletePolicy200Response({
    this.deleted,
    this.policyId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policyId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeletePolicy200Response &&
    other.deleted == deleted &&
    other.policyId == policyId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deleted == null ? 0 : deleted!.hashCode) +
    (policyId == null ? 0 : policyId!.hashCode);

  @override
  String toString() => 'DeletePolicy200Response[deleted=$deleted, policyId=$policyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.policyId != null) {
      json[r'policy_id'] = this.policyId;
    } else {
      json[r'policy_id'] = null;
    }
    return json;
  }

  /// Returns a new [DeletePolicy200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeletePolicy200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeletePolicy200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeletePolicy200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeletePolicy200Response(
        deleted: mapValueOfType<bool>(json, r'deleted'),
        policyId: mapValueOfType<int>(json, r'policy_id'),
      );
    }
    return null;
  }

  static List<DeletePolicy200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeletePolicy200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeletePolicy200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeletePolicy200Response> mapFromJson(dynamic json) {
    final map = <String, DeletePolicy200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeletePolicy200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeletePolicy200Response-objects as value to a dart map
  static Map<String, List<DeletePolicy200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeletePolicy200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeletePolicy200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

