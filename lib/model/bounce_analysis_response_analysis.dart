//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class BounceAnalysisResponseAnalysis {
  /// Returns a new [BounceAnalysisResponseAnalysis] instance.
  BounceAnalysisResponseAnalysis({
    this.id,
    this.domainId,
    this.period,
    this.status,
    this.totalBounces,
    this.hardBounces,
    this.softBounces,
    this.categories,
    this.topDomains = const [],
    this.recommendations = const [],
    this.createdAt,
  });

  /// Analysis UUID
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
  String? domainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  BounceAnalysisResponseAnalysisStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalBounces;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hardBounces;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? softBounces;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BounceAnalysisResponseAnalysisCategories? categories;

  /// Top bouncing recipient domains
  List<BounceAnalysisResponseAnalysisTopDomainsInner> topDomains;

  /// Actionable recommendations to reduce bounces
  List<String> recommendations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceAnalysisResponseAnalysis &&
    other.id == id &&
    other.domainId == domainId &&
    other.period == period &&
    other.status == status &&
    other.totalBounces == totalBounces &&
    other.hardBounces == hardBounces &&
    other.softBounces == softBounces &&
    other.categories == categories &&
    _deepEquality.equals(other.topDomains, topDomains) &&
    _deepEquality.equals(other.recommendations, recommendations) &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (totalBounces == null ? 0 : totalBounces!.hashCode) +
    (hardBounces == null ? 0 : hardBounces!.hashCode) +
    (softBounces == null ? 0 : softBounces!.hashCode) +
    (categories == null ? 0 : categories!.hashCode) +
    (topDomains.hashCode) +
    (recommendations.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'BounceAnalysisResponseAnalysis[id=$id, domainId=$domainId, period=$period, status=$status, totalBounces=$totalBounces, hardBounces=$hardBounces, softBounces=$softBounces, categories=$categories, topDomains=$topDomains, recommendations=$recommendations, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.domainId != null) {
      json[r'domain_id'] = this.domainId;
    } else {
      json[r'domain_id'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.totalBounces != null) {
      json[r'total_bounces'] = this.totalBounces;
    } else {
      json[r'total_bounces'] = null;
    }
    if (this.hardBounces != null) {
      json[r'hard_bounces'] = this.hardBounces;
    } else {
      json[r'hard_bounces'] = null;
    }
    if (this.softBounces != null) {
      json[r'soft_bounces'] = this.softBounces;
    } else {
      json[r'soft_bounces'] = null;
    }
    if (this.categories != null) {
      json[r'categories'] = this.categories;
    } else {
      json[r'categories'] = null;
    }
      json[r'top_domains'] = this.topDomains;
      json[r'recommendations'] = this.recommendations;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [BounceAnalysisResponseAnalysis] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BounceAnalysisResponseAnalysis? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BounceAnalysisResponseAnalysis[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BounceAnalysisResponseAnalysis[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BounceAnalysisResponseAnalysis(
        id: mapValueOfType<String>(json, r'id'),
        domainId: mapValueOfType<String>(json, r'domain_id'),
        period: mapValueOfType<String>(json, r'period'),
        status: BounceAnalysisResponseAnalysisStatusEnum.fromJson(json[r'status']),
        totalBounces: mapValueOfType<int>(json, r'total_bounces'),
        hardBounces: mapValueOfType<int>(json, r'hard_bounces'),
        softBounces: mapValueOfType<int>(json, r'soft_bounces'),
        categories: BounceAnalysisResponseAnalysisCategories.fromJson(json[r'categories']),
        topDomains: BounceAnalysisResponseAnalysisTopDomainsInner.listFromJson(json[r'top_domains']),
        recommendations: json[r'recommendations'] is Iterable
            ? (json[r'recommendations'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<BounceAnalysisResponseAnalysis> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BounceAnalysisResponseAnalysis>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BounceAnalysisResponseAnalysis.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BounceAnalysisResponseAnalysis> mapFromJson(dynamic json) {
    final map = <String, BounceAnalysisResponseAnalysis>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BounceAnalysisResponseAnalysis.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BounceAnalysisResponseAnalysis-objects as value to a dart map
  static Map<String, List<BounceAnalysisResponseAnalysis>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BounceAnalysisResponseAnalysis>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BounceAnalysisResponseAnalysis.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BounceAnalysisResponseAnalysisStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BounceAnalysisResponseAnalysisStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const processing = BounceAnalysisResponseAnalysisStatusEnum._(r'processing');
  static const completed = BounceAnalysisResponseAnalysisStatusEnum._(r'completed');
  static const failed = BounceAnalysisResponseAnalysisStatusEnum._(r'failed');

  /// List of all possible values in this [enum][BounceAnalysisResponseAnalysisStatusEnum].
  static const values = <BounceAnalysisResponseAnalysisStatusEnum>[
    processing,
    completed,
    failed,
  ];

  static BounceAnalysisResponseAnalysisStatusEnum? fromJson(dynamic value) => BounceAnalysisResponseAnalysisStatusEnumTypeTransformer().decode(value);

  static List<BounceAnalysisResponseAnalysisStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BounceAnalysisResponseAnalysisStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BounceAnalysisResponseAnalysisStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BounceAnalysisResponseAnalysisStatusEnum] to String,
/// and [decode] dynamic data back to [BounceAnalysisResponseAnalysisStatusEnum].
class BounceAnalysisResponseAnalysisStatusEnumTypeTransformer {
  factory BounceAnalysisResponseAnalysisStatusEnumTypeTransformer() => _instance ??= const BounceAnalysisResponseAnalysisStatusEnumTypeTransformer._();

  const BounceAnalysisResponseAnalysisStatusEnumTypeTransformer._();

  String encode(BounceAnalysisResponseAnalysisStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BounceAnalysisResponseAnalysisStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BounceAnalysisResponseAnalysisStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'processing': return BounceAnalysisResponseAnalysisStatusEnum.processing;
        case r'completed': return BounceAnalysisResponseAnalysisStatusEnum.completed;
        case r'failed': return BounceAnalysisResponseAnalysisStatusEnum.failed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BounceAnalysisResponseAnalysisStatusEnumTypeTransformer] instance.
  static BounceAnalysisResponseAnalysisStatusEnumTypeTransformer? _instance;
}


