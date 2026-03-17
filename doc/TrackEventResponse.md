# mailodds.model.TrackEventResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** |  | [optional] 
**eventId** | **int** | Event ID | [optional] 
**created** | **bool** | True if newly created, false if idempotent duplicate | [optional] 
**idempotent** | **bool** | Present and true when returning an existing event | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


