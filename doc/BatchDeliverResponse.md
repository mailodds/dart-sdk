# mailodds.model.BatchDeliverResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** | Unique request identifier | [optional] 
**total** | **int** | Total recipients submitted | [optional] 
**accepted** | **int** | Number of recipients accepted for delivery | [optional] 
**rejected** | [**List<BatchDeliverResponseRejectedInner>**](BatchDeliverResponseRejectedInner.md) | Recipients that were rejected (suppressed or failed validation) | [optional] [default to const []]
**status** | **String** | Batch status | [optional] 
**delivery** | [**BatchDeliverResponseDelivery**](BatchDeliverResponseDelivery.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


