//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateBounceAnalysisRequest {
  /// Returns a new [CreateBounceAnalysisRequest] instance.
  CreateBounceAnalysisRequest({
    required this.text,
    this.name,
  });

  /// Bounce log text to analyze. Identifies patterns, categorizes bounce types, and provides remediation recommendations.
  String text;

  /// Optional name for this bounce analysis
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateBounceAnalysisRequest &&
    other.text == text &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'CreateBounceAnalysisRequest[text=$text, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
    if (this.name != null) {
      json[r'name'] = this.name;
    }
    return json;
  }

  /// Returns a new [CreateBounceAnalysisRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateBounceAnalysisRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateBounceAnalysisRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateBounceAnalysisRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateBounceAnalysisRequest(
        text: mapValueOfType<String>(json, r'text')!,
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<CreateBounceAnalysisRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBounceAnalysisRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBounceAnalysisRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateBounceAnalysisRequest> mapFromJson(dynamic json) {
    final map = <String, CreateBounceAnalysisRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateBounceAnalysisRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateBounceAnalysisRequest-objects as value to a dart map
  static Map<String, List<CreateBounceAnalysisRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateBounceAnalysisRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateBounceAnalysisRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
  };
}
