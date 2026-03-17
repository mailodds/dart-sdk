//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class McpCapabilitiesPillarsInner {
  /// Returns a new [McpCapabilitiesPillarsInner] instance.
  McpCapabilitiesPillarsInner({
    this.name,
    this.toolCount,
    this.tools = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? toolCount;

  List<McpCapabilitiesPillarsInnerToolsInner> tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is McpCapabilitiesPillarsInner &&
    other.name == name &&
    other.toolCount == toolCount &&
    _deepEquality.equals(other.tools, tools);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (toolCount == null ? 0 : toolCount!.hashCode) +
    (tools.hashCode);

  @override
  String toString() => 'McpCapabilitiesPillarsInner[name=$name, toolCount=$toolCount, tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.toolCount != null) {
      json[r'tool_count'] = this.toolCount;
    } else {
      json[r'tool_count'] = null;
    }
      json[r'tools'] = this.tools;
    return json;
  }

  /// Returns a new [McpCapabilitiesPillarsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static McpCapabilitiesPillarsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "McpCapabilitiesPillarsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "McpCapabilitiesPillarsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return McpCapabilitiesPillarsInner(
        name: mapValueOfType<String>(json, r'name'),
        toolCount: mapValueOfType<int>(json, r'tool_count'),
        tools: McpCapabilitiesPillarsInnerToolsInner.listFromJson(json[r'tools']),
      );
    }
    return null;
  }

  static List<McpCapabilitiesPillarsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <McpCapabilitiesPillarsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = McpCapabilitiesPillarsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, McpCapabilitiesPillarsInner> mapFromJson(dynamic json) {
    final map = <String, McpCapabilitiesPillarsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = McpCapabilitiesPillarsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of McpCapabilitiesPillarsInner-objects as value to a dart map
  static Map<String, List<McpCapabilitiesPillarsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<McpCapabilitiesPillarsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = McpCapabilitiesPillarsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

