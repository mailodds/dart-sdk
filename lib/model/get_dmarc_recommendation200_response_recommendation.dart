//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetDmarcRecommendation200ResponseRecommendation {
  /// Returns a new [GetDmarcRecommendation200ResponseRecommendation] instance.
  GetDmarcRecommendation200ResponseRecommendation({
    this.currentPolicy,
    this.recommendedPolicy,
    this.confidence,
    this.reasons = const [],
    this.readyToUpgrade,
  });

  /// Current DMARC policy (none, quarantine, reject)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentPolicy;

  /// Recommended DMARC policy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recommendedPolicy;

  /// Confidence level (0-1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? confidence;

  /// Reasons for the recommendation
  List<String> reasons;

  /// Whether it is safe to upgrade
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readyToUpgrade;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDmarcRecommendation200ResponseRecommendation &&
    other.currentPolicy == currentPolicy &&
    other.recommendedPolicy == recommendedPolicy &&
    other.confidence == confidence &&
    _deepEquality.equals(other.reasons, reasons) &&
    other.readyToUpgrade == readyToUpgrade;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentPolicy == null ? 0 : currentPolicy!.hashCode) +
    (recommendedPolicy == null ? 0 : recommendedPolicy!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (reasons.hashCode) +
    (readyToUpgrade == null ? 0 : readyToUpgrade!.hashCode);

  @override
  String toString() => 'GetDmarcRecommendation200ResponseRecommendation[currentPolicy=$currentPolicy, recommendedPolicy=$recommendedPolicy, confidence=$confidence, reasons=$reasons, readyToUpgrade=$readyToUpgrade]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentPolicy != null) {
      json[r'current_policy'] = this.currentPolicy;
    } else {
      json[r'current_policy'] = null;
    }
    if (this.recommendedPolicy != null) {
      json[r'recommended_policy'] = this.recommendedPolicy;
    } else {
      json[r'recommended_policy'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
      json[r'reasons'] = this.reasons;
    if (this.readyToUpgrade != null) {
      json[r'ready_to_upgrade'] = this.readyToUpgrade;
    } else {
      json[r'ready_to_upgrade'] = null;
    }
    return json;
  }

  /// Returns a new [GetDmarcRecommendation200ResponseRecommendation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDmarcRecommendation200ResponseRecommendation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDmarcRecommendation200ResponseRecommendation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDmarcRecommendation200ResponseRecommendation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDmarcRecommendation200ResponseRecommendation(
        currentPolicy: mapValueOfType<String>(json, r'current_policy'),
        recommendedPolicy: mapValueOfType<String>(json, r'recommended_policy'),
        confidence: num.parse('${json[r'confidence']}'),
        reasons: json[r'reasons'] is Iterable
            ? (json[r'reasons'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        readyToUpgrade: mapValueOfType<bool>(json, r'ready_to_upgrade'),
      );
    }
    return null;
  }

  static List<GetDmarcRecommendation200ResponseRecommendation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDmarcRecommendation200ResponseRecommendation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDmarcRecommendation200ResponseRecommendation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDmarcRecommendation200ResponseRecommendation> mapFromJson(dynamic json) {
    final map = <String, GetDmarcRecommendation200ResponseRecommendation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDmarcRecommendation200ResponseRecommendation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDmarcRecommendation200ResponseRecommendation-objects as value to a dart map
  static Map<String, List<GetDmarcRecommendation200ResponseRecommendation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDmarcRecommendation200ResponseRecommendation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDmarcRecommendation200ResponseRecommendation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

