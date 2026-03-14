# mailodds.model.SpamCheck

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Spam check UUID | [optional] 
**fromDomain** | **String** |  | [optional] 
**score** | **num** | Overall spam score (0-10, lower is better) | [optional] 
**verdict** | **String** | Overall verdict | [optional] 
**checks** | [**SpamCheckChecks**](SpamCheckChecks.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


