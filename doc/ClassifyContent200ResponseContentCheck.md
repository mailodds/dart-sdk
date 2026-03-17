# mailodds.model.ClassifyContent200ResponseContentCheck

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Overall content status | [optional] 
**flag** | **bool** | Whether the content is flagged | [optional] 
**reason** | **String** | Human-readable reason for the status | [optional] 
**priority** | **int** | Priority level (1=lowest, 5=highest) | [optional] 
**suggestions** | **List<String>** | Improvement suggestions | [optional] [default to const []]
**durationMs** | **int** | Classification duration in milliseconds | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


