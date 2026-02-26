//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnsubscribeSubscriber200Response {
  /// Returns a new [UnsubscribeSubscriber200Response] instance.
  UnsubscribeSubscriber200Response({
    this.subscriber,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Subscriber? subscriber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnsubscribeSubscriber200Response &&
    other.subscriber == subscriber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subscriber == null ? 0 : subscriber!.hashCode);

  @override
  String toString() => 'UnsubscribeSubscriber200Response[subscriber=$subscriber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subscriber != null) {
      json[r'subscriber'] = this.subscriber;
    } else {
      json[r'subscriber'] = null;
    }
    return json;
  }

  /// Returns a new [UnsubscribeSubscriber200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnsubscribeSubscriber200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnsubscribeSubscriber200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnsubscribeSubscriber200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnsubscribeSubscriber200Response(
        subscriber: Subscriber.fromJson(json[r'subscriber']),
      );
    }
    return null;
  }

  static List<UnsubscribeSubscriber200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnsubscribeSubscriber200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnsubscribeSubscriber200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnsubscribeSubscriber200Response> mapFromJson(dynamic json) {
    final map = <String, UnsubscribeSubscriber200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnsubscribeSubscriber200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnsubscribeSubscriber200Response-objects as value to a dart map
  static Map<String, List<UnsubscribeSubscriber200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnsubscribeSubscriber200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnsubscribeSubscriber200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

