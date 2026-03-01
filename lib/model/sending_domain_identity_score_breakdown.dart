//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingDomainIdentityScoreBreakdown {
  /// Returns a new [SendingDomainIdentityScoreBreakdown] instance.
  SendingDomainIdentityScoreBreakdown({
    this.dkim,
    this.spf,
    this.dmarc,
    this.mx,
    this.returnPath,
    this.bimi,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityScoreCheck? dkim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityScoreCheck? spf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityScoreCheck? dmarc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityScoreCheck? mx;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityScoreCheck? returnPath;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityScoreCheck? bimi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomainIdentityScoreBreakdown &&
    other.dkim == dkim &&
    other.spf == spf &&
    other.dmarc == dmarc &&
    other.mx == mx &&
    other.returnPath == returnPath &&
    other.bimi == bimi;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dkim == null ? 0 : dkim!.hashCode) +
    (spf == null ? 0 : spf!.hashCode) +
    (dmarc == null ? 0 : dmarc!.hashCode) +
    (mx == null ? 0 : mx!.hashCode) +
    (returnPath == null ? 0 : returnPath!.hashCode) +
    (bimi == null ? 0 : bimi!.hashCode);

  @override
  String toString() => 'SendingDomainIdentityScoreBreakdown[dkim=$dkim, spf=$spf, dmarc=$dmarc, mx=$mx, returnPath=$returnPath, bimi=$bimi]';

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
    if (this.bimi != null) {
      json[r'bimi'] = this.bimi;
    } else {
      json[r'bimi'] = null;
    }
    return json;
  }

  /// Returns a new [SendingDomainIdentityScoreBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomainIdentityScoreBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomainIdentityScoreBreakdown[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomainIdentityScoreBreakdown[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomainIdentityScoreBreakdown(
        dkim: IdentityScoreCheck.fromJson(json[r'dkim']),
        spf: IdentityScoreCheck.fromJson(json[r'spf']),
        dmarc: IdentityScoreCheck.fromJson(json[r'dmarc']),
        mx: IdentityScoreCheck.fromJson(json[r'mx']),
        returnPath: IdentityScoreCheck.fromJson(json[r'return_path']),
        bimi: IdentityScoreCheck.fromJson(json[r'bimi']),
      );
    }
    return null;
  }

  static List<SendingDomainIdentityScoreBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainIdentityScoreBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainIdentityScoreBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomainIdentityScoreBreakdown> mapFromJson(dynamic json) {
    final map = <String, SendingDomainIdentityScoreBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomainIdentityScoreBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomainIdentityScoreBreakdown-objects as value to a dart map
  static Map<String, List<SendingDomainIdentityScoreBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomainIdentityScoreBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomainIdentityScoreBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

