//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:mailodds/src/date_serializer.dart';
import 'package:mailodds/src/model/date.dart';

import 'package:mailodds/src/model/add_policy_rule201_response.dart';
import 'package:mailodds/src/model/add_suppression_request.dart';
import 'package:mailodds/src/model/add_suppression_request_entries_inner.dart';
import 'package:mailodds/src/model/add_suppression_response.dart';
import 'package:mailodds/src/model/batch_deliver_request.dart';
import 'package:mailodds/src/model/batch_deliver_request_structured_data.dart';
import 'package:mailodds/src/model/batch_deliver_response.dart';
import 'package:mailodds/src/model/batch_deliver_response_delivery.dart';
import 'package:mailodds/src/model/batch_deliver_response_rejected_inner.dart';
import 'package:mailodds/src/model/check_suppression_request.dart';
import 'package:mailodds/src/model/confirm_subscription200_response.dart';
import 'package:mailodds/src/model/create_job_from_s3_request.dart';
import 'package:mailodds/src/model/create_job_request.dart';
import 'package:mailodds/src/model/create_list201_response.dart';
import 'package:mailodds/src/model/create_list_request.dart';
import 'package:mailodds/src/model/create_policy_from_preset_request.dart';
import 'package:mailodds/src/model/create_policy_request.dart';
import 'package:mailodds/src/model/create_sending_domain201_response.dart';
import 'package:mailodds/src/model/create_sending_domain_request.dart';
import 'package:mailodds/src/model/delete_job200_response.dart';
import 'package:mailodds/src/model/delete_policy200_response.dart';
import 'package:mailodds/src/model/delete_policy_rule200_response.dart';
import 'package:mailodds/src/model/deliver_request.dart';
import 'package:mailodds/src/model/deliver_request_options.dart';
import 'package:mailodds/src/model/deliver_request_structured_data.dart';
import 'package:mailodds/src/model/deliver_request_to_inner.dart';
import 'package:mailodds/src/model/deliver_response.dart';
import 'package:mailodds/src/model/deliver_response_delivery.dart';
import 'package:mailodds/src/model/error_response.dart';
import 'package:mailodds/src/model/get_lists200_response.dart';
import 'package:mailodds/src/model/get_presigned_upload_request.dart';
import 'package:mailodds/src/model/get_sending_domain_identity_score200_response.dart';
import 'package:mailodds/src/model/get_sending_stats200_response.dart';
import 'package:mailodds/src/model/get_sending_stats200_response_stats.dart';
import 'package:mailodds/src/model/get_subscribers200_response.dart';
import 'package:mailodds/src/model/health_check200_response.dart';
import 'package:mailodds/src/model/job.dart';
import 'package:mailodds/src/model/job_list_response.dart';
import 'package:mailodds/src/model/job_response.dart';
import 'package:mailodds/src/model/job_summary.dart';
import 'package:mailodds/src/model/list_sending_domains200_response.dart';
import 'package:mailodds/src/model/pagination.dart';
import 'package:mailodds/src/model/policy.dart';
import 'package:mailodds/src/model/policy_list_response.dart';
import 'package:mailodds/src/model/policy_list_response_limits.dart';
import 'package:mailodds/src/model/policy_presets_response.dart';
import 'package:mailodds/src/model/policy_presets_response_presets_inner.dart';
import 'package:mailodds/src/model/policy_response.dart';
import 'package:mailodds/src/model/policy_rule.dart';
import 'package:mailodds/src/model/policy_rule_action.dart';
import 'package:mailodds/src/model/policy_test_response.dart';
import 'package:mailodds/src/model/presigned_upload_response.dart';
import 'package:mailodds/src/model/presigned_upload_response_upload.dart';
import 'package:mailodds/src/model/remove_suppression200_response.dart';
import 'package:mailodds/src/model/remove_suppression_request.dart';
import 'package:mailodds/src/model/results_response.dart';
import 'package:mailodds/src/model/sending_domain.dart';
import 'package:mailodds/src/model/sending_domain_dns_records.dart';
import 'package:mailodds/src/model/sending_domain_dns_records_ns.dart';
import 'package:mailodds/src/model/sending_domain_identity_score.dart';
import 'package:mailodds/src/model/sending_domain_identity_score_checks.dart';
import 'package:mailodds/src/model/sending_domain_identity_score_checks_dkim.dart';
import 'package:mailodds/src/model/sending_domain_identity_score_checks_dmarc.dart';
import 'package:mailodds/src/model/subscribe_request.dart';
import 'package:mailodds/src/model/subscriber.dart';
import 'package:mailodds/src/model/subscriber_list.dart';
import 'package:mailodds/src/model/suppression_check_response.dart';
import 'package:mailodds/src/model/suppression_entry.dart';
import 'package:mailodds/src/model/suppression_list_response.dart';
import 'package:mailodds/src/model/suppression_stats_response.dart';
import 'package:mailodds/src/model/suppression_stats_response_by_type.dart';
import 'package:mailodds/src/model/telemetry_summary.dart';
import 'package:mailodds/src/model/telemetry_summary_rates.dart';
import 'package:mailodds/src/model/telemetry_summary_top_domains_inner.dart';
import 'package:mailodds/src/model/telemetry_summary_top_reasons_inner.dart';
import 'package:mailodds/src/model/telemetry_summary_totals.dart';
import 'package:mailodds/src/model/test_policy_request.dart';
import 'package:mailodds/src/model/test_policy_request_test_result.dart';
import 'package:mailodds/src/model/unsubscribe_subscriber200_response.dart';
import 'package:mailodds/src/model/update_policy_request.dart';
import 'package:mailodds/src/model/validate_batch200_response.dart';
import 'package:mailodds/src/model/validate_batch200_response_summary.dart';
import 'package:mailodds/src/model/validate_batch_request.dart';
import 'package:mailodds/src/model/validate_request.dart';
import 'package:mailodds/src/model/validation_response.dart';
import 'package:mailodds/src/model/validation_response_policy_applied.dart';
import 'package:mailodds/src/model/validation_response_suppression_match.dart';
import 'package:mailodds/src/model/validation_result.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddPolicyRule201Response,
  AddSuppressionRequest,
  AddSuppressionRequestEntriesInner,
  AddSuppressionResponse,
  BatchDeliverRequest,
  BatchDeliverRequestStructuredData,
  BatchDeliverResponse,
  BatchDeliverResponseDelivery,
  BatchDeliverResponseRejectedInner,
  CheckSuppressionRequest,
  ConfirmSubscription200Response,
  CreateJobFromS3Request,
  CreateJobRequest,
  CreateList201Response,
  CreateListRequest,
  CreatePolicyFromPresetRequest,
  CreatePolicyRequest,
  CreateSendingDomain201Response,
  CreateSendingDomainRequest,
  DeleteJob200Response,
  DeletePolicy200Response,
  DeletePolicyRule200Response,
  DeliverRequest,
  DeliverRequestOptions,
  DeliverRequestStructuredData,
  DeliverRequestToInner,
  DeliverResponse,
  DeliverResponseDelivery,
  ErrorResponse,
  GetLists200Response,
  GetPresignedUploadRequest,
  GetSendingDomainIdentityScore200Response,
  GetSendingStats200Response,
  GetSendingStats200ResponseStats,
  GetSubscribers200Response,
  HealthCheck200Response,
  Job,
  JobListResponse,
  JobResponse,
  JobSummary,
  ListSendingDomains200Response,
  Pagination,
  Policy,
  PolicyListResponse,
  PolicyListResponseLimits,
  PolicyPresetsResponse,
  PolicyPresetsResponsePresetsInner,
  PolicyResponse,
  PolicyRule,
  PolicyRuleAction,
  PolicyTestResponse,
  PresignedUploadResponse,
  PresignedUploadResponseUpload,
  RemoveSuppression200Response,
  RemoveSuppressionRequest,
  ResultsResponse,
  SendingDomain,
  SendingDomainDnsRecords,
  SendingDomainDnsRecordsNs,
  SendingDomainIdentityScore,
  SendingDomainIdentityScoreChecks,
  SendingDomainIdentityScoreChecksDkim,
  SendingDomainIdentityScoreChecksDmarc,
  SubscribeRequest,
  Subscriber,
  SubscriberList,
  SuppressionCheckResponse,
  SuppressionEntry,
  SuppressionListResponse,
  SuppressionStatsResponse,
  SuppressionStatsResponseByType,
  TelemetrySummary,
  TelemetrySummaryRates,
  TelemetrySummaryTopDomainsInner,
  TelemetrySummaryTopReasonsInner,
  TelemetrySummaryTotals,
  TestPolicyRequest,
  TestPolicyRequestTestResult,
  UnsubscribeSubscriber200Response,
  UpdatePolicyRequest,
  ValidateBatch200Response,
  ValidateBatch200ResponseSummary,
  ValidateBatchRequest,
  ValidateRequest,
  ValidationResponse,
  ValidationResponsePolicyApplied,
  ValidationResponseSuppressionMatch,
  ValidationResult,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
