# mailodds.model.SyncResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** |  | [optional] 
**scheduled** | **bool** |  | [optional] 
**storeId** | **String** |  | [optional] 
**idempotent** | **bool** | True if this was a duplicate request matched by Idempotency-Key | [optional] 
**existingJobId** | **String** | ID of existing sync job if one was already running | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


