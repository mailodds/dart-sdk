# mailodds.model.BounceAnalysisResponseAnalysis

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Analysis UUID | [optional] 
**domainId** | **String** |  | [optional] 
**period** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**totalBounces** | **int** |  | [optional] 
**hardBounces** | **int** |  | [optional] 
**softBounces** | **int** |  | [optional] 
**categories** | [**BounceAnalysisResponseAnalysisCategories**](BounceAnalysisResponseAnalysisCategories.md) |  | [optional] 
**topDomains** | [**List<BounceAnalysisResponseAnalysisTopDomainsInner>**](BounceAnalysisResponseAnalysisTopDomainsInner.md) | Top bouncing recipient domains | [optional] [default to const []]
**recommendations** | **List<String>** | Actionable recommendations to reduce bounces | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


