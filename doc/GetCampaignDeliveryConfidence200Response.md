# mailodds.model.GetCampaignDeliveryConfidence200Response

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**requestId** | **String** | Unique request identifier | [optional] 
**campaignId** | **String** |  | [optional] 
**confidenceScore** | **int** | Predicted delivery confidence (0-100) | [optional] 
**factors** | [**GetCampaignDeliveryConfidence200ResponseFactors**](GetCampaignDeliveryConfidence200ResponseFactors.md) |  | [optional] 
**recommendations** | **List<String>** | Actionable recommendations to improve delivery confidence | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


