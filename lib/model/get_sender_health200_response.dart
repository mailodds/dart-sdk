//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSenderHealth200Response {
  /// Returns a new [GetSenderHealth200Response] instance.
  GetSenderHealth200Response({
    this.schemaVersion,
    this.requestId,
    this.score,
    this.grade,
    this.period,
    this.components,
    this.volume,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schemaVersion;

  /// Unique request identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  /// Overall sender health score (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  /// Letter grade based on score
  GetSenderHealth200ResponseGradeEnum? grade;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSenderHealth200ResponseComponents? components;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSenderHealth200ResponseVolume? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSenderHealth200Response &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.score == score &&
    other.grade == grade &&
    other.period == period &&
    other.components == components &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (grade == null ? 0 : grade!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (components == null ? 0 : components!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'GetSenderHealth200Response[schemaVersion=$schemaVersion, requestId=$requestId, score=$score, grade=$grade, period=$period, components=$components, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.schemaVersion != null) {
      json[r'schema_version'] = this.schemaVersion;
    } else {
      json[r'schema_version'] = null;
    }
    if (this.requestId != null) {
      json[r'request_id'] = this.requestId;
    } else {
      json[r'request_id'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.grade != null) {
      json[r'grade'] = this.grade;
    } else {
      json[r'grade'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.components != null) {
      json[r'components'] = this.components;
    } else {
      json[r'components'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [GetSenderHealth200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSenderHealth200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSenderHealth200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSenderHealth200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSenderHealth200Response(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        score: mapValueOfType<int>(json, r'score'),
        grade: GetSenderHealth200ResponseGradeEnum.fromJson(json[r'grade']),
        period: mapValueOfType<String>(json, r'period'),
        components: GetSenderHealth200ResponseComponents.fromJson(json[r'components']),
        volume: GetSenderHealth200ResponseVolume.fromJson(json[r'volume']),
      );
    }
    return null;
  }

  static List<GetSenderHealth200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSenderHealth200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSenderHealth200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSenderHealth200Response> mapFromJson(dynamic json) {
    final map = <String, GetSenderHealth200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSenderHealth200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSenderHealth200Response-objects as value to a dart map
  static Map<String, List<GetSenderHealth200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSenderHealth200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSenderHealth200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Letter grade based on score
class GetSenderHealth200ResponseGradeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetSenderHealth200ResponseGradeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aPlus = GetSenderHealth200ResponseGradeEnum._(r'A+');
  static const A = GetSenderHealth200ResponseGradeEnum._(r'A');
  static const B = GetSenderHealth200ResponseGradeEnum._(r'B');
  static const C = GetSenderHealth200ResponseGradeEnum._(r'C');
  static const D = GetSenderHealth200ResponseGradeEnum._(r'D');
  static const F = GetSenderHealth200ResponseGradeEnum._(r'F');

  /// List of all possible values in this [enum][GetSenderHealth200ResponseGradeEnum].
  static const values = <GetSenderHealth200ResponseGradeEnum>[
    aPlus,
    A,
    B,
    C,
    D,
    F,
  ];

  static GetSenderHealth200ResponseGradeEnum? fromJson(dynamic value) => GetSenderHealth200ResponseGradeEnumTypeTransformer().decode(value);

  static List<GetSenderHealth200ResponseGradeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSenderHealth200ResponseGradeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSenderHealth200ResponseGradeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetSenderHealth200ResponseGradeEnum] to String,
/// and [decode] dynamic data back to [GetSenderHealth200ResponseGradeEnum].
class GetSenderHealth200ResponseGradeEnumTypeTransformer {
  factory GetSenderHealth200ResponseGradeEnumTypeTransformer() => _instance ??= const GetSenderHealth200ResponseGradeEnumTypeTransformer._();

  const GetSenderHealth200ResponseGradeEnumTypeTransformer._();

  String encode(GetSenderHealth200ResponseGradeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetSenderHealth200ResponseGradeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetSenderHealth200ResponseGradeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A+': return GetSenderHealth200ResponseGradeEnum.aPlus;
        case r'A': return GetSenderHealth200ResponseGradeEnum.A;
        case r'B': return GetSenderHealth200ResponseGradeEnum.B;
        case r'C': return GetSenderHealth200ResponseGradeEnum.C;
        case r'D': return GetSenderHealth200ResponseGradeEnum.D;
        case r'F': return GetSenderHealth200ResponseGradeEnum.F;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetSenderHealth200ResponseGradeEnumTypeTransformer] instance.
  static GetSenderHealth200ResponseGradeEnumTypeTransformer? _instance;
}


