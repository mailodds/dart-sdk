# mailodds.model.ServerTest

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Test UUID | [optional] 
**domain** | **String** | Tested domain | [optional] 
**status** | **String** | Test status | [optional] 
**mxRecords** | [**List<ServerTestMxRecordsInner>**](ServerTestMxRecordsInner.md) |  | [optional] [default to const []]
**smtpCheck** | [**ServerTestSmtpCheck**](ServerTestSmtpCheck.md) |  | [optional] 
**dnsChecks** | [**ServerTestDnsChecks**](ServerTestDnsChecks.md) |  | [optional] 
**score** | **int** | Overall server configuration score (0-100) | [optional] 
**recommendations** | **List<String>** |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


