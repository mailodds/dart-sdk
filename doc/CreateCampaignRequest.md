# mailodds.model.CreateCampaignRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Campaign name | 
**listId** | **String** | Target subscriber list UUID | 
**domainId** | **String** | Sending domain UUID | 
**fromEmail** | **String** | Sender email address (must match the sending domain) | 
**fromName** | **String** | Sender display name | [optional] 
**replyTo** | **String** | Reply-to address | [optional] 
**tags** | **List<String>** | Tags for categorization | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


