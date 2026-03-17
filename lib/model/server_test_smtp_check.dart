//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ServerTestSmtpCheck {
  /// Returns a new [ServerTestSmtpCheck] instance.
  ServerTestSmtpCheck({
    this.connectable,
    this.banner,
    this.starttls,
    this.responseTimeMs,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connectable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? banner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? starttls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? responseTimeMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerTestSmtpCheck &&
    other.connectable == connectable &&
    other.banner == banner &&
    other.starttls == starttls &&
    other.responseTimeMs == responseTimeMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectable == null ? 0 : connectable!.hashCode) +
    (banner == null ? 0 : banner!.hashCode) +
    (starttls == null ? 0 : starttls!.hashCode) +
    (responseTimeMs == null ? 0 : responseTimeMs!.hashCode);

  @override
  String toString() => 'ServerTestSmtpCheck[connectable=$connectable, banner=$banner, starttls=$starttls, responseTimeMs=$responseTimeMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connectable != null) {
      json[r'connectable'] = this.connectable;
    } else {
      json[r'connectable'] = null;
    }
    if (this.banner != null) {
      json[r'banner'] = this.banner;
    } else {
      json[r'banner'] = null;
    }
    if (this.starttls != null) {
      json[r'starttls'] = this.starttls;
    } else {
      json[r'starttls'] = null;
    }
    if (this.responseTimeMs != null) {
      json[r'response_time_ms'] = this.responseTimeMs;
    } else {
      json[r'response_time_ms'] = null;
    }
    return json;
  }

  /// Returns a new [ServerTestSmtpCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerTestSmtpCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServerTestSmtpCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServerTestSmtpCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServerTestSmtpCheck(
        connectable: mapValueOfType<bool>(json, r'connectable'),
        banner: mapValueOfType<String>(json, r'banner'),
        starttls: mapValueOfType<bool>(json, r'starttls'),
        responseTimeMs: mapValueOfType<int>(json, r'response_time_ms'),
      );
    }
    return null;
  }

  static List<ServerTestSmtpCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerTestSmtpCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerTestSmtpCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerTestSmtpCheck> mapFromJson(dynamic json) {
    final map = <String, ServerTestSmtpCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerTestSmtpCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerTestSmtpCheck-objects as value to a dart map
  static Map<String, List<ServerTestSmtpCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerTestSmtpCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerTestSmtpCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

