//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetMessageEvents200ResponseClicksInner {
  /// Returns a new [GetMessageEvents200ResponseClicksInner] instance.
  GetMessageEvents200ResponseClicksInner({
    this.url,
    this.isBot,
    this.timestamp,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMessageEvents200ResponseClicksInner &&
    other.url == url &&
    other.isBot == isBot &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (isBot == null ? 0 : isBot!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode);

  @override
  String toString() => 'GetMessageEvents200ResponseClicksInner[url=$url, isBot=$isBot, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.isBot != null) {
      json[r'is_bot'] = this.isBot;
    } else {
      json[r'is_bot'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    return json;
  }

  /// Returns a new [GetMessageEvents200ResponseClicksInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMessageEvents200ResponseClicksInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMessageEvents200ResponseClicksInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMessageEvents200ResponseClicksInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMessageEvents200ResponseClicksInner(
        url: mapValueOfType<String>(json, r'url'),
        isBot: mapValueOfType<bool>(json, r'is_bot'),
        timestamp: mapDateTime(json, r'timestamp', r''),
      );
    }
    return null;
  }

  static List<GetMessageEvents200ResponseClicksInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMessageEvents200ResponseClicksInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMessageEvents200ResponseClicksInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMessageEvents200ResponseClicksInner> mapFromJson(dynamic json) {
    final map = <String, GetMessageEvents200ResponseClicksInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMessageEvents200ResponseClicksInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMessageEvents200ResponseClicksInner-objects as value to a dart map
  static Map<String, List<GetMessageEvents200ResponseClicksInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMessageEvents200ResponseClicksInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMessageEvents200ResponseClicksInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

