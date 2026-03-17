//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class SpamCheck {
  /// Returns a new [SpamCheck] instance.
  SpamCheck({
    this.id,
    this.fromDomain,
    this.score,
    this.verdict,
    this.checks,
    this.createdAt,
  });

  /// Spam check UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromDomain;

  /// Overall spam score (0-10, lower is better)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  /// Overall verdict
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verdict;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SpamCheckChecks? checks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpamCheck &&
    other.id == id &&
    other.fromDomain == fromDomain &&
    other.score == score &&
    other.verdict == verdict &&
    other.checks == checks &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (fromDomain == null ? 0 : fromDomain!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (verdict == null ? 0 : verdict!.hashCode) +
    (checks == null ? 0 : checks!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'SpamCheck[id=$id, fromDomain=$fromDomain, score=$score, verdict=$verdict, checks=$checks, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.fromDomain != null) {
      json[r'from_domain'] = this.fromDomain;
    } else {
      json[r'from_domain'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.verdict != null) {
      json[r'verdict'] = this.verdict;
    } else {
      json[r'verdict'] = null;
    }
    if (this.checks != null) {
      json[r'checks'] = this.checks;
    } else {
      json[r'checks'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [SpamCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpamCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpamCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpamCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpamCheck(
        id: mapValueOfType<String>(json, r'id'),
        fromDomain: mapValueOfType<String>(json, r'from_domain'),
        score: num.parse('${json[r'score']}'),
        verdict: mapValueOfType<String>(json, r'verdict'),
        checks: SpamCheckChecks.fromJson(json[r'checks']),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<SpamCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpamCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpamCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpamCheck> mapFromJson(dynamic json) {
    final map = <String, SpamCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpamCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpamCheck-objects as value to a dart map
  static Map<String, List<SpamCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpamCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpamCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

