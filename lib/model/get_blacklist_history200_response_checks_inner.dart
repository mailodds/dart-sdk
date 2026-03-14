//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetBlacklistHistory200ResponseChecksInner {
  /// Returns a new [GetBlacklistHistory200ResponseChecksInner] instance.
  GetBlacklistHistory200ResponseChecksInner({
    this.id,
    this.listedOn = const [],
    this.cleanOn = const [],
    this.checkedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  List<String> listedOn;

  List<String> cleanOn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? checkedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetBlacklistHistory200ResponseChecksInner &&
    other.id == id &&
    _deepEquality.equals(other.listedOn, listedOn) &&
    _deepEquality.equals(other.cleanOn, cleanOn) &&
    other.checkedAt == checkedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (listedOn.hashCode) +
    (cleanOn.hashCode) +
    (checkedAt == null ? 0 : checkedAt!.hashCode);

  @override
  String toString() => 'GetBlacklistHistory200ResponseChecksInner[id=$id, listedOn=$listedOn, cleanOn=$cleanOn, checkedAt=$checkedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'listed_on'] = this.listedOn;
      json[r'clean_on'] = this.cleanOn;
    if (this.checkedAt != null) {
      json[r'checked_at'] = this.checkedAt!.toUtc().toIso8601String();
    } else {
      json[r'checked_at'] = null;
    }
    return json;
  }

  /// Returns a new [GetBlacklistHistory200ResponseChecksInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetBlacklistHistory200ResponseChecksInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetBlacklistHistory200ResponseChecksInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetBlacklistHistory200ResponseChecksInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetBlacklistHistory200ResponseChecksInner(
        id: mapValueOfType<String>(json, r'id'),
        listedOn: json[r'listed_on'] is Iterable
            ? (json[r'listed_on'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cleanOn: json[r'clean_on'] is Iterable
            ? (json[r'clean_on'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        checkedAt: mapDateTime(json, r'checked_at', r''),
      );
    }
    return null;
  }

  static List<GetBlacklistHistory200ResponseChecksInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetBlacklistHistory200ResponseChecksInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetBlacklistHistory200ResponseChecksInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetBlacklistHistory200ResponseChecksInner> mapFromJson(dynamic json) {
    final map = <String, GetBlacklistHistory200ResponseChecksInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetBlacklistHistory200ResponseChecksInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetBlacklistHistory200ResponseChecksInner-objects as value to a dart map
  static Map<String, List<GetBlacklistHistory200ResponseChecksInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetBlacklistHistory200ResponseChecksInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetBlacklistHistory200ResponseChecksInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

