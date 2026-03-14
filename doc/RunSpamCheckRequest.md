# mailodds.model.RunSpamCheckRequest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromDomain** | **String** | Sending domain to check | 
**links** | **List<String>** | URLs included in the email | [optional] [default to const []]
**subjectPreview** | **String** | Email subject line to analyze | [optional] 
**clientScores** | [**Object**](.md) | Client-side spam scores to include in analysis | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


