//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateCampaignRequest {
  /// Returns a new [CreateCampaignRequest] instance.
  CreateCampaignRequest({
    required this.name,
    required this.listId,
    required this.domainId,
    required this.fromEmail,
    this.fromName,
    this.replyTo,
    this.tags = const [],
  });

  /// Campaign name
  String name;

  /// Target subscriber list UUID
  String listId;

  /// Sending domain UUID
  String domainId;

  /// Sender email address (must match the sending domain)
  String fromEmail;

  /// Sender display name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromName;

  /// Reply-to address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyTo;

  /// Tags for categorization
  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCampaignRequest &&
    other.name == name &&
    other.listId == listId &&
    other.domainId == domainId &&
    other.fromEmail == fromEmail &&
    other.fromName == fromName &&
    other.replyTo == replyTo &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (listId.hashCode) +
    (domainId.hashCode) +
    (fromEmail.hashCode) +
    (fromName == null ? 0 : fromName!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'CreateCampaignRequest[name=$name, listId=$listId, domainId=$domainId, fromEmail=$fromEmail, fromName=$fromName, replyTo=$replyTo, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'list_id'] = this.listId;
      json[r'domain_id'] = this.domainId;
      json[r'from_email'] = this.fromEmail;
    if (this.fromName != null) {
      json[r'from_name'] = this.fromName;
    } else {
      json[r'from_name'] = null;
    }
    if (this.replyTo != null) {
      json[r'reply_to'] = this.replyTo;
    } else {
      json[r'reply_to'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [CreateCampaignRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCampaignRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCampaignRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCampaignRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCampaignRequest(
        name: mapValueOfType<String>(json, r'name')!,
        listId: mapValueOfType<String>(json, r'list_id')!,
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        fromEmail: mapValueOfType<String>(json, r'from_email')!,
        fromName: mapValueOfType<String>(json, r'from_name'),
        replyTo: mapValueOfType<String>(json, r'reply_to'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateCampaignRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCampaignRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCampaignRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCampaignRequest> mapFromJson(dynamic json) {
    final map = <String, CreateCampaignRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCampaignRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCampaignRequest-objects as value to a dart map
  static Map<String, List<CreateCampaignRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCampaignRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCampaignRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'list_id',
    'domain_id',
    'from_email',
  };
}

