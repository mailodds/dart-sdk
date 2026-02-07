//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetrySummaryTopDomainsInner {
  /// Returns a new [TelemetrySummaryTopDomainsInner] instance.
  TelemetrySummaryTopDomainsInner({
    this.domain,
    this.volume,
    this.deliverable,
    this.reject,
    this.unknown,
    this.catchAll,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? volume;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? deliverable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? reject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? unknown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? catchAll;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetrySummaryTopDomainsInner &&
    other.domain == domain &&
    other.volume == volume &&
    other.deliverable == deliverable &&
    other.reject == reject &&
    other.unknown == unknown &&
    other.catchAll == catchAll;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (deliverable == null ? 0 : deliverable!.hashCode) +
    (reject == null ? 0 : reject!.hashCode) +
    (unknown == null ? 0 : unknown!.hashCode) +
    (catchAll == null ? 0 : catchAll!.hashCode);

  @override
  String toString() => 'TelemetrySummaryTopDomainsInner[domain=$domain, volume=$volume, deliverable=$deliverable, reject=$reject, unknown=$unknown, catchAll=$catchAll]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    if (this.deliverable != null) {
      json[r'deliverable'] = this.deliverable;
    } else {
      json[r'deliverable'] = null;
    }
    if (this.reject != null) {
      json[r'reject'] = this.reject;
    } else {
      json[r'reject'] = null;
    }
    if (this.unknown != null) {
      json[r'unknown'] = this.unknown;
    } else {
      json[r'unknown'] = null;
    }
    if (this.catchAll != null) {
      json[r'catchAll'] = this.catchAll;
    } else {
      json[r'catchAll'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetrySummaryTopDomainsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetrySummaryTopDomainsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetrySummaryTopDomainsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetrySummaryTopDomainsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetrySummaryTopDomainsInner(
        domain: mapValueOfType<String>(json, r'domain'),
        volume: mapValueOfType<int>(json, r'volume'),
        deliverable: num.parse('${json[r'deliverable']}'),
        reject: num.parse('${json[r'reject']}'),
        unknown: num.parse('${json[r'unknown']}'),
        catchAll: num.parse('${json[r'catchAll']}'),
      );
    }
    return null;
  }

  static List<TelemetrySummaryTopDomainsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetrySummaryTopDomainsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetrySummaryTopDomainsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetrySummaryTopDomainsInner> mapFromJson(dynamic json) {
    final map = <String, TelemetrySummaryTopDomainsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetrySummaryTopDomainsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetrySummaryTopDomainsInner-objects as value to a dart map
  static Map<String, List<TelemetrySummaryTopDomainsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetrySummaryTopDomainsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetrySummaryTopDomainsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

