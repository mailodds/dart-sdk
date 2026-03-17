//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateWebhookCliSession201Response {
  /// Returns a new [CreateWebhookCliSession201Response] instance.
  CreateWebhookCliSession201Response({
    this.sessionId,
    this.expiresIn,
    this.sseUrl,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sseUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWebhookCliSession201Response &&
    other.sessionId == sessionId &&
    other.expiresIn == expiresIn &&
    other.sseUrl == sseUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (sseUrl == null ? 0 : sseUrl!.hashCode);

  @override
  String toString() => 'CreateWebhookCliSession201Response[sessionId=$sessionId, expiresIn=$expiresIn, sseUrl=$sseUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expires_in'] = this.expiresIn;
    } else {
      json[r'expires_in'] = null;
    }
    if (this.sseUrl != null) {
      json[r'sse_url'] = this.sseUrl;
    } else {
      json[r'sse_url'] = null;
    }
    return json;
  }

  /// Returns a new [CreateWebhookCliSession201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWebhookCliSession201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateWebhookCliSession201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateWebhookCliSession201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateWebhookCliSession201Response(
        sessionId: mapValueOfType<String>(json, r'session_id'),
        expiresIn: mapValueOfType<int>(json, r'expires_in'),
        sseUrl: mapValueOfType<String>(json, r'sse_url'),
      );
    }
    return null;
  }

  static List<CreateWebhookCliSession201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWebhookCliSession201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWebhookCliSession201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWebhookCliSession201Response> mapFromJson(dynamic json) {
    final map = <String, CreateWebhookCliSession201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWebhookCliSession201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWebhookCliSession201Response-objects as value to a dart map
  static Map<String, List<CreateWebhookCliSession201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWebhookCliSession201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWebhookCliSession201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

