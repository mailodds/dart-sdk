# mailodds.model.PolicyRule

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**type** | **String** | Rule type determines how condition is evaluated | 
**condition** | [**JsonObject**](.md) | Condition depends on rule type. status_override: {status}, domain_filter: {domain_mode, domains}, check_requirement: {check, required}, sub_status_override: {sub_status} | 
**action** | [**PolicyRuleAction**](PolicyRuleAction.md) |  | 
**sequence** | **int** |  | [optional] 
**isEnabled** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


