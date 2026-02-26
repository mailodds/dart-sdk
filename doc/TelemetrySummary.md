# mailodds.model.TelemetrySummary

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | [optional] 
**window** | **String** |  | [optional] 
**generatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**timezone** | **String** |  | [optional] 
**totals** | [**TelemetrySummaryTotals**](TelemetrySummaryTotals.md) |  | [optional] 
**rates** | [**TelemetrySummaryRates**](TelemetrySummaryRates.md) |  | [optional] 
**topReasons** | [**BuiltList&lt;TelemetrySummaryTopReasonsInner&gt;**](TelemetrySummaryTopReasonsInner.md) | Top rejection/status reasons | [optional] 
**topDomains** | [**BuiltList&lt;TelemetrySummaryTopDomainsInner&gt;**](TelemetrySummaryTopDomainsInner.md) | Top domains by volume | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


