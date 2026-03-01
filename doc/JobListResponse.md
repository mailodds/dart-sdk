# mailodds.model.JobListResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** | Unique request identifier | [optional] 
**data** | [**List<Job>**](Job.md) | List of jobs | [optional] [default to const []]
**nextCursor** | **String** | Cursor for next page. Null when no more results. | [optional] 
**hasMore** | **bool** | Whether more results exist beyond this page | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


