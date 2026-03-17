//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailodds/api.dart';
import 'package:test/test.dart';


/// tests for OAuth20Api
void main() {
  // final instance = OAuth20Api();

  group('tests for OAuth20Api', () {
    // Create token
    //
    // Exchange an authorization code, client credentials, or refresh token for access and refresh tokens. Authenticate via client_secret_post or client_secret_basic.
    //
    //Future<CreateToken200Response> createToken(String grantType, { String code, String redirectUri, String clientId, String clientSecret, String refreshToken, String scope, String codeVerifier }) async
    test('test createToken', () async {
      // TODO
    });

    // Get JSON Web Key Set
    //
    // Public key set for verifying JWT access tokens issued by this server.
    //
    //Future<JwksResponse> getJwks() async
    test('test getJwks', () async {
      // TODO
    });

    // Introspect token
    //
    // Introspect a token to determine its active state and metadata (RFC 7662). Requires client authentication.
    //
    //Future<IntrospectToken200Response> introspectToken(String token, { String tokenTypeHint, String clientId, String clientSecret }) async
    test('test introspectToken', () async {
      // TODO
    });

    // OAuth server metadata
    //
    // OAuth 2.0 Authorization Server Metadata (RFC 8414). Returns server configuration including supported grant types, scopes, and endpoints.
    //
    //Future<OAuthServerMetadata> oauthServerMetadata() async
    test('test oauthServerMetadata', () async {
      // TODO
    });

    // Revoke token
    //
    // Revoke an access or refresh token (RFC 7009). Requires client authentication. Always returns 200 per spec to prevent token scanning.
    //
    //Future revokeToken(String token, { String tokenTypeHint, String clientId, String clientSecret }) async
    test('test revokeToken', () async {
      // TODO
    });

  });
}
