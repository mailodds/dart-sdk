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
    required this.score,
    required this.maxScore,
    required this.percentage,
    required this.breakdown,
    required this.grade,
  });

  /// Total points earned across all checks
  int score;

  /// Maximum possible score (100)
  int maxScore;

  /// Score as percentage (same as score since max is 100)
  int percentage;

  SendingDomainIdentityScoreBreakdown breakdown;

  /// Letter grade (A+, A, B, C, D, F)
  SendingDomainIdentityScoreGradeEnum grade;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomainIdentityScore &&
    other.score == score &&
    other.maxScore == maxScore &&
    other.percentage == percentage &&
    other.breakdown == breakdown &&
    other.grade == grade;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score.hashCode) +
    (maxScore.hashCode) +
    (percentage.hashCode) +
    (breakdown.hashCode) +
    (grade.hashCode);

  @override
  String toString() => 'SendingDomainIdentityScore[score=$score, maxScore=$maxScore, percentage=$percentage, breakdown=$breakdown, grade=$grade]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'score'] = this.score;
      json[r'max_score'] = this.maxScore;
      json[r'percentage'] = this.percentage;
      json[r'breakdown'] = this.breakdown;
      json[r'grade'] = this.grade;
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
        score: mapValueOfType<int>(json, r'score')!,
        maxScore: mapValueOfType<int>(json, r'max_score')!,
        percentage: mapValueOfType<int>(json, r'percentage')!,
        breakdown: SendingDomainIdentityScoreBreakdown.fromJson(json[r'breakdown'])!,
        grade: SendingDomainIdentityScoreGradeEnum.fromJson(json[r'grade'])!,
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
    'score',
    'max_score',
    'percentage',
    'breakdown',
    'grade',
  };
}

/// Letter grade (A+, A, B, C, D, F)
class SendingDomainIdentityScoreGradeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingDomainIdentityScoreGradeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aPlus = SendingDomainIdentityScoreGradeEnum._(r'A+');
  static const A = SendingDomainIdentityScoreGradeEnum._(r'A');
  static const B = SendingDomainIdentityScoreGradeEnum._(r'B');
  static const C = SendingDomainIdentityScoreGradeEnum._(r'C');
  static const D = SendingDomainIdentityScoreGradeEnum._(r'D');
  static const F = SendingDomainIdentityScoreGradeEnum._(r'F');

  /// List of all possible values in this [enum][SendingDomainIdentityScoreGradeEnum].
  static const values = <SendingDomainIdentityScoreGradeEnum>[
    aPlus,
    A,
    B,
    C,
    D,
    F,
  ];

  static SendingDomainIdentityScoreGradeEnum? fromJson(dynamic value) => SendingDomainIdentityScoreGradeEnumTypeTransformer().decode(value);

  static List<SendingDomainIdentityScoreGradeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainIdentityScoreGradeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainIdentityScoreGradeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingDomainIdentityScoreGradeEnum] to String,
/// and [decode] dynamic data back to [SendingDomainIdentityScoreGradeEnum].
class SendingDomainIdentityScoreGradeEnumTypeTransformer {
  factory SendingDomainIdentityScoreGradeEnumTypeTransformer() => _instance ??= const SendingDomainIdentityScoreGradeEnumTypeTransformer._();

  const SendingDomainIdentityScoreGradeEnumTypeTransformer._();

  String encode(SendingDomainIdentityScoreGradeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingDomainIdentityScoreGradeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingDomainIdentityScoreGradeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A+': return SendingDomainIdentityScoreGradeEnum.aPlus;
        case r'A': return SendingDomainIdentityScoreGradeEnum.A;
        case r'B': return SendingDomainIdentityScoreGradeEnum.B;
        case r'C': return SendingDomainIdentityScoreGradeEnum.C;
        case r'D': return SendingDomainIdentityScoreGradeEnum.D;
        case r'F': return SendingDomainIdentityScoreGradeEnum.F;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingDomainIdentityScoreGradeEnumTypeTransformer] instance.
  static SendingDomainIdentityScoreGradeEnumTypeTransformer? _instance;
}


