//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CrossReferenceBounces200ResponseCrossReference {
  /// Returns a new [CrossReferenceBounces200ResponseCrossReference] instance.
  CrossReferenceBounces200ResponseCrossReference({
    this.totalBounced,
    this.matched,
    this.unmatched,
    this.matchRate,
    this.entries = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalBounced;

  /// Bounced emails found in validation logs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? matched;

  /// Bounced emails not in validation logs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unmatched;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? matchRate;

  List<CrossReferenceBounces200ResponseCrossReferenceEntriesInner> entries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CrossReferenceBounces200ResponseCrossReference &&
    other.totalBounced == totalBounced &&
    other.matched == matched &&
    other.unmatched == unmatched &&
    other.matchRate == matchRate &&
    _deepEquality.equals(other.entries, entries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalBounced == null ? 0 : totalBounced!.hashCode) +
    (matched == null ? 0 : matched!.hashCode) +
    (unmatched == null ? 0 : unmatched!.hashCode) +
    (matchRate == null ? 0 : matchRate!.hashCode) +
    (entries.hashCode);

  @override
  String toString() => 'CrossReferenceBounces200ResponseCrossReference[totalBounced=$totalBounced, matched=$matched, unmatched=$unmatched, matchRate=$matchRate, entries=$entries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.totalBounced != null) {
      json[r'total_bounced'] = this.totalBounced;
    } else {
      json[r'total_bounced'] = null;
    }
    if (this.matched != null) {
      json[r'matched'] = this.matched;
    } else {
      json[r'matched'] = null;
    }
    if (this.unmatched != null) {
      json[r'unmatched'] = this.unmatched;
    } else {
      json[r'unmatched'] = null;
    }
    if (this.matchRate != null) {
      json[r'match_rate'] = this.matchRate;
    } else {
      json[r'match_rate'] = null;
    }
      json[r'entries'] = this.entries;
    return json;
  }

  /// Returns a new [CrossReferenceBounces200ResponseCrossReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CrossReferenceBounces200ResponseCrossReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CrossReferenceBounces200ResponseCrossReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CrossReferenceBounces200ResponseCrossReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CrossReferenceBounces200ResponseCrossReference(
        totalBounced: mapValueOfType<int>(json, r'total_bounced'),
        matched: mapValueOfType<int>(json, r'matched'),
        unmatched: mapValueOfType<int>(json, r'unmatched'),
        matchRate: num.parse('${json[r'match_rate']}'),
        entries: CrossReferenceBounces200ResponseCrossReferenceEntriesInner.listFromJson(json[r'entries']),
      );
    }
    return null;
  }

  static List<CrossReferenceBounces200ResponseCrossReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CrossReferenceBounces200ResponseCrossReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CrossReferenceBounces200ResponseCrossReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CrossReferenceBounces200ResponseCrossReference> mapFromJson(dynamic json) {
    final map = <String, CrossReferenceBounces200ResponseCrossReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CrossReferenceBounces200ResponseCrossReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CrossReferenceBounces200ResponseCrossReference-objects as value to a dart map
  static Map<String, List<CrossReferenceBounces200ResponseCrossReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CrossReferenceBounces200ResponseCrossReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CrossReferenceBounces200ResponseCrossReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

