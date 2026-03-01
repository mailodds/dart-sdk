# mailodds.model.Subscriber

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Subscriber UUID | [optional] 
**listId** | **String** | List UUID | [optional] 
**email** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**consentSourceIp** | **String** | IP address of subscription | [optional] 
**consentPageUrl** | **String** | Page URL where form was submitted | [optional] 
**consentFormId** | **String** | Form identifier | [optional] 
**consentTimestamp** | [**DateTime**](DateTime.md) |  | [optional] 
**confirmedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**unsubscribedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**validationResult** | [**Object**](.md) | Email validation result | [optional] 
**metadata** | [**Object**](.md) | Custom metadata | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


