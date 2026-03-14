//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceAnalysisResponseAnalysisTopDomainsInner {
  /// Returns a new [BounceAnalysisResponseAnalysisTopDomainsInner] instance.
  BounceAnalysisResponseAnalysisTopDomainsInner({
    this.domain,
    this.count,
    this.hard,
    this.soft,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? soft;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceAnalysisResponseAnalysisTopDomainsInner &&
    other.domain == domain &&
    other.count == count &&
    other.hard == hard &&
    other.soft == soft;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (hard == null ? 0 : hard!.hashCode) +
    (soft == null ? 0 : soft!.hashCode);

  @override
  String toString() => 'BounceAnalysisResponseAnalysisTopDomainsInner[domain=$domain, count=$count, hard=$hard, soft=$soft]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.hard != null) {
      json[r'hard'] = this.hard;
    } else {
      json[r'hard'] = null;
    }
    if (this.soft != null) {
      json[r'soft'] = this.soft;
    } else {
      json[r'soft'] = null;
    }
    return json;
  }

  /// Returns a new [BounceAnalysisResponseAnalysisTopDomainsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BounceAnalysisResponseAnalysisTopDomainsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BounceAnalysisResponseAnalysisTopDomainsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BounceAnalysisResponseAnalysisTopDomainsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BounceAnalysisResponseAnalysisTopDomainsInner(
        domain: mapValueOfType<String>(json, r'domain'),
        count: mapValueOfType<int>(json, r'count'),
        hard: mapValueOfType<int>(json, r'hard'),
        soft: mapValueOfType<int>(json, r'soft'),
      );
    }
    return null;
  }

  static List<BounceAnalysisResponseAnalysisTopDomainsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BounceAnalysisResponseAnalysisTopDomainsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BounceAnalysisResponseAnalysisTopDomainsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BounceAnalysisResponseAnalysisTopDomainsInner> mapFromJson(dynamic json) {
    final map = <String, BounceAnalysisResponseAnalysisTopDomainsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BounceAnalysisResponseAnalysisTopDomainsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BounceAnalysisResponseAnalysisTopDomainsInner-objects as value to a dart map
  static Map<String, List<BounceAnalysisResponseAnalysisTopDomainsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BounceAnalysisResponseAnalysisTopDomainsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BounceAnalysisResponseAnalysisTopDomainsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

