//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class McpCapabilities {
  /// Returns a new [McpCapabilities] instance.
  McpCapabilities({
    this.version,
    this.serverName,
    this.toolCount,
    this.pillars = const [],
    this.supportedTransports = const [],
    this.authRequired,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverName;

  /// Total number of available tools
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? toolCount;

  List<McpCapabilitiesPillarsInner> pillars;

  List<String> supportedTransports;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? authRequired;

  @override
  bool operator ==(Object other) => identical(this, other) || other is McpCapabilities &&
    other.version == version &&
    other.serverName == serverName &&
    other.toolCount == toolCount &&
    _deepEquality.equals(other.pillars, pillars) &&
    _deepEquality.equals(other.supportedTransports, supportedTransports) &&
    other.authRequired == authRequired;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version == null ? 0 : version!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode) +
    (toolCount == null ? 0 : toolCount!.hashCode) +
    (pillars.hashCode) +
    (supportedTransports.hashCode) +
    (authRequired == null ? 0 : authRequired!.hashCode);

  @override
  String toString() => 'McpCapabilities[version=$version, serverName=$serverName, toolCount=$toolCount, pillars=$pillars, supportedTransports=$supportedTransports, authRequired=$authRequired]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.serverName != null) {
      json[r'server_name'] = this.serverName;
    } else {
      json[r'server_name'] = null;
    }
    if (this.toolCount != null) {
      json[r'tool_count'] = this.toolCount;
    } else {
      json[r'tool_count'] = null;
    }
      json[r'pillars'] = this.pillars;
      json[r'supported_transports'] = this.supportedTransports;
    if (this.authRequired != null) {
      json[r'auth_required'] = this.authRequired;
    } else {
      json[r'auth_required'] = null;
    }
    return json;
  }

  /// Returns a new [McpCapabilities] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static McpCapabilities? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "McpCapabilities[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "McpCapabilities[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return McpCapabilities(
        version: mapValueOfType<String>(json, r'version'),
        serverName: mapValueOfType<String>(json, r'server_name'),
        toolCount: mapValueOfType<int>(json, r'tool_count'),
        pillars: McpCapabilitiesPillarsInner.listFromJson(json[r'pillars']),
        supportedTransports: json[r'supported_transports'] is Iterable
            ? (json[r'supported_transports'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        authRequired: mapValueOfType<bool>(json, r'auth_required'),
      );
    }
    return null;
  }

  static List<McpCapabilities> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <McpCapabilities>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = McpCapabilities.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, McpCapabilities> mapFromJson(dynamic json) {
    final map = <String, McpCapabilities>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = McpCapabilities.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of McpCapabilities-objects as value to a dart map
  static Map<String, List<McpCapabilities>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<McpCapabilities>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = McpCapabilities.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

