//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class OAuthClientRegistration {
  /// Returns a new [OAuthClientRegistration] instance.
  OAuthClientRegistration({
    required this.clientId,
    required this.clientName,
    this.redirectUris = const [],
    this.grantTypes = const [],
    this.responseTypes = const [],
    required this.tokenEndpointAuthMethod,
    this.scope,
    required this.clientIdIssuedAt,
    this.clientSecret,
    this.clientSecretExpiresAt,
  });

  /// Issued client identifier
  String clientId;

  /// Human-readable client name
  String clientName;

  /// Registered redirect URIs
  List<String> redirectUris;

  /// Allowed grant types
  List<String> grantTypes;

  /// Allowed response types
  List<String> responseTypes;

  /// Token endpoint auth method
  String tokenEndpointAuthMethod;

  /// Allowed scope
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Unix timestamp of client registration
  int clientIdIssuedAt;

  /// Client secret (only for confidential clients, shown once)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// Secret expiry (0 = never)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clientSecretExpiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuthClientRegistration &&
    other.clientId == clientId &&
    other.clientName == clientName &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    _deepEquality.equals(other.grantTypes, grantTypes) &&
    _deepEquality.equals(other.responseTypes, responseTypes) &&
    other.tokenEndpointAuthMethod == tokenEndpointAuthMethod &&
    other.scope == scope &&
    other.clientIdIssuedAt == clientIdIssuedAt &&
    other.clientSecret == clientSecret &&
    other.clientSecretExpiresAt == clientSecretExpiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId.hashCode) +
    (clientName.hashCode) +
    (redirectUris.hashCode) +
    (grantTypes.hashCode) +
    (responseTypes.hashCode) +
    (tokenEndpointAuthMethod.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (clientIdIssuedAt.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (clientSecretExpiresAt == null ? 0 : clientSecretExpiresAt!.hashCode);

  @override
  String toString() => 'OAuthClientRegistration[clientId=$clientId, clientName=$clientName, redirectUris=$redirectUris, grantTypes=$grantTypes, responseTypes=$responseTypes, tokenEndpointAuthMethod=$tokenEndpointAuthMethod, scope=$scope, clientIdIssuedAt=$clientIdIssuedAt, clientSecret=$clientSecret, clientSecretExpiresAt=$clientSecretExpiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'client_id'] = this.clientId;
      json[r'client_name'] = this.clientName;
      json[r'redirect_uris'] = this.redirectUris;
      json[r'grant_types'] = this.grantTypes;
      json[r'response_types'] = this.responseTypes;
      json[r'token_endpoint_auth_method'] = this.tokenEndpointAuthMethod;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'client_id_issued_at'] = this.clientIdIssuedAt;
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
    if (this.clientSecretExpiresAt != null) {
      json[r'client_secret_expires_at'] = this.clientSecretExpiresAt;
    } else {
      json[r'client_secret_expires_at'] = null;
    }
    return json;
  }

  /// Returns a new [OAuthClientRegistration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuthClientRegistration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuthClientRegistration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuthClientRegistration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuthClientRegistration(
        clientId: mapValueOfType<String>(json, r'client_id')!,
        clientName: mapValueOfType<String>(json, r'client_name')!,
        redirectUris: json[r'redirect_uris'] is Iterable
            ? (json[r'redirect_uris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grantTypes: json[r'grant_types'] is Iterable
            ? (json[r'grant_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        responseTypes: json[r'response_types'] is Iterable
            ? (json[r'response_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokenEndpointAuthMethod: mapValueOfType<String>(json, r'token_endpoint_auth_method')!,
        scope: mapValueOfType<String>(json, r'scope'),
        clientIdIssuedAt: mapValueOfType<int>(json, r'client_id_issued_at')!,
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
        clientSecretExpiresAt: mapValueOfType<int>(json, r'client_secret_expires_at'),
      );
    }
    return null;
  }

  static List<OAuthClientRegistration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuthClientRegistration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuthClientRegistration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuthClientRegistration> mapFromJson(dynamic json) {
    final map = <String, OAuthClientRegistration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuthClientRegistration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuthClientRegistration-objects as value to a dart map
  static Map<String, List<OAuthClientRegistration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuthClientRegistration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OAuthClientRegistration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'client_id',
    'client_name',
    'redirect_uris',
    'grant_types',
    'response_types',
    'token_endpoint_auth_method',
    'client_id_issued_at',
  };
}

