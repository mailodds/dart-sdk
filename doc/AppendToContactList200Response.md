# mailodds.model.AppendToContactList200Response

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** |  | [optional] 
**contactList** | [**ContactList**](ContactList.md) |  | [optional] 
**addedCount** | **int** | Number of new emails added | [optional] 
**candidateCount** | **int** | Total candidates from jobs | [optional] 
**duplicateCount** | **int** | Duplicates skipped | [optional] 
**breakdown** | [**Object**](.md) | Per-status breakdown of candidates | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


