# mailodds.model.BatchDeliverRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **BuiltList&lt;String&gt;** | List of recipient email addresses (max 100) | 
**from** | **String** |  | 
**subject** | **String** |  | 
**html** | **String** |  | [optional] 
**text** | **String** |  | [optional] 
**domainId** | **String** |  | 
**replyTo** | **String** |  | [optional] 
**headers** | [**JsonObject**](.md) |  | [optional] 
**tags** | **BuiltList&lt;String&gt;** |  | [optional] 
**campaignType** | **String** |  | [optional] 
**structuredData** | [**BatchDeliverRequestStructuredData**](BatchDeliverRequestStructuredData.md) |  | [optional] 
**options** | [**JsonObject**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


