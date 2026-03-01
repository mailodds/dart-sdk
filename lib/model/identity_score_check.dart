//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentityScoreCheck {
  /// Returns a new [IdentityScoreCheck] instance.
  IdentityScoreCheck({
    required this.status,
    required this.points,
    required this.maxPoints,
    this.verifiedAt,
  });

  /// Check status (e.g. verified, pending, missing)
  String status;

  /// Points earned for this check
  int points;

  /// Maximum points available for this check
  int maxPoints;

  /// When the check was last verified
  DateTime? verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityScoreCheck &&
    other.status == status &&
    other.points == points &&
    other.maxPoints == maxPoints &&
    other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (points.hashCode) +
    (maxPoints.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode);

  @override
  String toString() => 'IdentityScoreCheck[status=$status, points=$points, maxPoints=$maxPoints, verifiedAt=$verifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'points'] = this.points;
      json[r'max_points'] = this.maxPoints;
    if (this.verifiedAt != null) {
      json[r'verified_at'] = this.verifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'verified_at'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityScoreCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityScoreCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityScoreCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityScoreCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityScoreCheck(
        status: mapValueOfType<String>(json, r'status')!,
        points: mapValueOfType<int>(json, r'points')!,
        maxPoints: mapValueOfType<int>(json, r'max_points')!,
        verifiedAt: mapDateTime(json, r'verified_at', r''),
      );
    }
    return null;
  }

  static List<IdentityScoreCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityScoreCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityScoreCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityScoreCheck> mapFromJson(dynamic json) {
    final map = <String, IdentityScoreCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityScoreCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityScoreCheck-objects as value to a dart map
  static Map<String, List<IdentityScoreCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityScoreCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdentityScoreCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'points',
    'max_points',
  };
}

