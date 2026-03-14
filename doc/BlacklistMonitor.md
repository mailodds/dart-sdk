# mailodds.model.BlacklistMonitor

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Monitor UUID | [optional] 
**target** | **String** | IP address or domain being monitored | [optional] 
**targetType** | **String** |  | [optional] 
**status** | **String** | Current status (clean, listed) | [optional] 
**listedCount** | **int** | Number of blacklists currently listing this target | [optional] 
**lastCheckedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**latestCheck** | [**BlacklistMonitorLatestCheck**](BlacklistMonitorLatestCheck.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


