# mailodds.model.ValidationResponse

## Load the model package
```dart
import 'package:mailodds/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemaVersion** | **String** |  | 
**requestId** | **String** | Unique request identifier | [optional] 
**email** | **String** |  | 
**status** | **String** | Validation status | 
**action** | **String** | Recommended action | 
**subStatus** | **String** | Detailed status reason. Omitted when none. | [optional] 
**domain** | **String** |  | 
**mxFound** | **bool** | Whether MX records were found for the domain | 
**mxHost** | **String** | Primary MX hostname. Omitted when MX not resolved. | [optional] 
**smtpCheck** | **bool** | Whether SMTP verification passed. Omitted when SMTP not checked. | [optional] 
**catchAll** | **bool** | Whether domain is catch-all. Omitted when SMTP not checked. | [optional] 
**disposable** | **bool** | Whether domain is a known disposable email provider | 
**roleAccount** | **bool** | Whether address is a role account (e.g., info@, admin@) | 
**freeProvider** | **bool** | Whether domain is a known free email provider (e.g., gmail.com) | 
**depth** | **String** | Validation depth used for this check | 
**processedAt** | [**DateTime**](DateTime.md) | ISO 8601 timestamp of validation | 
**suggestedEmail** | **String** | Domain typo correction suggestion based on a static lookup table of common misspellings (e.g. gmial.com -> gmail.com). Not validated via SMTP. Omitted when no match found. | [optional] 
**retryAfterMs** | **int** | Suggested retry delay in milliseconds. Present only for retry_later action. | [optional] 
**hasSpf** | **bool** | Whether the domain has an SPF record. Omitted for standard depth. | [optional] 
**hasDmarc** | **bool** | Whether the domain has a DMARC record. Omitted for standard depth. | [optional] 
**dmarcPolicy** | **String** | The domain's DMARC policy. Omitted when no DMARC record found. | [optional] 
**dnsblListed** | **bool** | Whether the domain's MX IP is on a DNS blocklist (Spamhaus ZEN). Omitted for standard depth. | [optional] 
**suppressionMatch** | [**ValidationResponseSuppressionMatch**](ValidationResponseSuppressionMatch.md) |  | [optional] 
**policyApplied** | [**ValidationResponsePolicyApplied**](ValidationResponsePolicyApplied.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


