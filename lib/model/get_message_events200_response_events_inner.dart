//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMessageEvents200ResponseEventsInner {
  /// Returns a new [GetMessageEvents200ResponseEventsInner] instance.
  GetMessageEvents200ResponseEventsInner({
    this.id,
    this.eventType,
    this.isBot,
    this.linkUrl,
    this.createdAt,
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
  String? eventType;

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
  String? linkUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMessageEvents200ResponseEventsInner &&
    other.id == id &&
    other.eventType == eventType &&
    other.isBot == isBot &&
    other.linkUrl == linkUrl &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (eventType == null ? 0 : eventType!.hashCode) +
    (isBot == null ? 0 : isBot!.hashCode) +
    (linkUrl == null ? 0 : linkUrl!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'GetMessageEvents200ResponseEventsInner[id=$id, eventType=$eventType, isBot=$isBot, linkUrl=$linkUrl, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.eventType != null) {
      json[r'event_type'] = this.eventType;
    } else {
      json[r'event_type'] = null;
    }
    if (this.isBot != null) {
      json[r'is_bot'] = this.isBot;
    } else {
      json[r'is_bot'] = null;
    }
    if (this.linkUrl != null) {
      json[r'link_url'] = this.linkUrl;
    } else {
      json[r'link_url'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [GetMessageEvents200ResponseEventsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMessageEvents200ResponseEventsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMessageEvents200ResponseEventsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMessageEvents200ResponseEventsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMessageEvents200ResponseEventsInner(
        id: mapValueOfType<String>(json, r'id'),
        eventType: mapValueOfType<String>(json, r'event_type'),
        isBot: mapValueOfType<bool>(json, r'is_bot'),
        linkUrl: mapValueOfType<String>(json, r'link_url'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<GetMessageEvents200ResponseEventsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMessageEvents200ResponseEventsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMessageEvents200ResponseEventsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMessageEvents200ResponseEventsInner> mapFromJson(dynamic json) {
    final map = <String, GetMessageEvents200ResponseEventsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMessageEvents200ResponseEventsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMessageEvents200ResponseEventsInner-objects as value to a dart map
  static Map<String, List<GetMessageEvents200ResponseEventsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMessageEvents200ResponseEventsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMessageEvents200ResponseEventsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

