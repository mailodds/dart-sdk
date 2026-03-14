# mailodds.model.Campaign

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Campaign UUID | 
**name** | **String** | Campaign name | 
**status** | **String** |  | 
**listId** | **String** | Target subscriber list UUID | 
**domainId** | **String** | Sending domain UUID | 
**fromEmail** | **String** |  | 
**fromName** | **String** |  | [optional] 
**replyTo** | **String** |  | [optional] 
**scheduledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**sentAt** | [**DateTime**](DateTime.md) |  | [optional] 
**cancelledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**variantCount** | **int** | Number of A/B variants | [optional] 
**stats** | [**CampaignStats**](CampaignStats.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


