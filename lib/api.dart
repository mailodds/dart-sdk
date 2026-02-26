//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/bulk_validation_api.dart';
part 'api/email_sending_api.dart';
part 'api/email_validation_api.dart';
part 'api/sending_domains_api.dart';
part 'api/subscriber_lists_api.dart';
part 'api/suppression_lists_api.dart';
part 'api/system_api.dart';
part 'api/validation_policies_api.dart';

part 'model/add_policy_rule201_response.dart';
part 'model/add_suppression_request.dart';
part 'model/add_suppression_request_entries_inner.dart';
part 'model/add_suppression_response.dart';
part 'model/batch_deliver_request.dart';
part 'model/batch_deliver_request_structured_data.dart';
part 'model/batch_deliver_response.dart';
part 'model/batch_deliver_response_delivery.dart';
part 'model/batch_deliver_response_rejected_inner.dart';
part 'model/check_suppression_request.dart';
part 'model/confirm_subscription200_response.dart';
part 'model/create_job_from_s3_request.dart';
part 'model/create_job_request.dart';
part 'model/create_list201_response.dart';
part 'model/create_list_request.dart';
part 'model/create_policy_from_preset_request.dart';
part 'model/create_policy_request.dart';
part 'model/create_sending_domain201_response.dart';
part 'model/create_sending_domain_request.dart';
part 'model/delete_job200_response.dart';
part 'model/delete_policy200_response.dart';
part 'model/delete_policy_rule200_response.dart';
part 'model/deliver_request.dart';
part 'model/deliver_request_options.dart';
part 'model/deliver_request_structured_data.dart';
part 'model/deliver_request_to_inner.dart';
part 'model/deliver_response.dart';
part 'model/deliver_response_delivery.dart';
part 'model/error_response.dart';
part 'model/get_lists200_response.dart';
part 'model/get_presigned_upload_request.dart';
part 'model/get_sending_domain_identity_score200_response.dart';
part 'model/get_sending_stats200_response.dart';
part 'model/get_sending_stats200_response_stats.dart';
part 'model/get_subscribers200_response.dart';
part 'model/health_check200_response.dart';
part 'model/job.dart';
part 'model/job_list_response.dart';
part 'model/job_response.dart';
part 'model/job_summary.dart';
part 'model/list_sending_domains200_response.dart';
part 'model/pagination.dart';
part 'model/policy.dart';
part 'model/policy_list_response.dart';
part 'model/policy_list_response_limits.dart';
part 'model/policy_presets_response.dart';
part 'model/policy_presets_response_presets_inner.dart';
part 'model/policy_response.dart';
part 'model/policy_rule.dart';
part 'model/policy_rule_action.dart';
part 'model/policy_test_response.dart';
part 'model/presigned_upload_response.dart';
part 'model/presigned_upload_response_upload.dart';
part 'model/remove_suppression200_response.dart';
part 'model/remove_suppression_request.dart';
part 'model/results_response.dart';
part 'model/sending_domain.dart';
part 'model/sending_domain_dns_records.dart';
part 'model/sending_domain_dns_records_ns.dart';
part 'model/sending_domain_identity_score.dart';
part 'model/sending_domain_identity_score_checks.dart';
part 'model/sending_domain_identity_score_checks_dkim.dart';
part 'model/sending_domain_identity_score_checks_dmarc.dart';
part 'model/subscribe_request.dart';
part 'model/subscriber.dart';
part 'model/subscriber_list.dart';
part 'model/suppression_check_response.dart';
part 'model/suppression_entry.dart';
part 'model/suppression_list_response.dart';
part 'model/suppression_stats_response.dart';
part 'model/suppression_stats_response_by_type.dart';
part 'model/telemetry_summary.dart';
part 'model/telemetry_summary_rates.dart';
part 'model/telemetry_summary_top_domains_inner.dart';
part 'model/telemetry_summary_top_reasons_inner.dart';
part 'model/telemetry_summary_totals.dart';
part 'model/test_policy_request.dart';
part 'model/test_policy_request_test_result.dart';
part 'model/unsubscribe_subscriber200_response.dart';
part 'model/update_policy_request.dart';
part 'model/validate_batch200_response.dart';
part 'model/validate_batch200_response_summary.dart';
part 'model/validate_batch_request.dart';
part 'model/validate_request.dart';
part 'model/validation_response.dart';
part 'model/validation_response_policy_applied.dart';
part 'model/validation_response_suppression_match.dart';
part 'model/validation_result.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
