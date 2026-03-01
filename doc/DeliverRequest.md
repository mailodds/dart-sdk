# mailodds.model.DeliverRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [**List<DeliverRequestToInner>**](DeliverRequestToInner.md) | List of recipient email addresses | [default to const []]
**from** | **String** | Sender email address (must match sending domain) | 
**subject** | **String** | Email subject line | 
**html** | **String** | HTML email body | [optional] 
**text** | **String** | Plain text email body | [optional] 
**domainId** | **String** | Sending domain UUID | 
**replyTo** | **String** | Reply-to address | [optional] 
**headers** | [**Object**](.md) | Extra email headers | [optional] 
**tags** | **List<String>** | Tags for categorization | [optional] [default to const []]
**campaignType** | **String** | Campaign type for JSON-LD auto-generation | [optional] 
**structuredData** | [**DeliverRequestStructuredData**](DeliverRequestStructuredData.md) |  | [optional] 
**schemaData** | **Map<String, String>** | Key-value pairs for campaign_type JSON-LD resolution (e.g., order_number, tracking_url) | [optional] [default to const {}]
**autoDetectSchema** | **bool** | Auto-detect JSON-LD structured data type from subject line | [optional] [default to false]
**aiSummary** | **String** | Hidden text summary for AI email assistants (max 500 characters) | [optional] 
**options** | [**DeliverRequestOptions**](DeliverRequestOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


