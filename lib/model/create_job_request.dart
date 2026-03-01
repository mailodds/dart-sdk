//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateJobRequest {
  /// Returns a new [CreateJobRequest] instance.
  CreateJobRequest({
    this.emails = const [],
    this.dedup = false,
    this.metadata,
    this.webhookUrl,
    this.idempotencyKey,
  });

  /// List of emails to validate
  List<String> emails;

  /// Remove duplicate emails
  bool dedup;

  /// Custom metadata for the job
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  /// URL for completion webhook. Payloads are signed with HMAC-SHA256 if a webhook secret is configured (see Webhooks section).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookUrl;

  /// Unique key for idempotent requests
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idempotencyKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateJobRequest &&
    _deepEquality.equals(other.emails, emails) &&
    other.dedup == dedup &&
    other.metadata == metadata &&
    other.webhookUrl == webhookUrl &&
    other.idempotencyKey == idempotencyKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emails.hashCode) +
    (dedup.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (webhookUrl == null ? 0 : webhookUrl!.hashCode) +
    (idempotencyKey == null ? 0 : idempotencyKey!.hashCode);

  @override
  String toString() => 'CreateJobRequest[emails=$emails, dedup=$dedup, metadata=$metadata, webhookUrl=$webhookUrl, idempotencyKey=$idempotencyKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emails'] = this.emails;
      json[r'dedup'] = this.dedup;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.webhookUrl != null) {
      json[r'webhook_url'] = this.webhookUrl;
    } else {
      json[r'webhook_url'] = null;
    }
    if (this.idempotencyKey != null) {
      json[r'idempotency_key'] = this.idempotencyKey;
    } else {
      json[r'idempotency_key'] = null;
    }
    return json;
  }

  /// Returns a new [CreateJobRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateJobRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateJobRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateJobRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateJobRequest(
        emails: json[r'emails'] is Iterable
            ? (json[r'emails'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dedup: mapValueOfType<bool>(json, r'dedup') ?? false,
        metadata: mapValueOfType<Object>(json, r'metadata'),
        webhookUrl: mapValueOfType<String>(json, r'webhook_url'),
        idempotencyKey: mapValueOfType<String>(json, r'idempotency_key'),
      );
    }
    return null;
  }

  static List<CreateJobRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateJobRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateJobRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateJobRequest> mapFromJson(dynamic json) {
    final map = <String, CreateJobRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateJobRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateJobRequest-objects as value to a dart map
  static Map<String, List<CreateJobRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateJobRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateJobRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emails',
  };
}

