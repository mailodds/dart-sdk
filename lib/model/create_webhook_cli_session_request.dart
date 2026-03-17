//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateWebhookCliSessionRequest {
  /// Returns a new [CreateWebhookCliSessionRequest] instance.
  CreateWebhookCliSessionRequest({
    this.forwardUrl,
  });

  /// Local URL where webhooks will be forwarded
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? forwardUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWebhookCliSessionRequest &&
    other.forwardUrl == forwardUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (forwardUrl == null ? 0 : forwardUrl!.hashCode);

  @override
  String toString() => 'CreateWebhookCliSessionRequest[forwardUrl=$forwardUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.forwardUrl != null) {
      json[r'forward_url'] = this.forwardUrl;
    } else {
      json[r'forward_url'] = null;
    }
    return json;
  }

  /// Returns a new [CreateWebhookCliSessionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWebhookCliSessionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateWebhookCliSessionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateWebhookCliSessionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateWebhookCliSessionRequest(
        forwardUrl: mapValueOfType<String>(json, r'forward_url'),
      );
    }
    return null;
  }

  static List<CreateWebhookCliSessionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWebhookCliSessionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWebhookCliSessionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWebhookCliSessionRequest> mapFromJson(dynamic json) {
    final map = <String, CreateWebhookCliSessionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWebhookCliSessionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWebhookCliSessionRequest-objects as value to a dart map
  static Map<String, List<CreateWebhookCliSessionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWebhookCliSessionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWebhookCliSessionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

