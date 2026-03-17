//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateStoreRequest {
  /// Returns a new [UpdateStoreRequest] instance.
  UpdateStoreRequest({
    this.storeName,
    this.syncIntervalSeconds,
    this.settings,
    this.credentials,
  });

  /// Display name for the store
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storeName;

  /// Auto-sync interval in seconds (min 1800)
  ///
  /// Minimum value: 1800
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? syncIntervalSeconds;

  /// Platform-specific settings
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? settings;

  /// Updated store credentials (connection is tested before saving)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? credentials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateStoreRequest &&
    other.storeName == storeName &&
    other.syncIntervalSeconds == syncIntervalSeconds &&
    other.settings == settings &&
    other.credentials == credentials;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storeName == null ? 0 : storeName!.hashCode) +
    (syncIntervalSeconds == null ? 0 : syncIntervalSeconds!.hashCode) +
    (settings == null ? 0 : settings!.hashCode) +
    (credentials == null ? 0 : credentials!.hashCode);

  @override
  String toString() => 'UpdateStoreRequest[storeName=$storeName, syncIntervalSeconds=$syncIntervalSeconds, settings=$settings, credentials=$credentials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.storeName != null) {
      json[r'store_name'] = this.storeName;
    } else {
      json[r'store_name'] = null;
    }
    if (this.syncIntervalSeconds != null) {
      json[r'sync_interval_seconds'] = this.syncIntervalSeconds;
    } else {
      json[r'sync_interval_seconds'] = null;
    }
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    if (this.credentials != null) {
      json[r'credentials'] = this.credentials;
    } else {
      json[r'credentials'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateStoreRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateStoreRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateStoreRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateStoreRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateStoreRequest(
        storeName: mapValueOfType<String>(json, r'store_name'),
        syncIntervalSeconds: mapValueOfType<int>(json, r'sync_interval_seconds'),
        settings: mapValueOfType<Object>(json, r'settings'),
        credentials: mapValueOfType<Object>(json, r'credentials'),
      );
    }
    return null;
  }

  static List<UpdateStoreRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateStoreRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateStoreRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateStoreRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateStoreRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateStoreRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateStoreRequest-objects as value to a dart map
  static Map<String, List<UpdateStoreRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateStoreRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateStoreRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

