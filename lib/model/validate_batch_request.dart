//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateBatchRequest {
  /// Returns a new [ValidateBatchRequest] instance.
  ValidateBatchRequest({
    this.emails = const [],
    this.depth = const ValidateBatchRequestDepthEnum._('enhanced'),
    this.policyId,
  });

  /// List of emails to validate
  List<String> emails;

  ValidateBatchRequestDepthEnum depth;

  /// Optional policy ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policyId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateBatchRequest &&
    _deepEquality.equals(other.emails, emails) &&
    other.depth == depth &&
    other.policyId == policyId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emails.hashCode) +
    (depth.hashCode) +
    (policyId == null ? 0 : policyId!.hashCode);

  @override
  String toString() => 'ValidateBatchRequest[emails=$emails, depth=$depth, policyId=$policyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emails'] = this.emails;
      json[r'depth'] = this.depth;
    if (this.policyId != null) {
      json[r'policy_id'] = this.policyId;
    } else {
      json[r'policy_id'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateBatchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateBatchRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateBatchRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateBatchRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateBatchRequest(
        emails: json[r'emails'] is Iterable
            ? (json[r'emails'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        depth: ValidateBatchRequestDepthEnum.fromJson(json[r'depth']) ?? ValidateBatchRequestDepthEnum.enhanced,
        policyId: mapValueOfType<int>(json, r'policy_id'),
      );
    }
    return null;
  }

  static List<ValidateBatchRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateBatchRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateBatchRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateBatchRequest> mapFromJson(dynamic json) {
    final map = <String, ValidateBatchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateBatchRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateBatchRequest-objects as value to a dart map
  static Map<String, List<ValidateBatchRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateBatchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateBatchRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emails',
  };
}


class ValidateBatchRequestDepthEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidateBatchRequestDepthEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const standard = ValidateBatchRequestDepthEnum._(r'standard');
  static const enhanced = ValidateBatchRequestDepthEnum._(r'enhanced');

  /// List of all possible values in this [enum][ValidateBatchRequestDepthEnum].
  static const values = <ValidateBatchRequestDepthEnum>[
    standard,
    enhanced,
  ];

  static ValidateBatchRequestDepthEnum? fromJson(dynamic value) => ValidateBatchRequestDepthEnumTypeTransformer().decode(value);

  static List<ValidateBatchRequestDepthEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateBatchRequestDepthEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateBatchRequestDepthEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidateBatchRequestDepthEnum] to String,
/// and [decode] dynamic data back to [ValidateBatchRequestDepthEnum].
class ValidateBatchRequestDepthEnumTypeTransformer {
  factory ValidateBatchRequestDepthEnumTypeTransformer() => _instance ??= const ValidateBatchRequestDepthEnumTypeTransformer._();

  const ValidateBatchRequestDepthEnumTypeTransformer._();

  String encode(ValidateBatchRequestDepthEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidateBatchRequestDepthEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidateBatchRequestDepthEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'standard': return ValidateBatchRequestDepthEnum.standard;
        case r'enhanced': return ValidateBatchRequestDepthEnum.enhanced;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidateBatchRequestDepthEnumTypeTransformer] instance.
  static ValidateBatchRequestDepthEnumTypeTransformer? _instance;
}


