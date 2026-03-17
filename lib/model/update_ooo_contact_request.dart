//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateOooContactRequest {
  /// Returns a new [UpdateOooContactRequest] instance.
  UpdateOooContactRequest({
    this.isActive,
    this.oooType = 'out_of_office',
    this.durationDays = 7,
  });

  /// Set to false to clear OOO status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  String oooType;

  /// Minimum value: 1
  /// Maximum value: 365
  int durationDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateOooContactRequest &&
    other.isActive == isActive &&
    other.oooType == oooType &&
    other.durationDays == durationDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isActive == null ? 0 : isActive!.hashCode) +
    (oooType.hashCode) +
    (durationDays.hashCode);

  @override
  String toString() => 'UpdateOooContactRequest[isActive=$isActive, oooType=$oooType, durationDays=$durationDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
      json[r'ooo_type'] = this.oooType;
      json[r'duration_days'] = this.durationDays;
    return json;
  }

  /// Returns a new [UpdateOooContactRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateOooContactRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateOooContactRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateOooContactRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateOooContactRequest(
        isActive: mapValueOfType<bool>(json, r'is_active'),
        oooType: mapValueOfType<String>(json, r'ooo_type') ?? 'out_of_office',
        durationDays: mapValueOfType<int>(json, r'duration_days') ?? 7,
      );
    }
    return null;
  }

  static List<UpdateOooContactRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateOooContactRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateOooContactRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateOooContactRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateOooContactRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateOooContactRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateOooContactRequest-objects as value to a dart map
  static Map<String, List<UpdateOooContactRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateOooContactRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateOooContactRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

