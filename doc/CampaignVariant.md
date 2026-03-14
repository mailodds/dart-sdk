# mailodds.model.CampaignVariant

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Variant UUID | 
**campaignId** | **String** |  | 
**name** | **String** | Variant name (e.g., \"Variant A\") | 
**subject** | **String** |  | 
**html** | **String** | HTML email body | [optional] 
**text** | **String** | Plain text email body | [optional] 
**weight** | **int** | Traffic weight percentage (all variant weights must sum to 100) | 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


