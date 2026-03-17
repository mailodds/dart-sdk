//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class GetCampaignABResults200ResponseWinner {
  /// Returns a new [GetCampaignABResults200ResponseWinner] instance.
  GetCampaignABResults200ResponseWinner({
    this.variantId,
    this.metric,
    this.confidence,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variantId;

  /// Metric used to determine winner (open_rate or click_rate)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metric;

  /// Statistical confidence level (0-1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCampaignABResults200ResponseWinner &&
    other.variantId == variantId &&
    other.metric == metric &&
    other.confidence == confidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (variantId == null ? 0 : variantId!.hashCode) +
    (metric == null ? 0 : metric!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode);

  @override
  String toString() => 'GetCampaignABResults200ResponseWinner[variantId=$variantId, metric=$metric, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.variantId != null) {
      json[r'variant_id'] = this.variantId;
    } else {
      json[r'variant_id'] = null;
    }
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    return json;
  }

  /// Returns a new [GetCampaignABResults200ResponseWinner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCampaignABResults200ResponseWinner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCampaignABResults200ResponseWinner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCampaignABResults200ResponseWinner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCampaignABResults200ResponseWinner(
        variantId: mapValueOfType<String>(json, r'variant_id'),
        metric: mapValueOfType<String>(json, r'metric'),
        confidence: num.parse('${json[r'confidence']}'),
      );
    }
    return null;
  }

  static List<GetCampaignABResults200ResponseWinner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCampaignABResults200ResponseWinner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCampaignABResults200ResponseWinner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCampaignABResults200ResponseWinner> mapFromJson(dynamic json) {
    final map = <String, GetCampaignABResults200ResponseWinner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCampaignABResults200ResponseWinner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCampaignABResults200ResponseWinner-objects as value to a dart map
  static Map<String, List<GetCampaignABResults200ResponseWinner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCampaignABResults200ResponseWinner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCampaignABResults200ResponseWinner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

