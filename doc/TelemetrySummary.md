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
**topReasons** | [**List<TelemetrySummaryTopReasonsInner>**](TelemetrySummaryTopReasonsInner.md) | Top rejection/status reasons | [optional] [default to const []]
**topDomains** | [**List<TelemetrySummaryTopDomainsInner>**](TelemetrySummaryTopDomainsInner.md) | Top domains by volume | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


