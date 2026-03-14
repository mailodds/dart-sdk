//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClassifyContentRequest {
  /// Returns a new [ClassifyContentRequest] instance.
  ClassifyContentRequest({
    this.subject,
    this.htmlBody,
    this.content,
  });

  /// Email subject line
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// HTML email body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlBody;

  /// Raw text content (alternative to subject+html_body)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassifyContentRequest &&
    other.subject == subject &&
    other.htmlBody == htmlBody &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (htmlBody == null ? 0 : htmlBody!.hashCode) +
    (content == null ? 0 : content!.hashCode);

  @override
  String toString() => 'ClassifyContentRequest[subject=$subject, htmlBody=$htmlBody, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.htmlBody != null) {
      json[r'html_body'] = this.htmlBody;
    } else {
      json[r'html_body'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    return json;
  }

  /// Returns a new [ClassifyContentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassifyContentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClassifyContentRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClassifyContentRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClassifyContentRequest(
        subject: mapValueOfType<String>(json, r'subject'),
        htmlBody: mapValueOfType<String>(json, r'html_body'),
        content: mapValueOfType<String>(json, r'content'),
      );
    }
    return null;
  }

  static List<ClassifyContentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyContentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyContentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClassifyContentRequest> mapFromJson(dynamic json) {
    final map = <String, ClassifyContentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassifyContentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClassifyContentRequest-objects as value to a dart map
  static Map<String, List<ClassifyContentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClassifyContentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClassifyContentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

