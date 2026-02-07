# mailodds.model.ValidationResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**email** | **String** |  | 
**status** | **String** | Validation status | 
**subStatus** | **String** | Detailed status reason | [optional] 
**action** | **String** | Recommended action | 
**domain** | **String** |  | [optional] 
**mxFound** | **bool** |  | [optional] 
**smtpCheck** | **bool** |  | [optional] 
**disposable** | **bool** |  | [optional] 
**roleAccount** | **bool** |  | [optional] 
**freeProvider** | **bool** |  | [optional] 
**suppressionMatch** | [**ValidationResponseSuppressionMatch**](ValidationResponseSuppressionMatch.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


