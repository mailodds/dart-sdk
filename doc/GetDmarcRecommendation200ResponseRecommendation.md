# mailodds.model.GetDmarcRecommendation200ResponseRecommendation

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentPolicy** | **String** | Current DMARC policy (none, quarantine, reject) | [optional] 
**recommendedPolicy** | **String** | Recommended DMARC policy | [optional] 
**confidence** | **num** | Confidence level (0-1) | [optional] 
**reasons** | **List<String>** | Reasons for the recommendation | [optional] [default to const []]
**readyToUpgrade** | **bool** | Whether it is safe to upgrade | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


