//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryContactListRequestFiltersInner {
  /// Returns a new [QueryContactListRequestFiltersInner] instance.
  QueryContactListRequestFiltersInner({
    this.field,
    this.operator_,
    this.value,
  });

  /// Field to filter on
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? field;

  QueryContactListRequestFiltersInnerOperator_Enum? operator_;

  /// Filter value
  Object? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryContactListRequestFiltersInner &&
    other.field == field &&
    other.operator_ == operator_ &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field == null ? 0 : field!.hashCode) +
    (operator_ == null ? 0 : operator_!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'QueryContactListRequestFiltersInner[field=$field, operator_=$operator_, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
    if (this.operator_ != null) {
      json[r'operator'] = this.operator_;
    } else {
      json[r'operator'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [QueryContactListRequestFiltersInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryContactListRequestFiltersInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryContactListRequestFiltersInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryContactListRequestFiltersInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryContactListRequestFiltersInner(
        field: mapValueOfType<String>(json, r'field'),
        operator_: QueryContactListRequestFiltersInnerOperator_Enum.fromJson(json[r'operator']),
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<QueryContactListRequestFiltersInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryContactListRequestFiltersInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryContactListRequestFiltersInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryContactListRequestFiltersInner> mapFromJson(dynamic json) {
    final map = <String, QueryContactListRequestFiltersInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryContactListRequestFiltersInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryContactListRequestFiltersInner-objects as value to a dart map
  static Map<String, List<QueryContactListRequestFiltersInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryContactListRequestFiltersInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryContactListRequestFiltersInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class QueryContactListRequestFiltersInnerOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const QueryContactListRequestFiltersInnerOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = QueryContactListRequestFiltersInnerOperator_Enum._(r'eq');
  static const neq = QueryContactListRequestFiltersInnerOperator_Enum._(r'neq');
  static const contains = QueryContactListRequestFiltersInnerOperator_Enum._(r'contains');
  static const in_ = QueryContactListRequestFiltersInnerOperator_Enum._(r'in');

  /// List of all possible values in this [enum][QueryContactListRequestFiltersInnerOperator_Enum].
  static const values = <QueryContactListRequestFiltersInnerOperator_Enum>[
    eq,
    neq,
    contains,
    in_,
  ];

  static QueryContactListRequestFiltersInnerOperator_Enum? fromJson(dynamic value) => QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer().decode(value);

  static List<QueryContactListRequestFiltersInnerOperator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryContactListRequestFiltersInnerOperator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryContactListRequestFiltersInnerOperator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [QueryContactListRequestFiltersInnerOperator_Enum] to String,
/// and [decode] dynamic data back to [QueryContactListRequestFiltersInnerOperator_Enum].
class QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer {
  factory QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer() => _instance ??= const QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer._();

  const QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer._();

  String encode(QueryContactListRequestFiltersInnerOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a QueryContactListRequestFiltersInnerOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QueryContactListRequestFiltersInnerOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'eq': return QueryContactListRequestFiltersInnerOperator_Enum.eq;
        case r'neq': return QueryContactListRequestFiltersInnerOperator_Enum.neq;
        case r'contains': return QueryContactListRequestFiltersInnerOperator_Enum.contains;
        case r'in': return QueryContactListRequestFiltersInnerOperator_Enum.in_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer] instance.
  static QueryContactListRequestFiltersInnerOperator_EnumTypeTransformer? _instance;
}


