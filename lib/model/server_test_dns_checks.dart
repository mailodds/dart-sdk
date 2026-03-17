//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ServerTestDnsChecks {
  /// Returns a new [ServerTestDnsChecks] instance.
  ServerTestDnsChecks({
    this.spf,
    this.dkim,
    this.dmarc,
    this.dmarcPolicy,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? spf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dkim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dmarc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dmarcPolicy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerTestDnsChecks &&
    other.spf == spf &&
    other.dkim == dkim &&
    other.dmarc == dmarc &&
    other.dmarcPolicy == dmarcPolicy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (spf == null ? 0 : spf!.hashCode) +
    (dkim == null ? 0 : dkim!.hashCode) +
    (dmarc == null ? 0 : dmarc!.hashCode) +
    (dmarcPolicy == null ? 0 : dmarcPolicy!.hashCode);

  @override
  String toString() => 'ServerTestDnsChecks[spf=$spf, dkim=$dkim, dmarc=$dmarc, dmarcPolicy=$dmarcPolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.spf != null) {
      json[r'spf'] = this.spf;
    } else {
      json[r'spf'] = null;
    }
    if (this.dkim != null) {
      json[r'dkim'] = this.dkim;
    } else {
      json[r'dkim'] = null;
    }
    if (this.dmarc != null) {
      json[r'dmarc'] = this.dmarc;
    } else {
      json[r'dmarc'] = null;
    }
    if (this.dmarcPolicy != null) {
      json[r'dmarc_policy'] = this.dmarcPolicy;
    } else {
      json[r'dmarc_policy'] = null;
    }
    return json;
  }

  /// Returns a new [ServerTestDnsChecks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerTestDnsChecks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServerTestDnsChecks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServerTestDnsChecks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServerTestDnsChecks(
        spf: mapValueOfType<bool>(json, r'spf'),
        dkim: mapValueOfType<bool>(json, r'dkim'),
        dmarc: mapValueOfType<bool>(json, r'dmarc'),
        dmarcPolicy: mapValueOfType<String>(json, r'dmarc_policy'),
      );
    }
    return null;
  }

  static List<ServerTestDnsChecks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerTestDnsChecks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerTestDnsChecks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerTestDnsChecks> mapFromJson(dynamic json) {
    final map = <String, ServerTestDnsChecks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerTestDnsChecks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerTestDnsChecks-objects as value to a dart map
  static Map<String, List<ServerTestDnsChecks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerTestDnsChecks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerTestDnsChecks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

