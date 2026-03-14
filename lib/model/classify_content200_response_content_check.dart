//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClassifyContent200ResponseContentCheck {
  /// Returns a new [ClassifyContent200ResponseContentCheck] instance.
  ClassifyContent200ResponseContentCheck({
    this.score,
    this.verdict,
    this.categories = const [],
    this.suggestions = const [],
  });

  /// Overall content quality score (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  /// Overall verdict
  ClassifyContent200ResponseContentCheckVerdictEnum? verdict;

  List<ClassifyContent200ResponseContentCheckCategoriesInner> categories;

  /// Improvement suggestions
  List<String> suggestions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassifyContent200ResponseContentCheck &&
    other.score == score &&
    other.verdict == verdict &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.suggestions, suggestions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (verdict == null ? 0 : verdict!.hashCode) +
    (categories.hashCode) +
    (suggestions.hashCode);

  @override
  String toString() => 'ClassifyContent200ResponseContentCheck[score=$score, verdict=$verdict, categories=$categories, suggestions=$suggestions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'categories'] = this.categories;
      json[r'suggestions'] = this.suggestions;
    return json;
  }

  /// Returns a new [ClassifyContent200ResponseContentCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassifyContent200ResponseContentCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClassifyContent200ResponseContentCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClassifyContent200ResponseContentCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClassifyContent200ResponseContentCheck(
        score: num.parse('${json[r'score']}'),
        verdict: ClassifyContent200ResponseContentCheckVerdictEnum.fromJson(json[r'verdict']),
        categories: ClassifyContent200ResponseContentCheckCategoriesInner.listFromJson(json[r'categories']),
        suggestions: json[r'suggestions'] is Iterable
            ? (json[r'suggestions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ClassifyContent200ResponseContentCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyContent200ResponseContentCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyContent200ResponseContentCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClassifyContent200ResponseContentCheck> mapFromJson(dynamic json) {
    final map = <String, ClassifyContent200ResponseContentCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassifyContent200ResponseContentCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClassifyContent200ResponseContentCheck-objects as value to a dart map
  static Map<String, List<ClassifyContent200ResponseContentCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClassifyContent200ResponseContentCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClassifyContent200ResponseContentCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Overall verdict
class ClassifyContent200ResponseContentCheckVerdictEnum {
  /// Instantiate a new enum with the provided [value].
  const ClassifyContent200ResponseContentCheckVerdictEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const clean = ClassifyContent200ResponseContentCheckVerdictEnum._(r'clean');
  static const warning = ClassifyContent200ResponseContentCheckVerdictEnum._(r'warning');
  static const risky = ClassifyContent200ResponseContentCheckVerdictEnum._(r'risky');

  /// List of all possible values in this [enum][ClassifyContent200ResponseContentCheckVerdictEnum].
  static const values = <ClassifyContent200ResponseContentCheckVerdictEnum>[
    clean,
    warning,
    risky,
  ];

  static ClassifyContent200ResponseContentCheckVerdictEnum? fromJson(dynamic value) => ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer().decode(value);

  static List<ClassifyContent200ResponseContentCheckVerdictEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyContent200ResponseContentCheckVerdictEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyContent200ResponseContentCheckVerdictEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClassifyContent200ResponseContentCheckVerdictEnum] to String,
/// and [decode] dynamic data back to [ClassifyContent200ResponseContentCheckVerdictEnum].
class ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer {
  factory ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer() => _instance ??= const ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer._();

  const ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer._();

  String encode(ClassifyContent200ResponseContentCheckVerdictEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClassifyContent200ResponseContentCheckVerdictEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClassifyContent200ResponseContentCheckVerdictEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'clean': return ClassifyContent200ResponseContentCheckVerdictEnum.clean;
        case r'warning': return ClassifyContent200ResponseContentCheckVerdictEnum.warning;
        case r'risky': return ClassifyContent200ResponseContentCheckVerdictEnum.risky;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer] instance.
  static ClassifyContent200ResponseContentCheckVerdictEnumTypeTransformer? _instance;
}


