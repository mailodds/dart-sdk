//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IntrospectToken200Response {
  /// Returns a new [IntrospectToken200Response] instance.
  IntrospectToken200Response({
    required this.active,
    this.scope,
    this.clientId,
    this.username,
    this.tokenType,
    this.exp,
    this.iat,
    this.accountId,
  });

  bool active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? iat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IntrospectToken200Response &&
    other.active == active &&
    other.scope == scope &&
    other.clientId == clientId &&
    other.username == username &&
    other.tokenType == tokenType &&
    other.exp == exp &&
    other.iat == iat &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode) +
    (exp == null ? 0 : exp!.hashCode) +
    (iat == null ? 0 : iat!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'IntrospectToken200Response[active=$active, scope=$scope, clientId=$clientId, username=$username, tokenType=$tokenType, exp=$exp, iat=$iat, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'active'] = this.active;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.tokenType != null) {
      json[r'token_type'] = this.tokenType;
    } else {
      json[r'token_type'] = null;
    }
    if (this.exp != null) {
      json[r'exp'] = this.exp;
    } else {
      json[r'exp'] = null;
    }
    if (this.iat != null) {
      json[r'iat'] = this.iat;
    } else {
      json[r'iat'] = null;
    }
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    return json;
  }

  /// Returns a new [IntrospectToken200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IntrospectToken200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IntrospectToken200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IntrospectToken200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IntrospectToken200Response(
        active: mapValueOfType<bool>(json, r'active')!,
        scope: mapValueOfType<String>(json, r'scope'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        username: mapValueOfType<String>(json, r'username'),
        tokenType: mapValueOfType<String>(json, r'token_type'),
        exp: mapValueOfType<int>(json, r'exp'),
        iat: mapValueOfType<int>(json, r'iat'),
        accountId: mapValueOfType<int>(json, r'account_id'),
      );
    }
    return null;
  }

  static List<IntrospectToken200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IntrospectToken200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IntrospectToken200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IntrospectToken200Response> mapFromJson(dynamic json) {
    final map = <String, IntrospectToken200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IntrospectToken200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IntrospectToken200Response-objects as value to a dart map
  static Map<String, List<IntrospectToken200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IntrospectToken200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IntrospectToken200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'active',
  };
}

