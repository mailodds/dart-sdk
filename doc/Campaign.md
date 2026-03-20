# mailodds.model.Campaign

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Campaign UUID | 
**accountId** | **int** |  | [optional] 
**name** | **String** | Campaign name | 
**status** | **String** |  | 
**domainId** | **String** | Sending domain UUID | 
**subject** | **String** |  | [optional] 
**fromAddress** | **String** | Sender email address | 
**replyTo** | **String** |  | [optional] 
**htmlBody** | **String** |  | [optional] 
**textBody** | **String** |  | [optional] 
**htmlBodyDark** | **String** |  | [optional] 
**textBodyDark** | **String** |  | [optional] 
**campaignType** | **String** |  | [optional] 
**autoDetectSchema** | **bool** |  | [optional] 
**promoAnnotations** | [**Object**](.md) |  | [optional] 
**throwawayPolicy** | **String** |  | [optional] 
**scheduledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**startedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**completedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**recipientCount** | **int** |  | [optional] 
**isAbTest** | **bool** |  | [optional] 
**winningVariantId** | **String** |  | [optional] 
**abTestConfig** | [**Object**](.md) |  | [optional] 
**errorMessage** | **String** |  | [optional] 
**stats** | [**CampaignStats**](CampaignStats.md) |  | [optional] 
**openRate** | **num** |  | [optional] 
**clickRate** | **num** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


