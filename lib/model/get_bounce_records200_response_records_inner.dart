//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetBounceRecords200ResponseRecordsInner {
  /// Returns a new [GetBounceRecords200ResponseRecordsInner] instance.
  GetBounceRecords200ResponseRecordsInner({
    this.id,
    this.email,
    this.bounceType,
    this.smtpCode,
    this.enhancedStatus,
    this.diagnostic,
    this.mxHost,
    this.bouncedAt,
  });

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
  String? email;

  GetBounceRecords200ResponseRecordsInnerBounceTypeEnum? bounceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? smtpCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enhancedStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? diagnostic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mxHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? bouncedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetBounceRecords200ResponseRecordsInner &&
    other.id == id &&
    other.email == email &&
    other.bounceType == bounceType &&
    other.smtpCode == smtpCode &&
    other.enhancedStatus == enhancedStatus &&
    other.diagnostic == diagnostic &&
    other.mxHost == mxHost &&
    other.bouncedAt == bouncedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (bounceType == null ? 0 : bounceType!.hashCode) +
    (smtpCode == null ? 0 : smtpCode!.hashCode) +
    (enhancedStatus == null ? 0 : enhancedStatus!.hashCode) +
    (diagnostic == null ? 0 : diagnostic!.hashCode) +
    (mxHost == null ? 0 : mxHost!.hashCode) +
    (bouncedAt == null ? 0 : bouncedAt!.hashCode);

  @override
  String toString() => 'GetBounceRecords200ResponseRecordsInner[id=$id, email=$email, bounceType=$bounceType, smtpCode=$smtpCode, enhancedStatus=$enhancedStatus, diagnostic=$diagnostic, mxHost=$mxHost, bouncedAt=$bouncedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.bounceType != null) {
      json[r'bounce_type'] = this.bounceType;
    } else {
      json[r'bounce_type'] = null;
    }
    if (this.smtpCode != null) {
      json[r'smtp_code'] = this.smtpCode;
    } else {
      json[r'smtp_code'] = null;
    }
    if (this.enhancedStatus != null) {
      json[r'enhanced_status'] = this.enhancedStatus;
    } else {
      json[r'enhanced_status'] = null;
    }
    if (this.diagnostic != null) {
      json[r'diagnostic'] = this.diagnostic;
    } else {
      json[r'diagnostic'] = null;
    }
    if (this.mxHost != null) {
      json[r'mx_host'] = this.mxHost;
    } else {
      json[r'mx_host'] = null;
    }
    if (this.bouncedAt != null) {
      json[r'bounced_at'] = this.bouncedAt!.toUtc().toIso8601String();
    } else {
      json[r'bounced_at'] = null;
    }
    return json;
  }

  /// Returns a new [GetBounceRecords200ResponseRecordsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetBounceRecords200ResponseRecordsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetBounceRecords200ResponseRecordsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetBounceRecords200ResponseRecordsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetBounceRecords200ResponseRecordsInner(
        id: mapValueOfType<String>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        bounceType: GetBounceRecords200ResponseRecordsInnerBounceTypeEnum.fromJson(json[r'bounce_type']),
        smtpCode: mapValueOfType<int>(json, r'smtp_code'),
        enhancedStatus: mapValueOfType<String>(json, r'enhanced_status'),
        diagnostic: mapValueOfType<String>(json, r'diagnostic'),
        mxHost: mapValueOfType<String>(json, r'mx_host'),
        bouncedAt: mapDateTime(json, r'bounced_at', r''),
      );
    }
    return null;
  }

  static List<GetBounceRecords200ResponseRecordsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetBounceRecords200ResponseRecordsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetBounceRecords200ResponseRecordsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetBounceRecords200ResponseRecordsInner> mapFromJson(dynamic json) {
    final map = <String, GetBounceRecords200ResponseRecordsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetBounceRecords200ResponseRecordsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetBounceRecords200ResponseRecordsInner-objects as value to a dart map
  static Map<String, List<GetBounceRecords200ResponseRecordsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetBounceRecords200ResponseRecordsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetBounceRecords200ResponseRecordsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GetBounceRecords200ResponseRecordsInnerBounceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetBounceRecords200ResponseRecordsInnerBounceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const hard = GetBounceRecords200ResponseRecordsInnerBounceTypeEnum._(r'hard');
  static const soft = GetBounceRecords200ResponseRecordsInnerBounceTypeEnum._(r'soft');

  /// List of all possible values in this [enum][GetBounceRecords200ResponseRecordsInnerBounceTypeEnum].
  static const values = <GetBounceRecords200ResponseRecordsInnerBounceTypeEnum>[
    hard,
    soft,
  ];

  static GetBounceRecords200ResponseRecordsInnerBounceTypeEnum? fromJson(dynamic value) => GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer().decode(value);

  static List<GetBounceRecords200ResponseRecordsInnerBounceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetBounceRecords200ResponseRecordsInnerBounceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetBounceRecords200ResponseRecordsInnerBounceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetBounceRecords200ResponseRecordsInnerBounceTypeEnum] to String,
/// and [decode] dynamic data back to [GetBounceRecords200ResponseRecordsInnerBounceTypeEnum].
class GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer {
  factory GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer() => _instance ??= const GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer._();

  const GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer._();

  String encode(GetBounceRecords200ResponseRecordsInnerBounceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetBounceRecords200ResponseRecordsInnerBounceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetBounceRecords200ResponseRecordsInnerBounceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'hard': return GetBounceRecords200ResponseRecordsInnerBounceTypeEnum.hard;
        case r'soft': return GetBounceRecords200ResponseRecordsInnerBounceTypeEnum.soft;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer] instance.
  static GetBounceRecords200ResponseRecordsInnerBounceTypeEnumTypeTransformer? _instance;
}


