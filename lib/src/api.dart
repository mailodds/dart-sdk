//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:mailodds/src/serializers.dart';
import 'package:mailodds/src/auth/api_key_auth.dart';
import 'package:mailodds/src/auth/basic_auth.dart';
import 'package:mailodds/src/auth/bearer_auth.dart';
import 'package:mailodds/src/auth/oauth.dart';
import 'package:mailodds/src/api/bulk_validation_api.dart';
import 'package:mailodds/src/api/email_sending_api.dart';
import 'package:mailodds/src/api/email_validation_api.dart';
import 'package:mailodds/src/api/sending_domains_api.dart';
import 'package:mailodds/src/api/subscriber_lists_api.dart';
import 'package:mailodds/src/api/suppression_lists_api.dart';
import 'package:mailodds/src/api/system_api.dart';
import 'package:mailodds/src/api/validation_policies_api.dart';

class Mailodds {
  static const String basePath = r'https://api.mailodds.com/v1';

  final Dio dio;
  final Serializers serializers;

  Mailodds({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get BulkValidationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BulkValidationApi getBulkValidationApi() {
    return BulkValidationApi(dio, serializers);
  }

  /// Get EmailSendingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EmailSendingApi getEmailSendingApi() {
    return EmailSendingApi(dio, serializers);
  }

  /// Get EmailValidationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EmailValidationApi getEmailValidationApi() {
    return EmailValidationApi(dio, serializers);
  }

  /// Get SendingDomainsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SendingDomainsApi getSendingDomainsApi() {
    return SendingDomainsApi(dio, serializers);
  }

  /// Get SubscriberListsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SubscriberListsApi getSubscriberListsApi() {
    return SubscriberListsApi(dio, serializers);
  }

  /// Get SuppressionListsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuppressionListsApi getSuppressionListsApi() {
    return SuppressionListsApi(dio, serializers);
  }

  /// Get SystemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SystemApi getSystemApi() {
    return SystemApi(dio, serializers);
  }

  /// Get ValidationPoliciesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ValidationPoliciesApi getValidationPoliciesApi() {
    return ValidationPoliciesApi(dio, serializers);
  }
}
