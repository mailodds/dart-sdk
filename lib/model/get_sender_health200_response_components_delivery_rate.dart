//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSenderHealth200ResponseComponentsDeliveryRate {
  /// Returns a new [GetSenderHealth200ResponseComponentsDeliveryRate] instance.
  GetSenderHealth200ResponseComponentsDeliveryRate({
    this.value,
    this.score,
    this.weight,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSenderHealth200ResponseComponentsDeliveryRate &&
    other.value == value &&
    other.score == score &&
    other.weight == weight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (weight == null ? 0 : weight!.hashCode);

  @override
  String toString() => 'GetSenderHealth200ResponseComponentsDeliveryRate[value=$value, score=$score, weight=$weight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    return json;
  }

  /// Returns a new [GetSenderHealth200ResponseComponentsDeliveryRate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSenderHealth200ResponseComponentsDeliveryRate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSenderHealth200ResponseComponentsDeliveryRate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSenderHealth200ResponseComponentsDeliveryRate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSenderHealth200ResponseComponentsDeliveryRate(
        value: num.parse('${json[r'value']}'),
        score: mapValueOfType<int>(json, r'score'),
        weight: num.parse('${json[r'weight']}'),
      );
    }
    return null;
  }

  static List<GetSenderHealth200ResponseComponentsDeliveryRate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSenderHealth200ResponseComponentsDeliveryRate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSenderHealth200ResponseComponentsDeliveryRate> mapFromJson(dynamic json) {
    final map = <String, GetSenderHealth200ResponseComponentsDeliveryRate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSenderHealth200ResponseComponentsDeliveryRate-objects as value to a dart map
  static Map<String, List<GetSenderHealth200ResponseComponentsDeliveryRate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSenderHealth200ResponseComponentsDeliveryRate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSenderHealth200ResponseComponentsDeliveryRate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

