//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduleCampaignRequest {
  /// Returns a new [ScheduleCampaignRequest] instance.
  ScheduleCampaignRequest({
    required this.sendAt,
  });

  /// Scheduled send time (ISO 8601, must be in the future)
  DateTime sendAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduleCampaignRequest &&
    other.sendAt == sendAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sendAt.hashCode);

  @override
  String toString() => 'ScheduleCampaignRequest[sendAt=$sendAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'send_at'] = this.sendAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ScheduleCampaignRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduleCampaignRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduleCampaignRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduleCampaignRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduleCampaignRequest(
        sendAt: mapDateTime(json, r'send_at', r'')!,
      );
    }
    return null;
  }

  static List<ScheduleCampaignRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduleCampaignRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleCampaignRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduleCampaignRequest> mapFromJson(dynamic json) {
    final map = <String, ScheduleCampaignRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduleCampaignRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduleCampaignRequest-objects as value to a dart map
  static Map<String, List<ScheduleCampaignRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduleCampaignRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduleCampaignRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'send_at',
  };
}

