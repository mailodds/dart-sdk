# mailodds.model.OAuthClientRegistration

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **String** | Issued client identifier | 
**clientName** | **String** | Human-readable client name | 
**redirectUris** | **List<String>** | Registered redirect URIs | [default to const []]
**grantTypes** | **List<String>** | Allowed grant types | [default to const []]
**responseTypes** | **List<String>** | Allowed response types | [default to const []]
**tokenEndpointAuthMethod** | **String** | Token endpoint auth method | 
**scope** | **String** | Allowed scope | [optional] 
**clientIdIssuedAt** | **int** | Unix timestamp of client registration | 
**clientSecret** | **String** | Client secret (only for confidential clients, shown once) | [optional] 
**clientSecretExpiresAt** | **int** | Secret expiry (0 = never) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


