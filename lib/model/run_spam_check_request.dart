//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class RunSpamCheckRequest {
  /// Returns a new [RunSpamCheckRequest] instance.
  RunSpamCheckRequest({
    required this.fromDomain,
    this.links = const [],
    this.subjectPreview,
    this.clientScores,
  });

  /// Sending domain to check
  String fromDomain;

  /// URLs included in the email
  List<String> links;

  /// Email subject line to analyze
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectPreview;

  /// Client-side spam scores to include in analysis
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? clientScores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunSpamCheckRequest &&
    other.fromDomain == fromDomain &&
    _deepEquality.equals(other.links, links) &&
    other.subjectPreview == subjectPreview &&
    other.clientScores == clientScores;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromDomain.hashCode) +
    (links.hashCode) +
    (subjectPreview == null ? 0 : subjectPreview!.hashCode) +
    (clientScores == null ? 0 : clientScores!.hashCode);

  @override
  String toString() => 'RunSpamCheckRequest[fromDomain=$fromDomain, links=$links, subjectPreview=$subjectPreview, clientScores=$clientScores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from_domain'] = this.fromDomain;
      json[r'links'] = this.links;
    if (this.subjectPreview != null) {
      json[r'subject_preview'] = this.subjectPreview;
    } else {
      json[r'subject_preview'] = null;
    }
    if (this.clientScores != null) {
      json[r'client_scores'] = this.clientScores;
    } else {
      json[r'client_scores'] = null;
    }
    return json;
  }

  /// Returns a new [RunSpamCheckRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunSpamCheckRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunSpamCheckRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunSpamCheckRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunSpamCheckRequest(
        fromDomain: mapValueOfType<String>(json, r'from_domain')!,
        links: json[r'links'] is Iterable
            ? (json[r'links'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        subjectPreview: mapValueOfType<String>(json, r'subject_preview'),
        clientScores: mapValueOfType<Object>(json, r'client_scores'),
      );
    }
    return null;
  }

  static List<RunSpamCheckRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunSpamCheckRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunSpamCheckRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunSpamCheckRequest> mapFromJson(dynamic json) {
    final map = <String, RunSpamCheckRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunSpamCheckRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunSpamCheckRequest-objects as value to a dart map
  static Map<String, List<RunSpamCheckRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunSpamCheckRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunSpamCheckRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from_domain',
  };
}

