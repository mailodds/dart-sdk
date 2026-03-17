//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetPixelSettings200Response {
  /// Returns a new [GetPixelSettings200Response] instance.
  GetPixelSettings200Response({
    this.pixelUuid,
    this.pixelSubscribeListId,
  });

  String? pixelUuid;

  int? pixelSubscribeListId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetPixelSettings200Response &&
    other.pixelUuid == pixelUuid &&
    other.pixelSubscribeListId == pixelSubscribeListId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pixelUuid == null ? 0 : pixelUuid!.hashCode) +
    (pixelSubscribeListId == null ? 0 : pixelSubscribeListId!.hashCode);

  @override
  String toString() => 'GetPixelSettings200Response[pixelUuid=$pixelUuid, pixelSubscribeListId=$pixelSubscribeListId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pixelUuid != null) {
      json[r'pixel_uuid'] = this.pixelUuid;
    } else {
      json[r'pixel_uuid'] = null;
    }
    if (this.pixelSubscribeListId != null) {
      json[r'pixel_subscribe_list_id'] = this.pixelSubscribeListId;
    } else {
      json[r'pixel_subscribe_list_id'] = null;
    }
    return json;
  }

  /// Returns a new [GetPixelSettings200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetPixelSettings200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetPixelSettings200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetPixelSettings200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetPixelSettings200Response(
        pixelUuid: mapValueOfType<String>(json, r'pixel_uuid'),
        pixelSubscribeListId: mapValueOfType<int>(json, r'pixel_subscribe_list_id'),
      );
    }
    return null;
  }

  static List<GetPixelSettings200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetPixelSettings200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetPixelSettings200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetPixelSettings200Response> mapFromJson(dynamic json) {
    final map = <String, GetPixelSettings200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetPixelSettings200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetPixelSettings200Response-objects as value to a dart map
  static Map<String, List<GetPixelSettings200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetPixelSettings200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetPixelSettings200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

