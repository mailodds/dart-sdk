//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateBounceAnalysisRequest {
  /// Returns a new [CreateBounceAnalysisRequest] instance.
  CreateBounceAnalysisRequest({
    required this.domainId,
    this.period = const CreateBounceAnalysisRequestPeriodEnum._('30d'),
  });

  /// Sending domain UUID to analyze bounces for
  String domainId;

  /// Time period to analyze
  CreateBounceAnalysisRequestPeriodEnum period;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateBounceAnalysisRequest &&
    other.domainId == domainId &&
    other.period == period;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainId.hashCode) +
    (period.hashCode);

  @override
  String toString() => 'CreateBounceAnalysisRequest[domainId=$domainId, period=$period]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain_id'] = this.domainId;
      json[r'period'] = this.period;
    return json;
  }

  /// Returns a new [CreateBounceAnalysisRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateBounceAnalysisRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateBounceAnalysisRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateBounceAnalysisRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateBounceAnalysisRequest(
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        period: CreateBounceAnalysisRequestPeriodEnum.fromJson(json[r'period']) ?? '30d',
      );
    }
    return null;
  }

  static List<CreateBounceAnalysisRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBounceAnalysisRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBounceAnalysisRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateBounceAnalysisRequest> mapFromJson(dynamic json) {
    final map = <String, CreateBounceAnalysisRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateBounceAnalysisRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateBounceAnalysisRequest-objects as value to a dart map
  static Map<String, List<CreateBounceAnalysisRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateBounceAnalysisRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateBounceAnalysisRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain_id',
  };
}

/// Time period to analyze
class CreateBounceAnalysisRequestPeriodEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateBounceAnalysisRequestPeriodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n7d = CreateBounceAnalysisRequestPeriodEnum._(r'7d');
  static const n30d = CreateBounceAnalysisRequestPeriodEnum._(r'30d');
  static const n90d = CreateBounceAnalysisRequestPeriodEnum._(r'90d');

  /// List of all possible values in this [enum][CreateBounceAnalysisRequestPeriodEnum].
  static const values = <CreateBounceAnalysisRequestPeriodEnum>[
    n7d,
    n30d,
    n90d,
  ];

  static CreateBounceAnalysisRequestPeriodEnum? fromJson(dynamic value) => CreateBounceAnalysisRequestPeriodEnumTypeTransformer().decode(value);

  static List<CreateBounceAnalysisRequestPeriodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBounceAnalysisRequestPeriodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBounceAnalysisRequestPeriodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateBounceAnalysisRequestPeriodEnum] to String,
/// and [decode] dynamic data back to [CreateBounceAnalysisRequestPeriodEnum].
class CreateBounceAnalysisRequestPeriodEnumTypeTransformer {
  factory CreateBounceAnalysisRequestPeriodEnumTypeTransformer() => _instance ??= const CreateBounceAnalysisRequestPeriodEnumTypeTransformer._();

  const CreateBounceAnalysisRequestPeriodEnumTypeTransformer._();

  String encode(CreateBounceAnalysisRequestPeriodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateBounceAnalysisRequestPeriodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateBounceAnalysisRequestPeriodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'7d': return CreateBounceAnalysisRequestPeriodEnum.n7d;
        case r'30d': return CreateBounceAnalysisRequestPeriodEnum.n30d;
        case r'90d': return CreateBounceAnalysisRequestPeriodEnum.n90d;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateBounceAnalysisRequestPeriodEnumTypeTransformer] instance.
  static CreateBounceAnalysisRequestPeriodEnumTypeTransformer? _instance;
}


