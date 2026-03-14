//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSenderHealth200ResponseVolume {
  /// Returns a new [GetSenderHealth200ResponseVolume] instance.
  GetSenderHealth200ResponseVolume({
    this.sent,
    this.delivered,
    this.bounced,
    this.complained,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delivered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bounced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? complained;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSenderHealth200ResponseVolume &&
    other.sent == sent &&
    other.delivered == delivered &&
    other.bounced == bounced &&
    other.complained == complained;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sent == null ? 0 : sent!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (complained == null ? 0 : complained!.hashCode);

  @override
  String toString() => 'GetSenderHealth200ResponseVolume[sent=$sent, delivered=$delivered, bounced=$bounced, complained=$complained]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
    }
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.bounced != null) {
      json[r'bounced'] = this.bounced;
    } else {
      json[r'bounced'] = null;
    }
    if (this.complained != null) {
      json[r'complained'] = this.complained;
    } else {
      json[r'complained'] = null;
    }
    return json;
  }

  /// Returns a new [GetSenderHealth200ResponseVolume] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSenderHealth200ResponseVolume? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSenderHealth200ResponseVolume[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSenderHealth200ResponseVolume[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSenderHealth200ResponseVolume(
        sent: mapValueOfType<int>(json, r'sent'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        bounced: mapValueOfType<int>(json, r'bounced'),
        complained: mapValueOfType<int>(json, r'complained'),
      );
    }
    return null;
  }

  static List<GetSenderHealth200ResponseVolume> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSenderHealth200ResponseVolume>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSenderHealth200ResponseVolume.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSenderHealth200ResponseVolume> mapFromJson(dynamic json) {
    final map = <String, GetSenderHealth200ResponseVolume>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSenderHealth200ResponseVolume.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSenderHealth200ResponseVolume-objects as value to a dart map
  static Map<String, List<GetSenderHealth200ResponseVolume>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSenderHealth200ResponseVolume>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSenderHealth200ResponseVolume.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

