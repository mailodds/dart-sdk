//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateRequest {
  /// Returns a new [ValidateRequest] instance.
  ValidateRequest({
    required this.email,
    this.policyId,
  });

  /// Email address to validate
  String email;

  /// Optional policy ID to use instead of default policy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policyId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateRequest &&
    other.email == email &&
    other.policyId == policyId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (policyId == null ? 0 : policyId!.hashCode);

  @override
  String toString() => 'ValidateRequest[email=$email, policyId=$policyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
    if (this.policyId != null) {
      json[r'policy_id'] = this.policyId;
    } else {
      json[r'policy_id'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateRequest(
        email: mapValueOfType<String>(json, r'email')!,
        policyId: mapValueOfType<int>(json, r'policy_id'),
      );
    }
    return null;
  }

  static List<ValidateRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateRequest> mapFromJson(dynamic json) {
    final map = <String, ValidateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateRequest-objects as value to a dart map
  static Map<String, List<ValidateRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
  };
}

