# mailodds.model.CreateJobRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emails** | **BuiltList&lt;String&gt;** | List of emails to validate | 
**dedup** | **bool** | Remove duplicate emails | [optional] [default to false]
**metadata** | [**JsonObject**](.md) | Custom metadata for the job | [optional] 
**webhookUrl** | **String** | URL for completion webhook. Payloads are signed with HMAC-SHA256 if a webhook secret is configured (see Webhooks section). | [optional] 
**idempotencyKey** | **String** | Unique key for idempotent requests | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


