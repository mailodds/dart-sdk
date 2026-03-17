//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetDmarcSources200ResponseSourcesInner {
  /// Returns a new [GetDmarcSources200ResponseSourcesInner] instance.
  GetDmarcSources200ResponseSourcesInner({
    this.sourceIp,
    this.hostname,
    this.org,
    this.count,
    this.dkimPass,
    this.dkimFail,
    this.spfPass,
    this.spfFail,
    this.disposition,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dkimPass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dkimFail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spfPass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spfFail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disposition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDmarcSources200ResponseSourcesInner &&
    other.sourceIp == sourceIp &&
    other.hostname == hostname &&
    other.org == org &&
    other.count == count &&
    other.dkimPass == dkimPass &&
    other.dkimFail == dkimFail &&
    other.spfPass == spfPass &&
    other.spfFail == spfFail &&
    other.disposition == disposition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceIp == null ? 0 : sourceIp!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (dkimPass == null ? 0 : dkimPass!.hashCode) +
    (dkimFail == null ? 0 : dkimFail!.hashCode) +
    (spfPass == null ? 0 : spfPass!.hashCode) +
    (spfFail == null ? 0 : spfFail!.hashCode) +
    (disposition == null ? 0 : disposition!.hashCode);

  @override
  String toString() => 'GetDmarcSources200ResponseSourcesInner[sourceIp=$sourceIp, hostname=$hostname, org=$org, count=$count, dkimPass=$dkimPass, dkimFail=$dkimFail, spfPass=$spfPass, spfFail=$spfFail, disposition=$disposition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sourceIp != null) {
      json[r'source_ip'] = this.sourceIp;
    } else {
      json[r'source_ip'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.dkimPass != null) {
      json[r'dkim_pass'] = this.dkimPass;
    } else {
      json[r'dkim_pass'] = null;
    }
    if (this.dkimFail != null) {
      json[r'dkim_fail'] = this.dkimFail;
    } else {
      json[r'dkim_fail'] = null;
    }
    if (this.spfPass != null) {
      json[r'spf_pass'] = this.spfPass;
    } else {
      json[r'spf_pass'] = null;
    }
    if (this.spfFail != null) {
      json[r'spf_fail'] = this.spfFail;
    } else {
      json[r'spf_fail'] = null;
    }
    if (this.disposition != null) {
      json[r'disposition'] = this.disposition;
    } else {
      json[r'disposition'] = null;
    }
    return json;
  }

  /// Returns a new [GetDmarcSources200ResponseSourcesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDmarcSources200ResponseSourcesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDmarcSources200ResponseSourcesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDmarcSources200ResponseSourcesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDmarcSources200ResponseSourcesInner(
        sourceIp: mapValueOfType<String>(json, r'source_ip'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        org: mapValueOfType<String>(json, r'org'),
        count: mapValueOfType<int>(json, r'count'),
        dkimPass: mapValueOfType<int>(json, r'dkim_pass'),
        dkimFail: mapValueOfType<int>(json, r'dkim_fail'),
        spfPass: mapValueOfType<int>(json, r'spf_pass'),
        spfFail: mapValueOfType<int>(json, r'spf_fail'),
        disposition: mapValueOfType<String>(json, r'disposition'),
      );
    }
    return null;
  }

  static List<GetDmarcSources200ResponseSourcesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDmarcSources200ResponseSourcesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDmarcSources200ResponseSourcesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDmarcSources200ResponseSourcesInner> mapFromJson(dynamic json) {
    final map = <String, GetDmarcSources200ResponseSourcesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDmarcSources200ResponseSourcesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDmarcSources200ResponseSourcesInner-objects as value to a dart map
  static Map<String, List<GetDmarcSources200ResponseSourcesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDmarcSources200ResponseSourcesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDmarcSources200ResponseSourcesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

