//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OAuth20Api {
  OAuth20Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create token
  ///
  /// Exchange an authorization code, client credentials, or refresh token for access and refresh tokens. Authenticate via client_secret_post or client_secret_basic.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] code:
  ///   Authorization code (for authorization_code grant)
  ///
  /// * [String] redirectUri:
  ///   Must match the original redirect_uri
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  ///
  /// * [String] refreshToken:
  ///   Refresh token (for refresh_token grant)
  ///
  /// * [String] scope:
  ///   Space-separated scopes
  ///
  /// * [String] codeVerifier:
  ///   PKCE code verifier
  Future<Response> createTokenWithHttpInfo(String grantType, { String? code, String? redirectUri, String? clientId, String? clientSecret, String? refreshToken, String? scope, String? codeVerifier, }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (grantType != null) {
      formParams[r'grant_type'] = parameterToString(grantType);
    }
    if (code != null) {
      formParams[r'code'] = parameterToString(code);
    }
    if (redirectUri != null) {
      formParams[r'redirect_uri'] = parameterToString(redirectUri);
    }
    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (clientSecret != null) {
      formParams[r'client_secret'] = parameterToString(clientSecret);
    }
    if (refreshToken != null) {
      formParams[r'refresh_token'] = parameterToString(refreshToken);
    }
    if (scope != null) {
      formParams[r'scope'] = parameterToString(scope);
    }
    if (codeVerifier != null) {
      formParams[r'code_verifier'] = parameterToString(codeVerifier);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create token
  ///
  /// Exchange an authorization code, client credentials, or refresh token for access and refresh tokens. Authenticate via client_secret_post or client_secret_basic.
  ///
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] code:
  ///   Authorization code (for authorization_code grant)
  ///
  /// * [String] redirectUri:
  ///   Must match the original redirect_uri
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  ///
  /// * [String] refreshToken:
  ///   Refresh token (for refresh_token grant)
  ///
  /// * [String] scope:
  ///   Space-separated scopes
  ///
  /// * [String] codeVerifier:
  ///   PKCE code verifier
  Future<CreateToken200Response?> createToken(String grantType, { String? code, String? redirectUri, String? clientId, String? clientSecret, String? refreshToken, String? scope, String? codeVerifier, }) async {
    final response = await createTokenWithHttpInfo(grantType,  code: code, redirectUri: redirectUri, clientId: clientId, clientSecret: clientSecret, refreshToken: refreshToken, scope: scope, codeVerifier: codeVerifier, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateToken200Response',) as CreateToken200Response;
    
    }
    return null;
  }

  /// Get JSON Web Key Set
  ///
  /// Public key set for verifying JWT access tokens issued by this server.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getJwksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/jwks.json';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get JSON Web Key Set
  ///
  /// Public key set for verifying JWT access tokens issued by this server.
  Future<JwksResponse?> getJwks() async {
    final response = await getJwksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JwksResponse',) as JwksResponse;
    
    }
    return null;
  }

  /// Introspect token
  ///
  /// Introspect a token to determine its active state and metadata (RFC 7662). Requires client authentication.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Token to introspect
  ///
  /// * [String] tokenTypeHint:
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<Response> introspectTokenWithHttpInfo(String token, { String? tokenTypeHint, String? clientId, String? clientSecret, }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/introspect';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (token != null) {
      formParams[r'token'] = parameterToString(token);
    }
    if (tokenTypeHint != null) {
      formParams[r'token_type_hint'] = parameterToString(tokenTypeHint);
    }
    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (clientSecret != null) {
      formParams[r'client_secret'] = parameterToString(clientSecret);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Introspect token
  ///
  /// Introspect a token to determine its active state and metadata (RFC 7662). Requires client authentication.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Token to introspect
  ///
  /// * [String] tokenTypeHint:
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<IntrospectToken200Response?> introspectToken(String token, { String? tokenTypeHint, String? clientId, String? clientSecret, }) async {
    final response = await introspectTokenWithHttpInfo(token,  tokenTypeHint: tokenTypeHint, clientId: clientId, clientSecret: clientSecret, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntrospectToken200Response',) as IntrospectToken200Response;
    
    }
    return null;
  }

  /// OAuth server metadata
  ///
  /// OAuth 2.0 Authorization Server Metadata (RFC 8414). Returns server configuration including supported grant types, scopes, and endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> oauthServerMetadataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-authorization-server';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OAuth server metadata
  ///
  /// OAuth 2.0 Authorization Server Metadata (RFC 8414). Returns server configuration including supported grant types, scopes, and endpoints.
  Future<OAuthServerMetadata?> oauthServerMetadata() async {
    final response = await oauthServerMetadataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OAuthServerMetadata',) as OAuthServerMetadata;
    
    }
    return null;
  }

  /// Revoke token
  ///
  /// Revoke an access or refresh token (RFC 7009). Requires client authentication. Always returns 200 per spec to prevent token scanning.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Token to revoke
  ///
  /// * [String] tokenTypeHint:
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<Response> revokeTokenWithHttpInfo(String token, { String? tokenTypeHint, String? clientId, String? clientSecret, }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth/revoke';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (token != null) {
      formParams[r'token'] = parameterToString(token);
    }
    if (tokenTypeHint != null) {
      formParams[r'token_type_hint'] = parameterToString(tokenTypeHint);
    }
    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (clientSecret != null) {
      formParams[r'client_secret'] = parameterToString(clientSecret);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke token
  ///
  /// Revoke an access or refresh token (RFC 7009). Requires client authentication. Always returns 200 per spec to prevent token scanning.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Token to revoke
  ///
  /// * [String] tokenTypeHint:
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<void> revokeToken(String token, { String? tokenTypeHint, String? clientId, String? clientSecret, }) async {
    final response = await revokeTokenWithHttpInfo(token,  tokenTypeHint: tokenTypeHint, clientId: clientId, clientSecret: clientSecret, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
