//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyListResponse {
  /// Returns a new [PolicyListResponse] instance.
  PolicyListResponse({
    this.schemaVersion,
    this.policies = const [],
    this.limits,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  List<Policy> policies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PolicyListResponseLimits? limits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyListResponse &&
    other.schemaVersion == schemaVersion &&
    _deepEquality.equals(other.policies, policies) &&
    other.limits == limits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (policies.hashCode) +
    (limits == null ? 0 : limits!.hashCode);

  @override
  String toString() => 'PolicyListResponse[schemaVersion=$schemaVersion, policies=$policies, limits=$limits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
      json[r'policies'] = this.policies;
    if (this.limits != null) {
      json[r'limits'] = this.limits;
    } else {
      json[r'limits'] = null;
    }
    return json;
  }

  /// Returns a new [PolicyListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyListResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        policies: Policy.listFromJson(json[r'policies']),
        limits: PolicyListResponseLimits.fromJson(json[r'limits']),
      );
    }
    return null;
  }

  static List<PolicyListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyListResponse> mapFromJson(dynamic json) {
    final map = <String, PolicyListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyListResponse-objects as value to a dart map
  static Map<String, List<PolicyListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

