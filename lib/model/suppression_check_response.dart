//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuppressionCheckResponse {
  /// Returns a new [SuppressionCheckResponse] instance.
  SuppressionCheckResponse({
    this.schemaVersion,
    this.requestId,
    this.email,
    this.suppressed,
    this.matchType,
    this.matchValue,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? suppressed;

  SuppressionCheckResponseMatchTypeEnum? matchType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuppressionCheckResponse &&
    other.schemaVersion == schemaVersion &&
    other.requestId == requestId &&
    other.email == email &&
    other.suppressed == suppressed &&
    other.matchType == matchType &&
    other.matchValue == matchValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaVersion == null ? 0 : schemaVersion!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (suppressed == null ? 0 : suppressed!.hashCode) +
    (matchType == null ? 0 : matchType!.hashCode) +
    (matchValue == null ? 0 : matchValue!.hashCode);

  @override
  String toString() => 'SuppressionCheckResponse[schemaVersion=$schemaVersion, requestId=$requestId, email=$email, suppressed=$suppressed, matchType=$matchType, matchValue=$matchValue]';

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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.suppressed != null) {
      json[r'suppressed'] = this.suppressed;
    } else {
      json[r'suppressed'] = null;
    }
    if (this.matchType != null) {
      json[r'match_type'] = this.matchType;
    } else {
      json[r'match_type'] = null;
    }
    if (this.matchValue != null) {
      json[r'match_value'] = this.matchValue;
    } else {
      json[r'match_value'] = null;
    }
    return json;
  }

  /// Returns a new [SuppressionCheckResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuppressionCheckResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuppressionCheckResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuppressionCheckResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuppressionCheckResponse(
        schemaVersion: mapValueOfType<String>(json, r'schema_version'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        email: mapValueOfType<String>(json, r'email'),
        suppressed: mapValueOfType<bool>(json, r'suppressed'),
        matchType: SuppressionCheckResponseMatchTypeEnum.fromJson(json[r'match_type']),
        matchValue: mapValueOfType<String>(json, r'match_value'),
      );
    }
    return null;
  }

  static List<SuppressionCheckResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressionCheckResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressionCheckResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuppressionCheckResponse> mapFromJson(dynamic json) {
    final map = <String, SuppressionCheckResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuppressionCheckResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuppressionCheckResponse-objects as value to a dart map
  static Map<String, List<SuppressionCheckResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuppressionCheckResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuppressionCheckResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SuppressionCheckResponseMatchTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SuppressionCheckResponseMatchTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = SuppressionCheckResponseMatchTypeEnum._(r'email');
  static const domain = SuppressionCheckResponseMatchTypeEnum._(r'domain');

  /// List of all possible values in this [enum][SuppressionCheckResponseMatchTypeEnum].
  static const values = <SuppressionCheckResponseMatchTypeEnum>[
    email,
    domain,
  ];

  static SuppressionCheckResponseMatchTypeEnum? fromJson(dynamic value) => SuppressionCheckResponseMatchTypeEnumTypeTransformer().decode(value);

  static List<SuppressionCheckResponseMatchTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressionCheckResponseMatchTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressionCheckResponseMatchTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SuppressionCheckResponseMatchTypeEnum] to String,
/// and [decode] dynamic data back to [SuppressionCheckResponseMatchTypeEnum].
class SuppressionCheckResponseMatchTypeEnumTypeTransformer {
  factory SuppressionCheckResponseMatchTypeEnumTypeTransformer() => _instance ??= const SuppressionCheckResponseMatchTypeEnumTypeTransformer._();

  const SuppressionCheckResponseMatchTypeEnumTypeTransformer._();

  String encode(SuppressionCheckResponseMatchTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SuppressionCheckResponseMatchTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SuppressionCheckResponseMatchTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email': return SuppressionCheckResponseMatchTypeEnum.email;
        case r'domain': return SuppressionCheckResponseMatchTypeEnum.domain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SuppressionCheckResponseMatchTypeEnumTypeTransformer] instance.
  static SuppressionCheckResponseMatchTypeEnumTypeTransformer? _instance;
}


