//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingDomainIdentityScoreChecks {
  /// Returns a new [SendingDomainIdentityScoreChecks] instance.
  SendingDomainIdentityScoreChecks({
    this.dkim,
    this.spf,
    this.dmarc,
    this.mx,
    this.returnPath,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScoreChecksDkim? dkim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScoreChecksDkim? spf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScoreChecksDmarc? dmarc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScoreChecksDkim? mx;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendingDomainIdentityScoreChecksDkim? returnPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomainIdentityScoreChecks &&
    other.dkim == dkim &&
    other.spf == spf &&
    other.dmarc == dmarc &&
    other.mx == mx &&
    other.returnPath == returnPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dkim == null ? 0 : dkim!.hashCode) +
    (spf == null ? 0 : spf!.hashCode) +
    (dmarc == null ? 0 : dmarc!.hashCode) +
    (mx == null ? 0 : mx!.hashCode) +
    (returnPath == null ? 0 : returnPath!.hashCode);

  @override
  String toString() => 'SendingDomainIdentityScoreChecks[dkim=$dkim, spf=$spf, dmarc=$dmarc, mx=$mx, returnPath=$returnPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dkim != null) {
      json[r'dkim'] = this.dkim;
    } else {
      json[r'dkim'] = null;
    }
    if (this.spf != null) {
      json[r'spf'] = this.spf;
    } else {
      json[r'spf'] = null;
    }
    if (this.dmarc != null) {
      json[r'dmarc'] = this.dmarc;
    } else {
      json[r'dmarc'] = null;
    }
    if (this.mx != null) {
      json[r'mx'] = this.mx;
    } else {
      json[r'mx'] = null;
    }
    if (this.returnPath != null) {
      json[r'return_path'] = this.returnPath;
    } else {
      json[r'return_path'] = null;
    }
    return json;
  }

  /// Returns a new [SendingDomainIdentityScoreChecks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomainIdentityScoreChecks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomainIdentityScoreChecks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomainIdentityScoreChecks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomainIdentityScoreChecks(
        dkim: SendingDomainIdentityScoreChecksDkim.fromJson(json[r'dkim']),
        spf: SendingDomainIdentityScoreChecksDkim.fromJson(json[r'spf']),
        dmarc: SendingDomainIdentityScoreChecksDmarc.fromJson(json[r'dmarc']),
        mx: SendingDomainIdentityScoreChecksDkim.fromJson(json[r'mx']),
        returnPath: SendingDomainIdentityScoreChecksDkim.fromJson(json[r'return_path']),
      );
    }
    return null;
  }

  static List<SendingDomainIdentityScoreChecks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainIdentityScoreChecks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainIdentityScoreChecks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomainIdentityScoreChecks> mapFromJson(dynamic json) {
    final map = <String, SendingDomainIdentityScoreChecks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomainIdentityScoreChecks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomainIdentityScoreChecks-objects as value to a dart map
  static Map<String, List<SendingDomainIdentityScoreChecks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomainIdentityScoreChecks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomainIdentityScoreChecks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

