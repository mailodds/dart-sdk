//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetOooStatus200Response {
  /// Returns a new [GetOooStatus200Response] instance.
  GetOooStatus200Response({
    this.email,
    this.isOoo,
    this.detectedAt,
    this.expiresAt,
    this.oooType,
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
  bool? isOoo;

  DateTime? detectedAt;

  DateTime? expiresAt;

  String? oooType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetOooStatus200Response &&
    other.email == email &&
    other.isOoo == isOoo &&
    other.detectedAt == detectedAt &&
    other.expiresAt == expiresAt &&
    other.oooType == oooType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (isOoo == null ? 0 : isOoo!.hashCode) +
    (detectedAt == null ? 0 : detectedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (oooType == null ? 0 : oooType!.hashCode);

  @override
  String toString() => 'GetOooStatus200Response[email=$email, isOoo=$isOoo, detectedAt=$detectedAt, expiresAt=$expiresAt, oooType=$oooType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.isOoo != null) {
      json[r'is_ooo'] = this.isOoo;
    } else {
      json[r'is_ooo'] = null;
    }
    if (this.detectedAt != null) {
      json[r'detected_at'] = this.detectedAt!.toUtc().toIso8601String();
    } else {
      json[r'detected_at'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    if (this.oooType != null) {
      json[r'ooo_type'] = this.oooType;
    } else {
      json[r'ooo_type'] = null;
    }
    return json;
  }

  /// Returns a new [GetOooStatus200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetOooStatus200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetOooStatus200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetOooStatus200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetOooStatus200Response(
        email: mapValueOfType<String>(json, r'email'),
        isOoo: mapValueOfType<bool>(json, r'is_ooo'),
        detectedAt: mapDateTime(json, r'detected_at', r''),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        oooType: mapValueOfType<String>(json, r'ooo_type'),
      );
    }
    return null;
  }

  static List<GetOooStatus200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetOooStatus200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetOooStatus200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetOooStatus200Response> mapFromJson(dynamic json) {
    final map = <String, GetOooStatus200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetOooStatus200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetOooStatus200Response-objects as value to a dart map
  static Map<String, List<GetOooStatus200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetOooStatus200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetOooStatus200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

