# mailodds.model.ContactList

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Contact list UUID | [optional] 
**name** | **String** |  | [optional] 
**emailCount** | **int** | Number of emails in the list | [optional] 
**tags** | **List<String>** |  | [optional] [default to const []]
**sourceJobIds** | **List<String>** | Validation job IDs this list was built from | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


