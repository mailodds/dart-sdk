//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchDeliverRequest {
  /// Returns a new [BatchDeliverRequest] instance.
  BatchDeliverRequest({
    this.to = const [],
    required this.from,
    required this.subject,
    this.html,
    this.text,
    required this.domainId,
    this.replyTo,
    this.headers,
    this.tags = const [],
    this.campaignType,
    this.structuredData,
    this.options,
  });

  /// List of recipient email addresses (max 100)
  List<String> to;

  String from;

  String subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  String domainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? headers;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? campaignType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BatchDeliverRequestStructuredData? structuredData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchDeliverRequest &&
    _deepEquality.equals(other.to, to) &&
    other.from == from &&
    other.subject == subject &&
    other.html == html &&
    other.text == text &&
    other.domainId == domainId &&
    other.replyTo == replyTo &&
    other.headers == headers &&
    _deepEquality.equals(other.tags, tags) &&
    other.campaignType == campaignType &&
    other.structuredData == structuredData &&
    other.options == options;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (from.hashCode) +
    (subject.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (domainId.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (headers == null ? 0 : headers!.hashCode) +
    (tags.hashCode) +
    (campaignType == null ? 0 : campaignType!.hashCode) +
    (structuredData == null ? 0 : structuredData!.hashCode) +
    (options == null ? 0 : options!.hashCode);

  @override
  String toString() => 'BatchDeliverRequest[to=$to, from=$from, subject=$subject, html=$html, text=$text, domainId=$domainId, replyTo=$replyTo, headers=$headers, tags=$tags, campaignType=$campaignType, structuredData=$structuredData, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'from'] = this.from;
      json[r'subject'] = this.subject;
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'domain_id'] = this.domainId;
    if (this.replyTo != null) {
      json[r'reply_to'] = this.replyTo;
    } else {
      json[r'reply_to'] = null;
    }
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.campaignType != null) {
      json[r'campaign_type'] = this.campaignType;
    } else {
      json[r'campaign_type'] = null;
    }
    if (this.structuredData != null) {
      json[r'structured_data'] = this.structuredData;
    } else {
      json[r'structured_data'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    return json;
  }

  /// Returns a new [BatchDeliverRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchDeliverRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchDeliverRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchDeliverRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchDeliverRequest(
        to: json[r'to'] is Iterable
            ? (json[r'to'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        from: mapValueOfType<String>(json, r'from')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        html: mapValueOfType<String>(json, r'html'),
        text: mapValueOfType<String>(json, r'text'),
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        replyTo: mapValueOfType<String>(json, r'reply_to'),
        headers: mapValueOfType<Object>(json, r'headers'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        campaignType: mapValueOfType<String>(json, r'campaign_type'),
        structuredData: BatchDeliverRequestStructuredData.fromJson(json[r'structured_data']),
        options: mapValueOfType<Object>(json, r'options'),
      );
    }
    return null;
  }

  static List<BatchDeliverRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchDeliverRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchDeliverRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchDeliverRequest> mapFromJson(dynamic json) {
    final map = <String, BatchDeliverRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchDeliverRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchDeliverRequest-objects as value to a dart map
  static Map<String, List<BatchDeliverRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchDeliverRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchDeliverRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
    'from',
    'subject',
    'domain_id',
  };
}

