# mailodds.model.Job

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** | Job name (from metadata or auto-generated) | 
**status** | **String** |  | 
**totalCount** | **int** |  | 
**processedCount** | **int** |  | 
**summary** | [**JobSummary**](JobSummary.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**startedAt** | [**DateTime**](DateTime.md) | When processing began. Omitted if not yet started. | [optional] 
**completedAt** | [**DateTime**](DateTime.md) | Omitted if not yet completed. | [optional] 
**resultsExpireAt** | [**DateTime**](DateTime.md) | When job results will be purged | 
**metadata** | [**Object**](.md) | Custom metadata attached at creation | [optional] 
**errorMessage** | **String** | Error details. Present only for failed jobs. | [optional] 
**requestId** | **String** | Request ID from the job creation request | [optional] 
**artifacts** | [**JobArtifacts**](JobArtifacts.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


