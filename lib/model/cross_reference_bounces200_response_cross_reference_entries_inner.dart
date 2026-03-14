//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CrossReferenceBounces200ResponseCrossReferenceEntriesInner {
  /// Returns a new [CrossReferenceBounces200ResponseCrossReferenceEntriesInner] instance.
  CrossReferenceBounces200ResponseCrossReferenceEntriesInner({
    this.email,
    this.bounceType,
    this.bouncedAt,
    this.validationStatus,
    this.validatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bounceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? bouncedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? validationStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? validatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CrossReferenceBounces200ResponseCrossReferenceEntriesInner &&
    other.email == email &&
    other.bounceType == bounceType &&
    other.bouncedAt == bouncedAt &&
    other.validationStatus == validationStatus &&
    other.validatedAt == validatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (bounceType == null ? 0 : bounceType!.hashCode) +
    (bouncedAt == null ? 0 : bouncedAt!.hashCode) +
    (validationStatus == null ? 0 : validationStatus!.hashCode) +
    (validatedAt == null ? 0 : validatedAt!.hashCode);

  @override
  String toString() => 'CrossReferenceBounces200ResponseCrossReferenceEntriesInner[email=$email, bounceType=$bounceType, bouncedAt=$bouncedAt, validationStatus=$validationStatus, validatedAt=$validatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.bounceType != null) {
      json[r'bounce_type'] = this.bounceType;
    } else {
      json[r'bounce_type'] = null;
    }
    if (this.bouncedAt != null) {
      json[r'bounced_at'] = this.bouncedAt!.toUtc().toIso8601String();
    } else {
      json[r'bounced_at'] = null;
    }
    if (this.validationStatus != null) {
      json[r'validation_status'] = this.validationStatus;
    } else {
      json[r'validation_status'] = null;
    }
    if (this.validatedAt != null) {
      json[r'validated_at'] = this.validatedAt!.toUtc().toIso8601String();
    } else {
      json[r'validated_at'] = null;
    }
    return json;
  }

  /// Returns a new [CrossReferenceBounces200ResponseCrossReferenceEntriesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CrossReferenceBounces200ResponseCrossReferenceEntriesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CrossReferenceBounces200ResponseCrossReferenceEntriesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CrossReferenceBounces200ResponseCrossReferenceEntriesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CrossReferenceBounces200ResponseCrossReferenceEntriesInner(
        email: mapValueOfType<String>(json, r'email'),
        bounceType: mapValueOfType<String>(json, r'bounce_type'),
        bouncedAt: mapDateTime(json, r'bounced_at', r''),
        validationStatus: mapValueOfType<String>(json, r'validation_status'),
        validatedAt: mapDateTime(json, r'validated_at', r''),
      );
    }
    return null;
  }

  static List<CrossReferenceBounces200ResponseCrossReferenceEntriesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CrossReferenceBounces200ResponseCrossReferenceEntriesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CrossReferenceBounces200ResponseCrossReferenceEntriesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CrossReferenceBounces200ResponseCrossReferenceEntriesInner> mapFromJson(dynamic json) {
    final map = <String, CrossReferenceBounces200ResponseCrossReferenceEntriesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CrossReferenceBounces200ResponseCrossReferenceEntriesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CrossReferenceBounces200ResponseCrossReferenceEntriesInner-objects as value to a dart map
  static Map<String, List<CrossReferenceBounces200ResponseCrossReferenceEntriesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CrossReferenceBounces200ResponseCrossReferenceEntriesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CrossReferenceBounces200ResponseCrossReferenceEntriesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

