# mailodds.model.CreateAlertRuleRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric** | **String** | Metric to monitor (e.g., bounce_rate, complaint_rate) | 
**threshold** | **num** | Threshold value (0-1, e.g. 0.02 for 2%) | 
**channel** | **String** | Notification channel (e.g., webhook) | 
**windowMinutes** | **int** | Evaluation window in minutes | [optional] [default to CreateAlertRuleRequestWindowMinutesEnum.number60]
**enabled** | **bool** |  | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


