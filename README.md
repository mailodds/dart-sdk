# MailOdds Dart / Flutter SDK

**Dart and Flutter client for the [MailOdds](https://mailodds.com) email platform.** Validate emails, send transactional messages, run campaigns, and monitor deliverability in Flutter apps and ecommerce backends.

[![pub.dev](https://img.shields.io/pub/v/mailodds)](https://pub.dev/packages/mailodds)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![API Docs](https://img.shields.io/badge/API-Reference-blue)](https://mailodds.com/docs)

## Installation

Add the package to your project:

```bash
dart pub add mailodds
```

Or add it to your `pubspec.yaml`:

```yaml
dependencies:
  mailodds: ^1.0.0
```

## Quick Start

```dart
import 'package:mailodds/api.dart';

void main() async {
  final client = ApiClient(basePath: 'https://api.mailodds.com/v1');
  client.addDefaultHeader('Authorization', 'Bearer YOUR_API_KEY');

  final api = EmailValidationApi(client);
  final request = ValidateRequest(email: 'user@example.com');
  final result = await api.validateEmail(validateRequest: request);
  print('Status: ${result?.result}');
}
```

## MailOdds Platform

MailOdds is a complete email deliverability platform covering validation, sending, campaigns, and monitoring. These pages cover what the platform does and how the Dart SDK fits in:

- [Bulk Email Validation](https://mailodds.com/bulk-email-validation) - Clean lists at scale with the Dart SDK
- [Ecommerce Email](https://mailodds.com/ecommerce-email) - Validate checkout emails in Flutter storefronts
- [Email Campaigns](https://mailodds.com/email-campaigns) - Create, schedule, and send campaigns from Dart backends
- [Sender Reputation](https://mailodds.com/sender-reputation) - Track sender health scores and domain reputation
- [Email Suppression List](https://mailodds.com/email-suppression-list) - Manage suppression lists to protect deliverability
- [Ecommerce Email Integration](https://mailodds.com/ecommerce-email-integration) - Connect WooCommerce and PrestaShop stores
- [Guide: Email Authentication](https://mailodds.com/guides/email-authentication) - Set up SPF, DKIM, and DMARC for your domains
- [Blog](https://mailodds.com/blog) - Deliverability tips and product updates

## Features

- **Dart 2.12+** with null safety
- **Flutter compatible** for mobile, web, and desktop apps
- **dio HTTP client** with interceptors and retry support
- **Email validation** with real-time SMTP verification and catch-all detection
- **Bulk validation** for list cleaning with webhook notifications
- **Transactional email** with DKIM dual signing and engagement tracking
- **Campaign management** with A/B testing and provider intelligence
- **Deliverability monitoring** including blacklist checks, DMARC, and sender health
- **Suppression lists** with automatic bounce and complaint handling
- **Content classification** for spam scoring before you send
- **Validation policies** with presets for ecommerce, SaaS, and marketing
- **Ecommerce integrations** for WooCommerce and PrestaShop

## Why MailOdds

MailOdds is a complete email deliverability platform built for developers. Every email validated or sent through MailOdds passes through 25+ real-time checks including syntax verification, DNS and MX validation, SMTP mailbox probing, disposable domain detection, and role account identification.

The platform maintains sub-200ms median response times for single validations, 99.9% API uptime, and processes bulk lists of up to 500,000 emails per job. MailOdds supports 11 language SDKs, an MCP server for AI agent integration, a CLI for local development, and a WordPress plugin for no-code deployments.

All email sending uses DKIM dual signing with automated key rotation, and the deliverability monitoring stack covers DMARC aggregate reports, blacklist surveillance across 80+ DNSBLs, and real-time sender health scoring.

## API Reference

The SDK covers every endpoint in the MailOdds API. Below is the full endpoint and model reference.

<details>
<summary>All API Endpoints</summary>

All URIs are relative to *https://api.mailodds.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AgentControlPlaneApi* | [**getMcpCapabilities**](doc//AgentControlPlaneApi.md#getmcpcapabilities) | **GET** /v1/mcp/capabilities | Get MCP capabilities
*BlacklistMonitoringApi* | [**addBlacklistMonitor**](doc//BlacklistMonitoringApi.md#addblacklistmonitor) | **POST** /v1/blacklist-monitors | Add blacklist monitor
*BlacklistMonitoringApi* | [**deleteBlacklistMonitor**](doc//BlacklistMonitoringApi.md#deleteblacklistmonitor) | **DELETE** /v1/blacklist-monitors/{monitor_id} | Delete a blacklist monitor
*BlacklistMonitoringApi* | [**getBlacklistHistory**](doc//BlacklistMonitoringApi.md#getblacklisthistory) | **GET** /v1/blacklist-monitors/{monitor_id}/history | Get blacklist check history
*BlacklistMonitoringApi* | [**listBlacklistMonitors**](doc//BlacklistMonitoringApi.md#listblacklistmonitors) | **GET** /v1/blacklist-monitors | List blacklist monitors
*BlacklistMonitoringApi* | [**runBlacklistCheck**](doc//BlacklistMonitoringApi.md#runblacklistcheck) | **POST** /v1/blacklist-monitors/{monitor_id}/check | Run blacklist check
*BounceAnalysisApi* | [**createBounceAnalysis**](doc//BounceAnalysisApi.md#createbounceanalysis) | **POST** /v1/bounce-analyses | Analyze bounce logs
*BounceAnalysisApi* | [**crossReferenceBounces**](doc//BounceAnalysisApi.md#crossreferencebounces) | **GET** /v1/bounce-analyses/{analysis_id}/cross-reference | Cross-reference bounces with validation logs
*BounceAnalysisApi* | [**getBounceAnalysis**](doc//BounceAnalysisApi.md#getbounceanalysis) | **GET** /v1/bounce-analyses/{analysis_id} | Get bounce analysis
*BounceAnalysisApi* | [**getBounceRecords**](doc//BounceAnalysisApi.md#getbouncerecords) | **GET** /v1/bounce-analyses/{analysis_id}/records | Get bounce records
*BulkValidationApi* | [**cancelJob**](doc//BulkValidationApi.md#canceljob) | **POST** /v1/jobs/{job_id}/cancel | Cancel a job
*BulkValidationApi* | [**createJob**](doc//BulkValidationApi.md#createjob) | **POST** /v1/jobs | Create bulk validation job (JSON)
*BulkValidationApi* | [**createJobFromS3**](doc//BulkValidationApi.md#createjobfroms3) | **POST** /v1/jobs/upload/s3 | Create job from S3 upload
*BulkValidationApi* | [**createJobUpload**](doc//BulkValidationApi.md#createjobupload) | **POST** /v1/jobs/upload | Create bulk validation job (file upload)
*BulkValidationApi* | [**deleteJob**](doc//BulkValidationApi.md#deletejob) | **DELETE** /v1/jobs/{job_id} | Delete a job
*BulkValidationApi* | [**getJob**](doc//BulkValidationApi.md#getjob) | **GET** /v1/jobs/{job_id} | Get job status
*BulkValidationApi* | [**getJobResults**](doc//BulkValidationApi.md#getjobresults) | **GET** /v1/jobs/{job_id}/results | Get job results
*BulkValidationApi* | [**getPresignedUpload**](doc//BulkValidationApi.md#getpresignedupload) | **POST** /v1/jobs/upload/presigned | Get S3 presigned upload URL
*BulkValidationApi* | [**listJobs**](doc//BulkValidationApi.md#listjobs) | **GET** /v1/jobs | List validation jobs
*CampaignAnalyticsApi* | [**getCampaignABResults**](doc//CampaignAnalyticsApi.md#getcampaignabresults) | **GET** /v1/campaigns/{campaign_id}/ab-results | Get A/B test results
*CampaignAnalyticsApi* | [**getCampaignAttribution**](doc//CampaignAnalyticsApi.md#getcampaignattribution) | **GET** /v1/campaigns/{campaign_id}/conversions/attribution | Get campaign attribution
*CampaignAnalyticsApi* | [**getCampaignDeliveryConfidence**](doc//CampaignAnalyticsApi.md#getcampaigndeliveryconfidence) | **GET** /v1/campaigns/{campaign_id}/delivery-confidence | Get pre-send delivery confidence
*CampaignAnalyticsApi* | [**getCampaignFunnel**](doc//CampaignAnalyticsApi.md#getcampaignfunnel) | **GET** /v1/campaigns/{campaign_id}/funnel | Get campaign funnel
*CampaignAnalyticsApi* | [**getCampaignProviderIntelligence**](doc//CampaignAnalyticsApi.md#getcampaignproviderintelligence) | **GET** /v1/campaigns/{campaign_id}/provider-intelligence | Get provider intelligence
*CampaignsApi* | [**cancelCampaign**](doc//CampaignsApi.md#cancelcampaign) | **POST** /v1/campaigns/{campaign_id}/cancel | Cancel a campaign
*CampaignsApi* | [**createCampaign**](doc//CampaignsApi.md#createcampaign) | **POST** /v1/campaigns | Create a campaign
*CampaignsApi* | [**createCampaignVariant**](doc//CampaignsApi.md#createcampaignvariant) | **POST** /v1/campaigns/{campaign_id}/variants | Create A/B variant
*CampaignsApi* | [**getCampaign**](doc//CampaignsApi.md#getcampaign) | **GET** /v1/campaigns/{campaign_id} | Get campaign with stats
*CampaignsApi* | [**listCampaigns**](doc//CampaignsApi.md#listcampaigns) | **GET** /v1/campaigns | List campaigns
*CampaignsApi* | [**scheduleCampaign**](doc//CampaignsApi.md#schedulecampaign) | **POST** /v1/campaigns/{campaign_id}/schedule | Schedule a campaign
*CampaignsApi* | [**sendCampaign**](doc//CampaignsApi.md#sendcampaign) | **POST** /v1/campaigns/{campaign_id}/send | Send a campaign
*ContactListsApi* | [**appendToContactList**](doc//ContactListsApi.md#appendtocontactlist) | **POST** /v1/contact-lists/{list_id}/append | Append to contact list
*ContactListsApi* | [**createContactList**](doc//ContactListsApi.md#createcontactlist) | **POST** /v1/contact-lists | Create contact list
*ContactListsApi* | [**deleteContactList**](doc//ContactListsApi.md#deletecontactlist) | **DELETE** /v1/contact-lists/{list_id} | Delete a contact list
*ContactListsApi* | [**getInactiveContactsReport**](doc//ContactListsApi.md#getinactivecontactsreport) | **GET** /v1/contacts/inactive-report | Get inactive contacts report
*ContactListsApi* | [**listContactLists**](doc//ContactListsApi.md#listcontactlists) | **GET** /v1/contact-lists | List contact lists
*ContactListsApi* | [**queryContactList**](doc//ContactListsApi.md#querycontactlist) | **POST** /v1/contact-lists/{list_id}/query | Query contact list
*ContentClassificationApi* | [**classifyContent**](doc//ContentClassificationApi.md#classifycontent) | **POST** /v1/content-check | Classify email content
*DMARCMonitoringApi* | [**addDmarcDomain**](doc//DMARCMonitoringApi.md#adddmarcdomain) | **POST** /v1/dmarc-domains | Add DMARC domain
*DMARCMonitoringApi* | [**deleteDmarcDomain**](doc//DMARCMonitoringApi.md#deletedmarcdomain) | **DELETE** /v1/dmarc-domains/{domain_id} | Delete a DMARC domain
*DMARCMonitoringApi* | [**getDmarcDomain**](doc//DMARCMonitoringApi.md#getdmarcdomain) | **GET** /v1/dmarc-domains/{domain_id} | Get DMARC domain
*DMARCMonitoringApi* | [**getDmarcRecommendation**](doc//DMARCMonitoringApi.md#getdmarcrecommendation) | **GET** /v1/dmarc-domains/{domain_id}/recommendation | Get DMARC policy recommendation
*DMARCMonitoringApi* | [**getDmarcSources**](doc//DMARCMonitoringApi.md#getdmarcsources) | **GET** /v1/dmarc-domains/{domain_id}/sources | Get DMARC sending sources
*DMARCMonitoringApi* | [**getDmarcTrend**](doc//DMARCMonitoringApi.md#getdmarctrend) | **GET** /v1/dmarc-domains/{domain_id}/trend | Get DMARC trend
*DMARCMonitoringApi* | [**listDmarcDomains**](doc//DMARCMonitoringApi.md#listdmarcdomains) | **GET** /v1/dmarc-domains | List DMARC domains
*DMARCMonitoringApi* | [**verifyDmarcDomain**](doc//DMARCMonitoringApi.md#verifydmarcdomain) | **POST** /v1/dmarc-domains/{domain_id}/verify | Verify DMARC DNS records
*EmailSendingApi* | [**deliverBatch**](doc//EmailSendingApi.md#deliverbatch) | **POST** /v1/deliver/batch | Send to multiple recipients (max 100)
*EmailSendingApi* | [**deliverEmail**](doc//EmailSendingApi.md#deliveremail) | **POST** /v1/deliver | Send a single email
*EmailValidationApi* | [**validateBatch**](doc//EmailValidationApi.md#validatebatch) | **POST** /v1/validate/batch | Validate multiple emails (sync)
*EmailValidationApi* | [**validateEmail**](doc//EmailValidationApi.md#validateemail) | **POST** /v1/validate | Validate single email
*EventsApi* | [**trackEvent**](doc//EventsApi.md#trackevent) | **POST** /v1/events/track | Track a commerce event
*MessageEventsApi* | [**getMessageEvents**](doc//MessageEventsApi.md#getmessageevents) | **GET** /v1/message-events | Get message events
*OAuth20Api* | [**createToken**](doc//OAuth20Api.md#createtoken) | **POST** /oauth/token | Create token
*OAuth20Api* | [**getJwks**](doc//OAuth20Api.md#getjwks) | **GET** /.well-known/jwks.json | Get JSON Web Key Set
*OAuth20Api* | [**introspectToken**](doc//OAuth20Api.md#introspecttoken) | **POST** /oauth/introspect | Introspect token
*OAuth20Api* | [**oauthServerMetadata**](doc//OAuth20Api.md#oauthservermetadata) | **GET** /.well-known/oauth-authorization-server | OAuth server metadata
*OAuth20Api* | [**revokeToken**](doc//OAuth20Api.md#revoketoken) | **POST** /oauth/revoke | Revoke token
*ProductsApi* | [**batchProducts**](doc//ProductsApi.md#batchproducts) | **POST** /v1/stores/{store_id}/products/batch | Batch push products
*ProductsApi* | [**getProduct**](doc//ProductsApi.md#getproduct) | **GET** /v1/store-products/{product_id} | Get a product
*ProductsApi* | [**queryProducts**](doc//ProductsApi.md#queryproducts) | **GET** /v1/store-products | Query products
*SenderHealthApi* | [**getSenderHealth**](doc//SenderHealthApi.md#getsenderhealth) | **GET** /v1/sender-health | Get sender health score
*SenderHealthApi* | [**getSenderHealthTrend**](doc//SenderHealthApi.md#getsenderhealthtrend) | **GET** /v1/sender-health/trend | Get sender health trend
*SendingDomainsApi* | [**createSendingDomain**](doc//SendingDomainsApi.md#createsendingdomain) | **POST** /v1/sending-domains | Add a sending domain
*SendingDomainsApi* | [**deleteSendingDomain**](doc//SendingDomainsApi.md#deletesendingdomain) | **DELETE** /v1/sending-domains/{domain_id} | Delete a sending domain
*SendingDomainsApi* | [**getSendingDomain**](doc//SendingDomainsApi.md#getsendingdomain) | **GET** /v1/sending-domains/{domain_id} | Get a sending domain
*SendingDomainsApi* | [**getSendingDomainIdentityScore**](doc//SendingDomainsApi.md#getsendingdomainidentityscore) | **GET** /v1/sending-domains/{domain_id}/identity-score | Get domain identity score
*SendingDomainsApi* | [**getSendingStats**](doc//SendingDomainsApi.md#getsendingstats) | **GET** /v1/sending-stats | Get sending statistics
*SendingDomainsApi* | [**listSendingDomains**](doc//SendingDomainsApi.md#listsendingdomains) | **GET** /v1/sending-domains | List sending domains
*SendingDomainsApi* | [**verifySendingDomain**](doc//SendingDomainsApi.md#verifysendingdomain) | **POST** /v1/sending-domains/{domain_id}/verify | Verify domain DNS records
*ServerTestsApi* | [**getServerTest**](doc//ServerTestsApi.md#getservertest) | **GET** /v1/server-tests/{test_id} | Get server test
*ServerTestsApi* | [**listServerTests**](doc//ServerTestsApi.md#listservertests) | **GET** /v1/server-tests | List server tests
*ServerTestsApi* | [**runServerTest**](doc//ServerTestsApi.md#runservertest) | **POST** /v1/server-tests | Run server test
*SpamChecksApi* | [**getSpamCheck**](doc//SpamChecksApi.md#getspamcheck) | **GET** /v1/spam-checks/{check_id} | Get spam check
*SpamChecksApi* | [**listSpamChecks**](doc//SpamChecksApi.md#listspamchecks) | **GET** /v1/spam-checks | List spam checks
*SpamChecksApi* | [**runSpamCheck**](doc//SpamChecksApi.md#runspamcheck) | **POST** /v1/spam-checks | Run spam check
*StoreConnectionsApi* | [**createStore**](doc//StoreConnectionsApi.md#createstore) | **POST** /v1/stores | Create a store connection
*StoreConnectionsApi* | [**disconnectStore**](doc//StoreConnectionsApi.md#disconnectstore) | **DELETE** /v1/stores/{store_id} | Disconnect a store
*StoreConnectionsApi* | [**getStore**](doc//StoreConnectionsApi.md#getstore) | **GET** /v1/stores/{store_id} | Get a store connection
*StoreConnectionsApi* | [**listStores**](doc//StoreConnectionsApi.md#liststores) | **GET** /v1/stores | List store connections
*StoreConnectionsApi* | [**triggerSync**](doc//StoreConnectionsApi.md#triggersync) | **POST** /v1/stores/{store_id}/sync | Trigger product sync
*SubscriberListsApi* | [**confirmSubscription**](doc//SubscriberListsApi.md#confirmsubscription) | **GET** /v1/confirm/{token} | Confirm subscription
*SubscriberListsApi* | [**createList**](doc//SubscriberListsApi.md#createlist) | **POST** /v1/lists | Create a subscriber list
*SubscriberListsApi* | [**deleteList**](doc//SubscriberListsApi.md#deletelist) | **DELETE** /v1/lists/{list_id} | Delete a subscriber list
*SubscriberListsApi* | [**getList**](doc//SubscriberListsApi.md#getlist) | **GET** /v1/lists/{list_id} | Get a subscriber list
*SubscriberListsApi* | [**getLists**](doc//SubscriberListsApi.md#getlists) | **GET** /v1/lists | List subscriber lists
*SubscriberListsApi* | [**getSubscribers**](doc//SubscriberListsApi.md#getsubscribers) | **GET** /v1/lists/{list_id}/subscribers | List subscribers
*SubscriberListsApi* | [**subscribe**](doc//SubscriberListsApi.md#subscribe) | **POST** /v1/subscribe/{list_id} | Subscribe to a list
*SubscriberListsApi* | [**unsubscribeSubscriber**](doc//SubscriberListsApi.md#unsubscribesubscriber) | **DELETE** /v1/lists/{list_id}/subscribers/{subscriber_id} | Unsubscribe a subscriber
*SuppressionListsApi* | [**addSuppression**](doc//SuppressionListsApi.md#addsuppression) | **POST** /v1/suppression | Add suppression entries
*SuppressionListsApi* | [**checkSuppression**](doc//SuppressionListsApi.md#checksuppression) | **POST** /v1/suppression/check | Check suppression status
*SuppressionListsApi* | [**getSuppressionAuditLog**](doc//SuppressionListsApi.md#getsuppressionauditlog) | **GET** /v1/suppression/audit | Get suppression audit log
*SuppressionListsApi* | [**getSuppressionStats**](doc//SuppressionListsApi.md#getsuppressionstats) | **GET** /v1/suppression/stats | Get suppression statistics
*SuppressionListsApi* | [**listSuppression**](doc//SuppressionListsApi.md#listsuppression) | **GET** /v1/suppression | List suppression entries
*SuppressionListsApi* | [**removeSuppression**](doc//SuppressionListsApi.md#removesuppression) | **DELETE** /v1/suppression | Remove suppression entries
*SystemApi* | [**getTelemetrySummary**](doc//SystemApi.md#gettelemetrysummary) | **GET** /v1/telemetry/summary | Get validation telemetry
*SystemApi* | [**healthCheck**](doc//SystemApi.md#healthcheck) | **GET** /health | Health check
*ValidationPoliciesApi* | [**addPolicyRule**](doc//ValidationPoliciesApi.md#addpolicyrule) | **POST** /v1/policies/{policy_id}/rules | Add rule to policy
*ValidationPoliciesApi* | [**createPolicy**](doc//ValidationPoliciesApi.md#createpolicy) | **POST** /v1/policies | Create policy
*ValidationPoliciesApi* | [**createPolicyFromPreset**](doc//ValidationPoliciesApi.md#createpolicyfrompreset) | **POST** /v1/policies/from-preset | Create policy from preset
*ValidationPoliciesApi* | [**deletePolicy**](doc//ValidationPoliciesApi.md#deletepolicy) | **DELETE** /v1/policies/{policy_id} | Delete policy
*ValidationPoliciesApi* | [**deletePolicyRule**](doc//ValidationPoliciesApi.md#deletepolicyrule) | **DELETE** /v1/policies/{policy_id}/rules/{rule_id} | Delete rule
*ValidationPoliciesApi* | [**getPolicy**](doc//ValidationPoliciesApi.md#getpolicy) | **GET** /v1/policies/{policy_id} | Get policy
*ValidationPoliciesApi* | [**getPolicyPresets**](doc//ValidationPoliciesApi.md#getpolicypresets) | **GET** /v1/policies/presets | Get policy presets
*ValidationPoliciesApi* | [**listPolicies**](doc//ValidationPoliciesApi.md#listpolicies) | **GET** /v1/policies | List policies
*ValidationPoliciesApi* | [**testPolicy**](doc//ValidationPoliciesApi.md#testpolicy) | **POST** /v1/policies/test | Test policy evaluation
*ValidationPoliciesApi* | [**updatePolicy**](doc//ValidationPoliciesApi.md#updatepolicy) | **PUT** /v1/policies/{policy_id} | Update policy

</details>

<details>
<summary>All Models</summary>

 - [AddBlacklistMonitor201Response](doc//AddBlacklistMonitor201Response.md)
 - [AddBlacklistMonitorRequest](doc//AddBlacklistMonitorRequest.md)
 - [AddDmarcDomain201Response](doc//AddDmarcDomain201Response.md)
 - [AddDmarcDomainRequest](doc//AddDmarcDomainRequest.md)
 - [AddPolicyRule201Response](doc//AddPolicyRule201Response.md)
 - [AddSuppressionRequest](doc//AddSuppressionRequest.md)
 - [AddSuppressionRequestEntriesInner](doc//AddSuppressionRequestEntriesInner.md)
 - [AddSuppressionResponse](doc//AddSuppressionResponse.md)
 - [AppendToContactList200Response](doc//AppendToContactList200Response.md)
 - [AppendToContactListRequest](doc//AppendToContactListRequest.md)
 - [BatchDeliverRequest](doc//BatchDeliverRequest.md)
 - [BatchDeliverRequestStructuredData](doc//BatchDeliverRequestStructuredData.md)
 - [BatchDeliverResponse](doc//BatchDeliverResponse.md)
 - [BatchDeliverResponseDelivery](doc//BatchDeliverResponseDelivery.md)
 - [BatchDeliverResponseRejectedInner](doc//BatchDeliverResponseRejectedInner.md)
 - [BatchProductsRequest](doc//BatchProductsRequest.md)
 - [BatchProductsRequestProductsInner](doc//BatchProductsRequestProductsInner.md)
 - [BatchProductsResponse](doc//BatchProductsResponse.md)
 - [BatchProductsResponseErrorsInner](doc//BatchProductsResponseErrorsInner.md)
 - [BlacklistMonitor](doc//BlacklistMonitor.md)
 - [BlacklistMonitorLatestCheck](doc//BlacklistMonitorLatestCheck.md)
 - [BounceAnalysisResponse](doc//BounceAnalysisResponse.md)
 - [BounceAnalysisResponseAnalysis](doc//BounceAnalysisResponseAnalysis.md)
 - [BounceAnalysisResponseAnalysisCategories](doc//BounceAnalysisResponseAnalysisCategories.md)
 - [BounceAnalysisResponseAnalysisTopDomainsInner](doc//BounceAnalysisResponseAnalysisTopDomainsInner.md)
 - [Campaign](doc//Campaign.md)
 - [CampaignResponse](doc//CampaignResponse.md)
 - [CampaignStats](doc//CampaignStats.md)
 - [CampaignVariant](doc//CampaignVariant.md)
 - [CheckSuppressionRequest](doc//CheckSuppressionRequest.md)
 - [ClassifyContent200Response](doc//ClassifyContent200Response.md)
 - [ClassifyContent200ResponseContentCheck](doc//ClassifyContent200ResponseContentCheck.md)
 - [ClassifyContentRequest](doc//ClassifyContentRequest.md)
 - [ConfirmSubscription200Response](doc//ConfirmSubscription200Response.md)
 - [ContactList](doc//ContactList.md)
 - [CreateBounceAnalysisRequest](doc//CreateBounceAnalysisRequest.md)
 - [CreateCampaignRequest](doc//CreateCampaignRequest.md)
 - [CreateCampaignVariant201Response](doc//CreateCampaignVariant201Response.md)
 - [CreateContactList201Response](doc//CreateContactList201Response.md)
 - [CreateContactListRequest](doc//CreateContactListRequest.md)
 - [CreateJobFromS3Request](doc//CreateJobFromS3Request.md)
 - [CreateJobRequest](doc//CreateJobRequest.md)
 - [CreateList201Response](doc//CreateList201Response.md)
 - [CreateListRequest](doc//CreateListRequest.md)
 - [CreatePolicyFromPresetRequest](doc//CreatePolicyFromPresetRequest.md)
 - [CreatePolicyRequest](doc//CreatePolicyRequest.md)
 - [CreateSendingDomain201Response](doc//CreateSendingDomain201Response.md)
 - [CreateSendingDomainRequest](doc//CreateSendingDomainRequest.md)
 - [CreateStore201Response](doc//CreateStore201Response.md)
 - [CreateStoreRequest](doc//CreateStoreRequest.md)
 - [CreateToken200Response](doc//CreateToken200Response.md)
 - [CreateVariantRequest](doc//CreateVariantRequest.md)
 - [CrossReferenceBounces200Response](doc//CrossReferenceBounces200Response.md)
 - [CrossReferenceBounces200ResponseCrossReference](doc//CrossReferenceBounces200ResponseCrossReference.md)
 - [CrossReferenceBounces200ResponseCrossReferenceEntriesInner](doc//CrossReferenceBounces200ResponseCrossReferenceEntriesInner.md)
 - [DeleteJob200Response](doc//DeleteJob200Response.md)
 - [DeletePolicy200Response](doc//DeletePolicy200Response.md)
 - [DeletePolicyRule200Response](doc//DeletePolicyRule200Response.md)
 - [DeliverRequest](doc//DeliverRequest.md)
 - [DeliverRequestOptions](doc//DeliverRequestOptions.md)
 - [DeliverRequestStructuredData](doc//DeliverRequestStructuredData.md)
 - [DeliverRequestToInner](doc//DeliverRequestToInner.md)
 - [DeliverResponse](doc//DeliverResponse.md)
 - [DeliverResponseDelivery](doc//DeliverResponseDelivery.md)
 - [DisconnectStore200Response](doc//DisconnectStore200Response.md)
 - [DmarcDomain](doc//DmarcDomain.md)
 - [ErrorResponse](doc//ErrorResponse.md)
 - [GetBlacklistHistory200Response](doc//GetBlacklistHistory200Response.md)
 - [GetBlacklistHistory200ResponseChecksInner](doc//GetBlacklistHistory200ResponseChecksInner.md)
 - [GetBounceRecords200Response](doc//GetBounceRecords200Response.md)
 - [GetBounceRecords200ResponseRecordsInner](doc//GetBounceRecords200ResponseRecordsInner.md)
 - [GetCampaignABResults200Response](doc//GetCampaignABResults200Response.md)
 - [GetCampaignABResults200ResponseVariantsInner](doc//GetCampaignABResults200ResponseVariantsInner.md)
 - [GetCampaignABResults200ResponseWinner](doc//GetCampaignABResults200ResponseWinner.md)
 - [GetCampaignAttribution200Response](doc//GetCampaignAttribution200Response.md)
 - [GetCampaignAttribution200ResponseAttribution](doc//GetCampaignAttribution200ResponseAttribution.md)
 - [GetCampaignAttribution200ResponseAttributionFirstTouch](doc//GetCampaignAttribution200ResponseAttributionFirstTouch.md)
 - [GetCampaignDeliveryConfidence200Response](doc//GetCampaignDeliveryConfidence200Response.md)
 - [GetCampaignDeliveryConfidence200ResponseFactors](doc//GetCampaignDeliveryConfidence200ResponseFactors.md)
 - [GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth](doc//GetCampaignDeliveryConfidence200ResponseFactorsDomainAuth.md)
 - [GetCampaignDeliveryConfidence200ResponseFactorsListQuality](doc//GetCampaignDeliveryConfidence200ResponseFactorsListQuality.md)
 - [GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation](doc//GetCampaignDeliveryConfidence200ResponseFactorsSenderReputation.md)
 - [GetCampaignFunnel200Response](doc//GetCampaignFunnel200Response.md)
 - [GetCampaignFunnel200ResponseFunnel](doc//GetCampaignFunnel200ResponseFunnel.md)
 - [GetCampaignFunnel200ResponseRates](doc//GetCampaignFunnel200ResponseRates.md)
 - [GetCampaignProviderIntelligence200Response](doc//GetCampaignProviderIntelligence200Response.md)
 - [GetCampaignProviderIntelligence200ResponseProvidersInner](doc//GetCampaignProviderIntelligence200ResponseProvidersInner.md)
 - [GetDmarcDomain200Response](doc//GetDmarcDomain200Response.md)
 - [GetDmarcDomain200ResponseDomain](doc//GetDmarcDomain200ResponseDomain.md)
 - [GetDmarcDomain200ResponseDomainAllOfSummary](doc//GetDmarcDomain200ResponseDomainAllOfSummary.md)
 - [GetDmarcRecommendation200Response](doc//GetDmarcRecommendation200Response.md)
 - [GetDmarcRecommendation200ResponseRecommendation](doc//GetDmarcRecommendation200ResponseRecommendation.md)
 - [GetDmarcSources200Response](doc//GetDmarcSources200Response.md)
 - [GetDmarcSources200ResponseSourcesInner](doc//GetDmarcSources200ResponseSourcesInner.md)
 - [GetDmarcTrend200Response](doc//GetDmarcTrend200Response.md)
 - [GetDmarcTrend200ResponseTrendInner](doc//GetDmarcTrend200ResponseTrendInner.md)
 - [GetInactiveContactsReport200Response](doc//GetInactiveContactsReport200Response.md)
 - [GetInactiveContactsReport200ResponseByListInner](doc//GetInactiveContactsReport200ResponseByListInner.md)
 - [GetLists200Response](doc//GetLists200Response.md)
 - [GetMessageEvents200Response](doc//GetMessageEvents200Response.md)
 - [GetMessageEvents200ResponseClicksInner](doc//GetMessageEvents200ResponseClicksInner.md)
 - [GetMessageEvents200ResponseEventsInner](doc//GetMessageEvents200ResponseEventsInner.md)
 - [GetMessageEvents200ResponseSummary](doc//GetMessageEvents200ResponseSummary.md)
 - [GetPresignedUploadRequest](doc//GetPresignedUploadRequest.md)
 - [GetProduct200Response](doc//GetProduct200Response.md)
 - [GetSenderHealth200Response](doc//GetSenderHealth200Response.md)
 - [GetSenderHealth200ResponseComponents](doc//GetSenderHealth200ResponseComponents.md)
 - [GetSenderHealth200ResponseComponentsDeliveryRate](doc//GetSenderHealth200ResponseComponentsDeliveryRate.md)
 - [GetSenderHealth200ResponseVolume](doc//GetSenderHealth200ResponseVolume.md)
 - [GetSenderHealthTrend200Response](doc//GetSenderHealthTrend200Response.md)
 - [GetSenderHealthTrend200ResponseDataPointsInner](doc//GetSenderHealthTrend200ResponseDataPointsInner.md)
 - [GetSendingDomainIdentityScore200Response](doc//GetSendingDomainIdentityScore200Response.md)
 - [GetSendingStats200Response](doc//GetSendingStats200Response.md)
 - [GetSendingStats200ResponseStats](doc//GetSendingStats200ResponseStats.md)
 - [GetSubscribers200Response](doc//GetSubscribers200Response.md)
 - [HealthCheck200Response](doc//HealthCheck200Response.md)
 - [IdentityScoreCheck](doc//IdentityScoreCheck.md)
 - [IntrospectToken200Response](doc//IntrospectToken200Response.md)
 - [Job](doc//Job.md)
 - [JobArtifacts](doc//JobArtifacts.md)
 - [JobListResponse](doc//JobListResponse.md)
 - [JobResponse](doc//JobResponse.md)
 - [JobSummary](doc//JobSummary.md)
 - [JwksResponse](doc//JwksResponse.md)
 - [JwksResponseKeysInner](doc//JwksResponseKeysInner.md)
 - [ListBlacklistMonitors200Response](doc//ListBlacklistMonitors200Response.md)
 - [ListCampaigns200Response](doc//ListCampaigns200Response.md)
 - [ListContactLists200Response](doc//ListContactLists200Response.md)
 - [ListDmarcDomains200Response](doc//ListDmarcDomains200Response.md)
 - [ListSendingDomains200Response](doc//ListSendingDomains200Response.md)
 - [ListServerTests200Response](doc//ListServerTests200Response.md)
 - [ListSpamChecks200Response](doc//ListSpamChecks200Response.md)
 - [ListStores200Response](doc//ListStores200Response.md)
 - [McpCapabilities](doc//McpCapabilities.md)
 - [McpCapabilitiesPillarsInner](doc//McpCapabilitiesPillarsInner.md)
 - [McpCapabilitiesPillarsInnerToolsInner](doc//McpCapabilitiesPillarsInnerToolsInner.md)
 - [OAuthServerMetadata](doc//OAuthServerMetadata.md)
 - [Pagination](doc//Pagination.md)
 - [Policy](doc//Policy.md)
 - [PolicyListResponse](doc//PolicyListResponse.md)
 - [PolicyListResponseLimits](doc//PolicyListResponseLimits.md)
 - [PolicyPresetsResponse](doc//PolicyPresetsResponse.md)
 - [PolicyPresetsResponsePresetsInner](doc//PolicyPresetsResponsePresetsInner.md)
 - [PolicyResponse](doc//PolicyResponse.md)
 - [PolicyRule](doc//PolicyRule.md)
 - [PolicyRuleAction](doc//PolicyRuleAction.md)
 - [PolicyTestResponse](doc//PolicyTestResponse.md)
 - [PresignedUploadResponse](doc//PresignedUploadResponse.md)
 - [PresignedUploadResponseUpload](doc//PresignedUploadResponseUpload.md)
 - [ProductFacets](doc//ProductFacets.md)
 - [ProductFacetsCategoriesInner](doc//ProductFacetsCategoriesInner.md)
 - [ProductFacetsPriceRangesInner](doc//ProductFacetsPriceRangesInner.md)
 - [ProductFacetsStoresInner](doc//ProductFacetsStoresInner.md)
 - [QueryContactList200Response](doc//QueryContactList200Response.md)
 - [QueryContactList200ResponseEmailsInner](doc//QueryContactList200ResponseEmailsInner.md)
 - [QueryContactListRequest](doc//QueryContactListRequest.md)
 - [QueryContactListRequestFiltersInner](doc//QueryContactListRequestFiltersInner.md)
 - [QueryProducts200Response](doc//QueryProducts200Response.md)
 - [RemoveSuppression200Response](doc//RemoveSuppression200Response.md)
 - [RemoveSuppressionRequest](doc//RemoveSuppressionRequest.md)
 - [ResultsResponse](doc//ResultsResponse.md)
 - [RunBlacklistCheck200Response](doc//RunBlacklistCheck200Response.md)
 - [RunBlacklistCheck200ResponseCheck](doc//RunBlacklistCheck200ResponseCheck.md)
 - [RunServerTest201Response](doc//RunServerTest201Response.md)
 - [RunServerTestRequest](doc//RunServerTestRequest.md)
 - [RunSpamCheck201Response](doc//RunSpamCheck201Response.md)
 - [RunSpamCheckRequest](doc//RunSpamCheckRequest.md)
 - [ScheduleCampaignRequest](doc//ScheduleCampaignRequest.md)
 - [SendingDomain](doc//SendingDomain.md)
 - [SendingDomainDnsRecords](doc//SendingDomainDnsRecords.md)
 - [SendingDomainDnsRecordsNs](doc//SendingDomainDnsRecordsNs.md)
 - [SendingDomainIdentityScore](doc//SendingDomainIdentityScore.md)
 - [SendingDomainIdentityScoreBreakdown](doc//SendingDomainIdentityScoreBreakdown.md)
 - [ServerTest](doc//ServerTest.md)
 - [ServerTestDnsChecks](doc//ServerTestDnsChecks.md)
 - [ServerTestMxRecordsInner](doc//ServerTestMxRecordsInner.md)
 - [ServerTestSmtpCheck](doc//ServerTestSmtpCheck.md)
 - [SpamCheck](doc//SpamCheck.md)
 - [SpamCheckChecks](doc//SpamCheckChecks.md)
 - [StoreConnection](doc//StoreConnection.md)
 - [StoreProduct](doc//StoreProduct.md)
 - [SubscribeRequest](doc//SubscribeRequest.md)
 - [Subscriber](doc//Subscriber.md)
 - [SubscriberList](doc//SubscriberList.md)
 - [SuppressionAuditResponse](doc//SuppressionAuditResponse.md)
 - [SuppressionAuditResponseEntriesInner](doc//SuppressionAuditResponseEntriesInner.md)
 - [SuppressionCheckResponse](doc//SuppressionCheckResponse.md)
 - [SuppressionEntry](doc//SuppressionEntry.md)
 - [SuppressionListResponse](doc//SuppressionListResponse.md)
 - [SuppressionStatsResponse](doc//SuppressionStatsResponse.md)
 - [SuppressionStatsResponseByType](doc//SuppressionStatsResponseByType.md)
 - [SyncResponse](doc//SyncResponse.md)
 - [TelemetrySummary](doc//TelemetrySummary.md)
 - [TelemetrySummaryRates](doc//TelemetrySummaryRates.md)
 - [TelemetrySummaryTopDomainsInner](doc//TelemetrySummaryTopDomainsInner.md)
 - [TelemetrySummaryTopReasonsInner](doc//TelemetrySummaryTopReasonsInner.md)
 - [TelemetrySummaryTotals](doc//TelemetrySummaryTotals.md)
 - [TestPolicyRequest](doc//TestPolicyRequest.md)
 - [TestPolicyRequestTestResult](doc//TestPolicyRequestTestResult.md)
 - [TrackEventRequest](doc//TrackEventRequest.md)
 - [TrackEventResponse](doc//TrackEventResponse.md)
 - [UnsubscribeSubscriber200Response](doc//UnsubscribeSubscriber200Response.md)
 - [UpdatePolicyRequest](doc//UpdatePolicyRequest.md)
 - [ValidateBatch200Response](doc//ValidateBatch200Response.md)
 - [ValidateBatch200ResponseSummary](doc//ValidateBatch200ResponseSummary.md)
 - [ValidateBatchRequest](doc//ValidateBatchRequest.md)
 - [ValidateRequest](doc//ValidateRequest.md)
 - [ValidationResponse](doc//ValidationResponse.md)
 - [ValidationResponsePolicyApplied](doc//ValidationResponsePolicyApplied.md)
 - [ValidationResponseSuppressionMatch](doc//ValidationResponseSuppressionMatch.md)
 - [ValidationResult](doc//ValidationResult.md)
 - [ValidationResultSuppression](doc//ValidationResultSuppression.md)
 - [WebhookEvent](doc//WebhookEvent.md)

</details>

## Other SDKs

| Language | Package | Source |
|----------|---------|--------|
| [Python](https://mailodds.com/sdks) | [PyPI](https://pypi.org/project/mailodds/) | [GitHub](https://github.com/mailodds/python-sdk) |
| [TypeScript](https://mailodds.com/sdks) | [npm](https://www.npmjs.com/package/@mailodds/sdk) | [GitHub](https://github.com/mailodds/typescript-sdk) |
| [PHP](https://mailodds.com/sdks) | [Packagist](https://packagist.org/packages/mailodds/mailodds-php) | [GitHub](https://github.com/mailodds/php-sdk) |
| [Java](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/java-sdk) | [GitHub](https://github.com/mailodds/java-sdk) |
| [Go](https://mailodds.com/sdks) | [pkg.go.dev](https://pkg.go.dev/github.com/mailodds/go-sdk) | [GitHub](https://github.com/mailodds/go-sdk) |
| [C# / .NET](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/csharp-sdk) | [GitHub](https://github.com/mailodds/csharp-sdk) |
| [Ruby](https://mailodds.com/sdks) | [RubyGems](https://rubygems.org/gems/mailodds) | [GitHub](https://github.com/mailodds/ruby-sdk) |
| [Kotlin](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/kotlin-sdk) | [GitHub](https://github.com/mailodds/kotlin-sdk) |
| [Rust](https://mailodds.com/sdks) | [crates.io](https://crates.io/crates/mailodds) | [GitHub](https://github.com/mailodds/rust-sdk) |
| [Swift](https://mailodds.com/sdks) | [GitHub](https://github.com/mailodds/swift-sdk) | [GitHub](https://github.com/mailodds/swift-sdk) |
| **[Dart / Flutter](https://mailodds.com/sdks)** | **[pub.dev](https://pub.dev/packages/mailodds)** | **[GitHub](https://github.com/mailodds/dart-sdk)** |

## Resources

- [Documentation](https://mailodds.com/docs)
- [Developer Quickstart](https://mailodds.com/developers)
- [All SDKs](https://mailodds.com/sdks)
- [Blog](https://mailodds.com/blog)
- [Pricing](https://mailodds.com/pricing)

## License

MIT
