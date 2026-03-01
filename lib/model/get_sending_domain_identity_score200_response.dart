//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSendingDomainIdentityScore200Response {
  /// Returns a new [GetSendingDomainIdentityScore200Response] instance.
  GetSendingDomainIdentityScore200Response({
    this.identityScore,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScore? identityScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSendingDomainIdentityScore200Response &&
    other.identityScore == identityScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (identityScore == null ? 0 : identityScore!.hashCode);

  @override
  String toString() => 'GetSendingDomainIdentityScore200Response[identityScore=$identityScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.identityScore != null) {
      json[r'identity_score'] = this.identityScore;
    } else {
      json[r'identity_score'] = null;
    }
    return json;
  }

  /// Returns a new [GetSendingDomainIdentityScore200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSendingDomainIdentityScore200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSendingDomainIdentityScore200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSendingDomainIdentityScore200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSendingDomainIdentityScore200Response(
        identityScore: SendingDomainIdentityScore.fromJson(json[r'identity_score']),
      );
    }
    return null;
  }

  static List<GetSendingDomainIdentityScore200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSendingDomainIdentityScore200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSendingDomainIdentityScore200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSendingDomainIdentityScore200Response> mapFromJson(dynamic json) {
    final map = <String, GetSendingDomainIdentityScore200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSendingDomainIdentityScore200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSendingDomainIdentityScore200Response-objects as value to a dart map
  static Map<String, List<GetSendingDomainIdentityScore200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSendingDomainIdentityScore200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSendingDomainIdentityScore200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

