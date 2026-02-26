//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingDomainIdentityScore {
  /// Returns a new [SendingDomainIdentityScore] instance.
  SendingDomainIdentityScore({
    this.overallScore,
    this.checks,
  });

  /// Composite score 0-100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? overallScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScoreChecks? checks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomainIdentityScore &&
    other.overallScore == overallScore &&
    other.checks == checks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (overallScore == null ? 0 : overallScore!.hashCode) +
    (checks == null ? 0 : checks!.hashCode);

  @override
  String toString() => 'SendingDomainIdentityScore[overallScore=$overallScore, checks=$checks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.overallScore != null) {
      json[r'overall_score'] = this.overallScore;
    } else {
      json[r'overall_score'] = null;
    }
    if (this.checks != null) {
      json[r'checks'] = this.checks;
    } else {
      json[r'checks'] = null;
    }
    return json;
  }

  /// Returns a new [SendingDomainIdentityScore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomainIdentityScore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomainIdentityScore[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomainIdentityScore[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomainIdentityScore(
        overallScore: num.parse('${json[r'overall_score']}'),
        checks: SendingDomainIdentityScoreChecks.fromJson(json[r'checks']),
      );
    }
    return null;
  }

  static List<SendingDomainIdentityScore> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainIdentityScore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainIdentityScore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomainIdentityScore> mapFromJson(dynamic json) {
    final map = <String, SendingDomainIdentityScore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomainIdentityScore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomainIdentityScore-objects as value to a dart map
  static Map<String, List<SendingDomainIdentityScore>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomainIdentityScore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomainIdentityScore.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

