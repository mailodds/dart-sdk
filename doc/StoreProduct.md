# mailodds.model.StoreProduct

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Product UUID | [optional] 
**storeId** | **String** | Store connection UUID | [optional] 
**externalId** | **String** | Product ID in the source store | [optional] 
**sku** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**priceCurrent** | **num** | Current price | [optional] 
**priceOriginal** | **num** | Original price (before discount) | [optional] 
**currency** | **String** |  | [optional] [default to 'USD']
**saleStart** | [**DateTime**](DateTime.md) |  | [optional] 
**saleEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**stockStatus** | **String** |  | [optional] 
**stockQuantity** | **int** |  | [optional] 
**imageUrl** | **String** |  | [optional] 
**additionalImages** | **List<String>** |  | [optional] [default to const []]
**categories** | **List<String>** |  | [optional] [default to const []]
**tags** | **List<String>** |  | [optional] [default to const []]
**productUrl** | **String** |  | [optional] 
**variants** | [**List<Object>**](Object.md) |  | [optional] [default to const []]
**isActive** | **bool** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


