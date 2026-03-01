# mailodds.model.BatchDeliverRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **List<String>** | List of recipient email addresses (max 100) | [default to const []]
**from** | **String** |  | 
**subject** | **String** |  | 
**html** | **String** |  | [optional] 
**text** | **String** |  | [optional] 
**domainId** | **String** |  | 
**replyTo** | **String** |  | [optional] 
**headers** | [**Object**](.md) |  | [optional] 
**tags** | **List<String>** |  | [optional] [default to const []]
**campaignType** | **String** |  | [optional] 
**structuredData** | [**BatchDeliverRequestStructuredData**](BatchDeliverRequestStructuredData.md) |  | [optional] 
**options** | [**Object**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


