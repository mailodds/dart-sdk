# mailodds.model.ValidationResult

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**status** | **String** |  | 
**subStatus** | **String** | Detailed reason. Omitted when none. | [optional] 
**action** | **String** |  | 
**domain** | **String** | Email domain | 
**mxHost** | **String** | Primary MX hostname. Omitted when not resolved. | [optional] 
**checks** | [**Map<String, Object>**](Object.md) | Detailed check results (JSONB). Omitted when not available. | [optional] [default to const {}]
**suppression** | [**ValidationResultSuppression**](ValidationResultSuppression.md) |  | [optional] 
**processedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


