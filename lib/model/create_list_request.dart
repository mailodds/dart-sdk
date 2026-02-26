//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateListRequest {
  /// Returns a new [CreateListRequest] instance.
  CreateListRequest({
    required this.name,
    this.description,
    this.confirmationRedirectUrl,
    this.confirmationSubject,
    this.confirmationFromName,
  });

  /// List name (unique per account)
  String name;

  /// Optional list description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// URL to redirect subscribers after confirmation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmationRedirectUrl;

  /// Custom confirmation email subject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmationSubject;

  /// Custom sender name for confirmation emails
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmationFromName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateListRequest &&
    other.name == name &&
    other.description == description &&
    other.confirmationRedirectUrl == confirmationRedirectUrl &&
    other.confirmationSubject == confirmationSubject &&
    other.confirmationFromName == confirmationFromName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (confirmationRedirectUrl == null ? 0 : confirmationRedirectUrl!.hashCode) +
    (confirmationSubject == null ? 0 : confirmationSubject!.hashCode) +
    (confirmationFromName == null ? 0 : confirmationFromName!.hashCode);

  @override
  String toString() => 'CreateListRequest[name=$name, description=$description, confirmationRedirectUrl=$confirmationRedirectUrl, confirmationSubject=$confirmationSubject, confirmationFromName=$confirmationFromName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.confirmationRedirectUrl != null) {
      json[r'confirmation_redirect_url'] = this.confirmationRedirectUrl;
    } else {
      json[r'confirmation_redirect_url'] = null;
    }
    if (this.confirmationSubject != null) {
      json[r'confirmation_subject'] = this.confirmationSubject;
    } else {
      json[r'confirmation_subject'] = null;
    }
    if (this.confirmationFromName != null) {
      json[r'confirmation_from_name'] = this.confirmationFromName;
    } else {
      json[r'confirmation_from_name'] = null;
    }
    return json;
  }

  /// Returns a new [CreateListRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateListRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateListRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateListRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateListRequest(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        confirmationRedirectUrl: mapValueOfType<String>(json, r'confirmation_redirect_url'),
        confirmationSubject: mapValueOfType<String>(json, r'confirmation_subject'),
        confirmationFromName: mapValueOfType<String>(json, r'confirmation_from_name'),
      );
    }
    return null;
  }

  static List<CreateListRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateListRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateListRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateListRequest> mapFromJson(dynamic json) {
    final map = <String, CreateListRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateListRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateListRequest-objects as value to a dart map
  static Map<String, List<CreateListRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateListRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateListRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

