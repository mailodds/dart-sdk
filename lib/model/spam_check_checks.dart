//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class SpamCheckChecks {
  /// Returns a new [SpamCheckChecks] instance.
  SpamCheckChecks({
    this.domainReputation,
    this.linkSafety,
    this.subjectAnalysis,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? domainReputation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? linkSafety;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? subjectAnalysis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpamCheckChecks &&
    other.domainReputation == domainReputation &&
    other.linkSafety == linkSafety &&
    other.subjectAnalysis == subjectAnalysis;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainReputation == null ? 0 : domainReputation!.hashCode) +
    (linkSafety == null ? 0 : linkSafety!.hashCode) +
    (subjectAnalysis == null ? 0 : subjectAnalysis!.hashCode);

  @override
  String toString() => 'SpamCheckChecks[domainReputation=$domainReputation, linkSafety=$linkSafety, subjectAnalysis=$subjectAnalysis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domainReputation != null) {
      json[r'domain_reputation'] = this.domainReputation;
    } else {
      json[r'domain_reputation'] = null;
    }
    if (this.linkSafety != null) {
      json[r'link_safety'] = this.linkSafety;
    } else {
      json[r'link_safety'] = null;
    }
    if (this.subjectAnalysis != null) {
      json[r'subject_analysis'] = this.subjectAnalysis;
    } else {
      json[r'subject_analysis'] = null;
    }
    return json;
  }

  /// Returns a new [SpamCheckChecks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpamCheckChecks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpamCheckChecks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpamCheckChecks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpamCheckChecks(
        domainReputation: mapValueOfType<Object>(json, r'domain_reputation'),
        linkSafety: mapValueOfType<Object>(json, r'link_safety'),
        subjectAnalysis: mapValueOfType<Object>(json, r'subject_analysis'),
      );
    }
    return null;
  }

  static List<SpamCheckChecks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpamCheckChecks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpamCheckChecks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpamCheckChecks> mapFromJson(dynamic json) {
    final map = <String, SpamCheckChecks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpamCheckChecks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpamCheckChecks-objects as value to a dart map
  static Map<String, List<SpamCheckChecks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpamCheckChecks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpamCheckChecks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

