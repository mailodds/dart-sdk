//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JwksResponseKeysInner {
  /// Returns a new [JwksResponseKeysInner] instance.
  JwksResponseKeysInner({
    this.kty,
    this.use,
    this.kid,
    this.alg,
    this.n,
    this.e,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? use;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? e;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JwksResponseKeysInner &&
    other.kty == kty &&
    other.use == use &&
    other.kid == kid &&
    other.alg == alg &&
    other.n == n &&
    other.e == e;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kty == null ? 0 : kty!.hashCode) +
    (use == null ? 0 : use!.hashCode) +
    (kid == null ? 0 : kid!.hashCode) +
    (alg == null ? 0 : alg!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (e == null ? 0 : e!.hashCode);

  @override
  String toString() => 'JwksResponseKeysInner[kty=$kty, use=$use, kid=$kid, alg=$alg, n=$n, e=$e]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.kty != null) {
      json[r'kty'] = this.kty;
    } else {
      json[r'kty'] = null;
    }
    if (this.use != null) {
      json[r'use'] = this.use;
    } else {
      json[r'use'] = null;
    }
    if (this.kid != null) {
      json[r'kid'] = this.kid;
    } else {
      json[r'kid'] = null;
    }
    if (this.alg != null) {
      json[r'alg'] = this.alg;
    } else {
      json[r'alg'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.e != null) {
      json[r'e'] = this.e;
    } else {
      json[r'e'] = null;
    }
    return json;
  }

  /// Returns a new [JwksResponseKeysInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JwksResponseKeysInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JwksResponseKeysInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JwksResponseKeysInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JwksResponseKeysInner(
        kty: mapValueOfType<String>(json, r'kty'),
        use: mapValueOfType<String>(json, r'use'),
        kid: mapValueOfType<String>(json, r'kid'),
        alg: mapValueOfType<String>(json, r'alg'),
        n: mapValueOfType<String>(json, r'n'),
        e: mapValueOfType<String>(json, r'e'),
      );
    }
    return null;
  }

  static List<JwksResponseKeysInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JwksResponseKeysInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JwksResponseKeysInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JwksResponseKeysInner> mapFromJson(dynamic json) {
    final map = <String, JwksResponseKeysInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JwksResponseKeysInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JwksResponseKeysInner-objects as value to a dart map
  static Map<String, List<JwksResponseKeysInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JwksResponseKeysInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JwksResponseKeysInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

