# mailodds.model.BatchProductsResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** |  | [optional] 
**created** | **int** | Products created | [optional] 
**updated** | **int** | Products updated | [optional] 
**errored** | **int** | Products that failed | [optional] 
**errors** | [**List<BatchProductsResponseErrorsInner>**](BatchProductsResponseErrorsInner.md) | Error details (max 20) | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


