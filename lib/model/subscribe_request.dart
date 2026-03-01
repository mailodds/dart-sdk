//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscribeRequest {
  /// Returns a new [SubscribeRequest] instance.
  SubscribeRequest({
    required this.email,
    this.name,
    this.metadata,
    this.pageUrl,
    this.formId,
  });

  /// Subscriber email address
  String email;

  /// Subscriber name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Custom metadata key-value pairs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  /// URL of the page where the subscription form was submitted (for consent proof)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pageUrl;

  /// Identifier of the form used to subscribe (for consent proof)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscribeRequest &&
    other.email == email &&
    other.name == name &&
    other.metadata == metadata &&
    other.pageUrl == pageUrl &&
    other.formId == formId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (pageUrl == null ? 0 : pageUrl!.hashCode) +
    (formId == null ? 0 : formId!.hashCode);

  @override
  String toString() => 'SubscribeRequest[email=$email, name=$name, metadata=$metadata, pageUrl=$pageUrl, formId=$formId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.pageUrl != null) {
      json[r'page_url'] = this.pageUrl;
    } else {
      json[r'page_url'] = null;
    }
    if (this.formId != null) {
      json[r'form_id'] = this.formId;
    } else {
      json[r'form_id'] = null;
    }
    return json;
  }

  /// Returns a new [SubscribeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscribeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscribeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscribeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscribeRequest(
        email: mapValueOfType<String>(json, r'email')!,
        name: mapValueOfType<String>(json, r'name'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        pageUrl: mapValueOfType<String>(json, r'page_url'),
        formId: mapValueOfType<String>(json, r'form_id'),
      );
    }
    return null;
  }

  static List<SubscribeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscribeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscribeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscribeRequest> mapFromJson(dynamic json) {
    final map = <String, SubscribeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscribeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscribeRequest-objects as value to a dart map
  static Map<String, List<SubscribeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscribeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscribeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
  };
}

