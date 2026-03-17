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
    this.status,
    this.flag,
    this.reason,
    this.priority,
    this.suggestions = const [],
    this.durationMs,
  });

  /// Overall content status
  ClassifyContent200ResponseContentCheckStatusEnum? status;

  /// Whether the content is flagged
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? flag;

  /// Human-readable reason for the status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Priority level (1=lowest, 5=highest)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  /// Improvement suggestions
  List<String> suggestions;

  /// Classification duration in milliseconds
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassifyContent200ResponseContentCheck &&
    other.status == status &&
    other.flag == flag &&
    other.reason == reason &&
    other.priority == priority &&
    _deepEquality.equals(other.suggestions, suggestions) &&
    other.durationMs == durationMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status == null ? 0 : status!.hashCode) +
    (flag == null ? 0 : flag!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (suggestions.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode);

  @override
  String toString() => 'ClassifyContent200ResponseContentCheck[status=$status, flag=$flag, reason=$reason, priority=$priority, suggestions=$suggestions, durationMs=$durationMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.flag != null) {
      json[r'flag'] = this.flag;
    } else {
      json[r'flag'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
      json[r'suggestions'] = this.suggestions;
    if (this.durationMs != null) {
      json[r'duration_ms'] = this.durationMs;
    } else {
      json[r'duration_ms'] = null;
    }
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
        status: ClassifyContent200ResponseContentCheckStatusEnum.fromJson(json[r'status']),
        flag: mapValueOfType<bool>(json, r'flag'),
        reason: mapValueOfType<String>(json, r'reason'),
        priority: mapValueOfType<int>(json, r'priority'),
        suggestions: json[r'suggestions'] is Iterable
            ? (json[r'suggestions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        durationMs: mapValueOfType<int>(json, r'duration_ms'),
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

/// Overall content status
class ClassifyContent200ResponseContentCheckStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ClassifyContent200ResponseContentCheckStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const clean = ClassifyContent200ResponseContentCheckStatusEnum._(r'clean');
  static const warning = ClassifyContent200ResponseContentCheckStatusEnum._(r'warning');
  static const risky = ClassifyContent200ResponseContentCheckStatusEnum._(r'risky');

  /// List of all possible values in this [enum][ClassifyContent200ResponseContentCheckStatusEnum].
  static const values = <ClassifyContent200ResponseContentCheckStatusEnum>[
    clean,
    warning,
    risky,
  ];

  static ClassifyContent200ResponseContentCheckStatusEnum? fromJson(dynamic value) => ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer().decode(value);

  static List<ClassifyContent200ResponseContentCheckStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassifyContent200ResponseContentCheckStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassifyContent200ResponseContentCheckStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClassifyContent200ResponseContentCheckStatusEnum] to String,
/// and [decode] dynamic data back to [ClassifyContent200ResponseContentCheckStatusEnum].
class ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer {
  factory ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer() => _instance ??= const ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer._();

  const ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer._();

  String encode(ClassifyContent200ResponseContentCheckStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClassifyContent200ResponseContentCheckStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClassifyContent200ResponseContentCheckStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'clean': return ClassifyContent200ResponseContentCheckStatusEnum.clean;
        case r'warning': return ClassifyContent200ResponseContentCheckStatusEnum.warning;
        case r'risky': return ClassifyContent200ResponseContentCheckStatusEnum.risky;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer] instance.
  static ClassifyContent200ResponseContentCheckStatusEnumTypeTransformer? _instance;
}


