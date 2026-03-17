//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class SuppressDisengagedRequest {
  /// Returns a new [SuppressDisengagedRequest] instance.
  SuppressDisengagedRequest({
    this.inactiveDays = 180,
    this.minSends = 10,
    this.dryRun = true,
  });

  /// Days of inactivity threshold
  ///
  /// Minimum value: 1
  /// Maximum value: 365
  int inactiveDays;

  /// Minimum sends to qualify
  ///
  /// Minimum value: 1
  /// Maximum value: 100
  int minSends;

  /// Preview without suppressing
  bool dryRun;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuppressDisengagedRequest &&
    other.inactiveDays == inactiveDays &&
    other.minSends == minSends &&
    other.dryRun == dryRun;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inactiveDays.hashCode) +
    (minSends.hashCode) +
    (dryRun.hashCode);

  @override
  String toString() => 'SuppressDisengagedRequest[inactiveDays=$inactiveDays, minSends=$minSends, dryRun=$dryRun]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inactive_days'] = this.inactiveDays;
      json[r'min_sends'] = this.minSends;
      json[r'dry_run'] = this.dryRun;
    return json;
  }

  /// Returns a new [SuppressDisengagedRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuppressDisengagedRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuppressDisengagedRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuppressDisengagedRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuppressDisengagedRequest(
        inactiveDays: mapValueOfType<int>(json, r'inactive_days') ?? 180,
        minSends: mapValueOfType<int>(json, r'min_sends') ?? 10,
        dryRun: mapValueOfType<bool>(json, r'dry_run') ?? true,
      );
    }
    return null;
  }

  static List<SuppressDisengagedRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuppressDisengagedRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuppressDisengagedRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuppressDisengagedRequest> mapFromJson(dynamic json) {
    final map = <String, SuppressDisengagedRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuppressDisengagedRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuppressDisengagedRequest-objects as value to a dart map
  static Map<String, List<SuppressDisengagedRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuppressDisengagedRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuppressDisengagedRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

