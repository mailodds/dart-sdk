//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSenderHealth200ResponseComponents {
  /// Returns a new [GetSenderHealth200ResponseComponents] instance.
  GetSenderHealth200ResponseComponents({
    this.deliveryRate,
    this.bounceRate,
    this.complaintRate,
    this.authentication,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSenderHealth200ResponseComponentsDeliveryRate? deliveryRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSenderHealth200ResponseComponentsDeliveryRate? bounceRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSenderHealth200ResponseComponentsDeliveryRate? complaintRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetSenderHealth200ResponseComponentsDeliveryRate? authentication;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSenderHealth200ResponseComponents &&
    other.deliveryRate == deliveryRate &&
    other.bounceRate == bounceRate &&
    other.complaintRate == complaintRate &&
    other.authentication == authentication;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deliveryRate == null ? 0 : deliveryRate!.hashCode) +
    (bounceRate == null ? 0 : bounceRate!.hashCode) +
    (complaintRate == null ? 0 : complaintRate!.hashCode) +
    (authentication == null ? 0 : authentication!.hashCode);

  @override
  String toString() => 'GetSenderHealth200ResponseComponents[deliveryRate=$deliveryRate, bounceRate=$bounceRate, complaintRate=$complaintRate, authentication=$authentication]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deliveryRate != null) {
      json[r'delivery_rate'] = this.deliveryRate;
    } else {
      json[r'delivery_rate'] = null;
    }
    if (this.bounceRate != null) {
      json[r'bounce_rate'] = this.bounceRate;
    } else {
      json[r'bounce_rate'] = null;
    }
    if (this.complaintRate != null) {
      json[r'complaint_rate'] = this.complaintRate;
    } else {
      json[r'complaint_rate'] = null;
    }
    if (this.authentication != null) {
      json[r'authentication'] = this.authentication;
    } else {
      json[r'authentication'] = null;
    }
    return json;
  }

  /// Returns a new [GetSenderHealth200ResponseComponents] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSenderHealth200ResponseComponents? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSenderHealth200ResponseComponents[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSenderHealth200ResponseComponents[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSenderHealth200ResponseComponents(
        deliveryRate: GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(json[r'delivery_rate']),
        bounceRate: GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(json[r'bounce_rate']),
        complaintRate: GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(json[r'complaint_rate']),
        authentication: GetSenderHealth200ResponseComponentsDeliveryRate.fromJson(json[r'authentication']),
      );
    }
    return null;
  }

  static List<GetSenderHealth200ResponseComponents> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSenderHealth200ResponseComponents>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSenderHealth200ResponseComponents.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSenderHealth200ResponseComponents> mapFromJson(dynamic json) {
    final map = <String, GetSenderHealth200ResponseComponents>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSenderHealth200ResponseComponents.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSenderHealth200ResponseComponents-objects as value to a dart map
  static Map<String, List<GetSenderHealth200ResponseComponents>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSenderHealth200ResponseComponents>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSenderHealth200ResponseComponents.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

