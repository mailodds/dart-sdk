//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class OAuthServerMetadata {
  /// Returns a new [OAuthServerMetadata] instance.
  OAuthServerMetadata({
    this.issuer,
    this.authorizationEndpoint,
    this.tokenEndpoint,
    this.revocationEndpoint,
    this.introspectionEndpoint,
    this.jwksUri,
    this.responseTypesSupported = const [],
    this.grantTypesSupported = const [],
    this.tokenEndpointAuthMethodsSupported = const [],
    this.scopesSupported = const [],
    this.codeChallengeMethodsSupported = const [],
    this.revocationEndpointAuthMethodsSupported = const [],
    this.introspectionEndpointAuthMethodsSupported = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizationEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revocationEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? introspectionEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jwksUri;

  List<String> responseTypesSupported;

  List<String> grantTypesSupported;

  List<String> tokenEndpointAuthMethodsSupported;

  List<String> scopesSupported;

  List<String> codeChallengeMethodsSupported;

  List<String> revocationEndpointAuthMethodsSupported;

  List<String> introspectionEndpointAuthMethodsSupported;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuthServerMetadata &&
    other.issuer == issuer &&
    other.authorizationEndpoint == authorizationEndpoint &&
    other.tokenEndpoint == tokenEndpoint &&
    other.revocationEndpoint == revocationEndpoint &&
    other.introspectionEndpoint == introspectionEndpoint &&
    other.jwksUri == jwksUri &&
    _deepEquality.equals(other.responseTypesSupported, responseTypesSupported) &&
    _deepEquality.equals(other.grantTypesSupported, grantTypesSupported) &&
    _deepEquality.equals(other.tokenEndpointAuthMethodsSupported, tokenEndpointAuthMethodsSupported) &&
    _deepEquality.equals(other.scopesSupported, scopesSupported) &&
    _deepEquality.equals(other.codeChallengeMethodsSupported, codeChallengeMethodsSupported) &&
    _deepEquality.equals(other.revocationEndpointAuthMethodsSupported, revocationEndpointAuthMethodsSupported) &&
    _deepEquality.equals(other.introspectionEndpointAuthMethodsSupported, introspectionEndpointAuthMethodsSupported);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (issuer == null ? 0 : issuer!.hashCode) +
    (authorizationEndpoint == null ? 0 : authorizationEndpoint!.hashCode) +
    (tokenEndpoint == null ? 0 : tokenEndpoint!.hashCode) +
    (revocationEndpoint == null ? 0 : revocationEndpoint!.hashCode) +
    (introspectionEndpoint == null ? 0 : introspectionEndpoint!.hashCode) +
    (jwksUri == null ? 0 : jwksUri!.hashCode) +
    (responseTypesSupported.hashCode) +
    (grantTypesSupported.hashCode) +
    (tokenEndpointAuthMethodsSupported.hashCode) +
    (scopesSupported.hashCode) +
    (codeChallengeMethodsSupported.hashCode) +
    (revocationEndpointAuthMethodsSupported.hashCode) +
    (introspectionEndpointAuthMethodsSupported.hashCode);

  @override
  String toString() => 'OAuthServerMetadata[issuer=$issuer, authorizationEndpoint=$authorizationEndpoint, tokenEndpoint=$tokenEndpoint, revocationEndpoint=$revocationEndpoint, introspectionEndpoint=$introspectionEndpoint, jwksUri=$jwksUri, responseTypesSupported=$responseTypesSupported, grantTypesSupported=$grantTypesSupported, tokenEndpointAuthMethodsSupported=$tokenEndpointAuthMethodsSupported, scopesSupported=$scopesSupported, codeChallengeMethodsSupported=$codeChallengeMethodsSupported, revocationEndpointAuthMethodsSupported=$revocationEndpointAuthMethodsSupported, introspectionEndpointAuthMethodsSupported=$introspectionEndpointAuthMethodsSupported]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.authorizationEndpoint != null) {
      json[r'authorization_endpoint'] = this.authorizationEndpoint;
    } else {
      json[r'authorization_endpoint'] = null;
    }
    if (this.tokenEndpoint != null) {
      json[r'token_endpoint'] = this.tokenEndpoint;
    } else {
      json[r'token_endpoint'] = null;
    }
    if (this.revocationEndpoint != null) {
      json[r'revocation_endpoint'] = this.revocationEndpoint;
    } else {
      json[r'revocation_endpoint'] = null;
    }
    if (this.introspectionEndpoint != null) {
      json[r'introspection_endpoint'] = this.introspectionEndpoint;
    } else {
      json[r'introspection_endpoint'] = null;
    }
    if (this.jwksUri != null) {
      json[r'jwks_uri'] = this.jwksUri;
    } else {
      json[r'jwks_uri'] = null;
    }
      json[r'response_types_supported'] = this.responseTypesSupported;
      json[r'grant_types_supported'] = this.grantTypesSupported;
      json[r'token_endpoint_auth_methods_supported'] = this.tokenEndpointAuthMethodsSupported;
      json[r'scopes_supported'] = this.scopesSupported;
      json[r'code_challenge_methods_supported'] = this.codeChallengeMethodsSupported;
      json[r'revocation_endpoint_auth_methods_supported'] = this.revocationEndpointAuthMethodsSupported;
      json[r'introspection_endpoint_auth_methods_supported'] = this.introspectionEndpointAuthMethodsSupported;
    return json;
  }

  /// Returns a new [OAuthServerMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuthServerMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuthServerMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuthServerMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuthServerMetadata(
        issuer: mapValueOfType<String>(json, r'issuer'),
        authorizationEndpoint: mapValueOfType<String>(json, r'authorization_endpoint'),
        tokenEndpoint: mapValueOfType<String>(json, r'token_endpoint'),
        revocationEndpoint: mapValueOfType<String>(json, r'revocation_endpoint'),
        introspectionEndpoint: mapValueOfType<String>(json, r'introspection_endpoint'),
        jwksUri: mapValueOfType<String>(json, r'jwks_uri'),
        responseTypesSupported: json[r'response_types_supported'] is Iterable
            ? (json[r'response_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grantTypesSupported: json[r'grant_types_supported'] is Iterable
            ? (json[r'grant_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokenEndpointAuthMethodsSupported: json[r'token_endpoint_auth_methods_supported'] is Iterable
            ? (json[r'token_endpoint_auth_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scopesSupported: json[r'scopes_supported'] is Iterable
            ? (json[r'scopes_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        codeChallengeMethodsSupported: json[r'code_challenge_methods_supported'] is Iterable
            ? (json[r'code_challenge_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        revocationEndpointAuthMethodsSupported: json[r'revocation_endpoint_auth_methods_supported'] is Iterable
            ? (json[r'revocation_endpoint_auth_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        introspectionEndpointAuthMethodsSupported: json[r'introspection_endpoint_auth_methods_supported'] is Iterable
            ? (json[r'introspection_endpoint_auth_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OAuthServerMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuthServerMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuthServerMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuthServerMetadata> mapFromJson(dynamic json) {
    final map = <String, OAuthServerMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuthServerMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuthServerMetadata-objects as value to a dart map
  static Map<String, List<OAuthServerMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuthServerMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OAuthServerMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

