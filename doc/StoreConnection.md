# mailodds.model.StoreConnection

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Store connection UUID | [optional] 
**accountId** | **int** |  | [optional] 
**platform** | **String** | E-commerce platform | [optional] 
**storeName** | **String** |  | [optional] 
**storeUrl** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**authMethod** | **String** |  | [optional] 
**productCount** | **int** | Number of active products | [optional] 
**lastSyncedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastError** | **String** | Last sync error message | [optional] 
**syncIntervalSeconds** | **int** | Auto-sync interval in seconds | [optional] [default to 3600]
**settings** | [**Object**](.md) | Platform-specific settings | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


