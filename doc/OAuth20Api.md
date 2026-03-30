# mailodds.api.OAuth20Api

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToken**](OAuth20Api.md#createtoken) | **POST** /oauth/token | Create token
[**getJwks**](OAuth20Api.md#getjwks) | **GET** /.well-known/jwks.json | Get JSON Web Key Set
[**introspectToken**](OAuth20Api.md#introspecttoken) | **POST** /oauth/introspect | Introspect token
[**oauthRegisterClient**](OAuth20Api.md#oauthregisterclient) | **POST** /oauth/register | Register OAuth client
[**oauthServerMetadata**](OAuth20Api.md#oauthservermetadata) | **GET** /.well-known/oauth-authorization-server | OAuth server metadata
[**revokeToken**](OAuth20Api.md#revoketoken) | **POST** /oauth/revoke | Revoke token


# **createToken**
> CreateToken200Response createToken(grantType, code, redirectUri, clientId, clientSecret, refreshToken, scope, codeVerifier)

Create token

Exchange an authorization code, client credentials, or refresh token for access and refresh tokens. Authenticate via client_secret_post or client_secret_basic.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = OAuth20Api();
final grantType = grantType_example; // String | 
final code = code_example; // String | Authorization code (for authorization_code grant)
final redirectUri = redirectUri_example; // String | Must match the original redirect_uri
final clientId = clientId_example; // String | 
final clientSecret = clientSecret_example; // String | 
final refreshToken = refreshToken_example; // String | Refresh token (for refresh_token grant)
final scope = scope_example; // String | Space-separated scopes
final codeVerifier = codeVerifier_example; // String | PKCE code verifier

try {
    final result = api_instance.createToken(grantType, code, redirectUri, clientId, clientSecret, refreshToken, scope, codeVerifier);
    print(result);
} catch (e) {
    print('Exception when calling OAuth20Api->createToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String**|  | 
 **code** | **String**| Authorization code (for authorization_code grant) | [optional] 
 **redirectUri** | **String**| Must match the original redirect_uri | [optional] 
 **clientId** | **String**|  | [optional] 
 **clientSecret** | **String**|  | [optional] 
 **refreshToken** | **String**| Refresh token (for refresh_token grant) | [optional] 
 **scope** | **String**| Space-separated scopes | [optional] 
 **codeVerifier** | **String**| PKCE code verifier | [optional] 

### Return type

[**CreateToken200Response**](CreateToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwks**
> JwksResponse getJwks()

Get JSON Web Key Set

Public key set for verifying JWT access tokens issued by this server.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = OAuth20Api();

try {
    final result = api_instance.getJwks();
    print(result);
} catch (e) {
    print('Exception when calling OAuth20Api->getJwks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspectToken**
> IntrospectToken200Response introspectToken(token, tokenTypeHint, clientId, clientSecret)

Introspect token

Introspect a token to determine its active state and metadata (RFC 7662). Requires client authentication.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = OAuth20Api();
final token = token_example; // String | Token to introspect
final tokenTypeHint = tokenTypeHint_example; // String | 
final clientId = clientId_example; // String | 
final clientSecret = clientSecret_example; // String | 

try {
    final result = api_instance.introspectToken(token, tokenTypeHint, clientId, clientSecret);
    print(result);
} catch (e) {
    print('Exception when calling OAuth20Api->introspectToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Token to introspect | 
 **tokenTypeHint** | **String**|  | [optional] 
 **clientId** | **String**|  | [optional] 
 **clientSecret** | **String**|  | [optional] 

### Return type

[**IntrospectToken200Response**](IntrospectToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthRegisterClient**
> OAuthClientRegistration oauthRegisterClient()

Register OAuth client

Dynamic Client Registration (RFC 7591). Allows MCP clients to auto-register without user interaction.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = OAuth20Api();

try {
    final result = api_instance.oauthRegisterClient();
    print(result);
} catch (e) {
    print('Exception when calling OAuth20Api->oauthRegisterClient: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAuthClientRegistration**](OAuthClientRegistration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthServerMetadata**
> OAuthServerMetadata oauthServerMetadata()

OAuth server metadata

OAuth 2.0 Authorization Server Metadata (RFC 8414). Returns server configuration including supported grant types, scopes, and endpoints.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = OAuth20Api();

try {
    final result = api_instance.oauthServerMetadata();
    print(result);
} catch (e) {
    print('Exception when calling OAuth20Api->oauthServerMetadata: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAuthServerMetadata**](OAuthServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeToken**
> revokeToken(token, tokenTypeHint, clientId, clientSecret)

Revoke token

Revoke an access or refresh token (RFC 7009). Requires client authentication. Always returns 200 per spec to prevent token scanning.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = OAuth20Api();
final token = token_example; // String | Token to revoke
final tokenTypeHint = tokenTypeHint_example; // String | 
final clientId = clientId_example; // String | 
final clientSecret = clientSecret_example; // String | 

try {
    api_instance.revokeToken(token, tokenTypeHint, clientId, clientSecret);
} catch (e) {
    print('Exception when calling OAuth20Api->revokeToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Token to revoke | 
 **tokenTypeHint** | **String**|  | [optional] 
 **clientId** | **String**|  | [optional] 
 **clientSecret** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

