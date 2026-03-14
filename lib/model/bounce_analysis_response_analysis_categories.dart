//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceAnalysisResponseAnalysisCategories {
  /// Returns a new [BounceAnalysisResponseAnalysisCategories] instance.
  BounceAnalysisResponseAnalysisCategories({
    this.invalidRecipient,
    this.mailboxFull,
    this.domainIssue,
    this.policyRejection,
    this.contentRejection,
    this.other,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invalidRecipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mailboxFull;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? domainIssue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? policyRejection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contentRejection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? other;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceAnalysisResponseAnalysisCategories &&
    other.invalidRecipient == invalidRecipient &&
    other.mailboxFull == mailboxFull &&
    other.domainIssue == domainIssue &&
    other.policyRejection == policyRejection &&
    other.contentRejection == contentRejection &&
    other.other == other;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invalidRecipient == null ? 0 : invalidRecipient!.hashCode) +
    (mailboxFull == null ? 0 : mailboxFull!.hashCode) +
    (domainIssue == null ? 0 : domainIssue!.hashCode) +
    (policyRejection == null ? 0 : policyRejection!.hashCode) +
    (contentRejection == null ? 0 : contentRejection!.hashCode) +
    (other == null ? 0 : other!.hashCode);

  @override
  String toString() => 'BounceAnalysisResponseAnalysisCategories[invalidRecipient=$invalidRecipient, mailboxFull=$mailboxFull, domainIssue=$domainIssue, policyRejection=$policyRejection, contentRejection=$contentRejection, other=$other]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.invalidRecipient != null) {
      json[r'invalid_recipient'] = this.invalidRecipient;
    } else {
      json[r'invalid_recipient'] = null;
    }
    if (this.mailboxFull != null) {
      json[r'mailbox_full'] = this.mailboxFull;
    } else {
      json[r'mailbox_full'] = null;
    }
    if (this.domainIssue != null) {
      json[r'domain_issue'] = this.domainIssue;
    } else {
      json[r'domain_issue'] = null;
    }
    if (this.policyRejection != null) {
      json[r'policy_rejection'] = this.policyRejection;
    } else {
      json[r'policy_rejection'] = null;
    }
    if (this.contentRejection != null) {
      json[r'content_rejection'] = this.contentRejection;
    } else {
      json[r'content_rejection'] = null;
    }
    if (this.other != null) {
      json[r'other'] = this.other;
    } else {
      json[r'other'] = null;
    }
    return json;
  }

  /// Returns a new [BounceAnalysisResponseAnalysisCategories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BounceAnalysisResponseAnalysisCategories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BounceAnalysisResponseAnalysisCategories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BounceAnalysisResponseAnalysisCategories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BounceAnalysisResponseAnalysisCategories(
        invalidRecipient: mapValueOfType<int>(json, r'invalid_recipient'),
        mailboxFull: mapValueOfType<int>(json, r'mailbox_full'),
        domainIssue: mapValueOfType<int>(json, r'domain_issue'),
        policyRejection: mapValueOfType<int>(json, r'policy_rejection'),
        contentRejection: mapValueOfType<int>(json, r'content_rejection'),
        other: mapValueOfType<int>(json, r'other'),
      );
    }
    return null;
  }

  static List<BounceAnalysisResponseAnalysisCategories> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BounceAnalysisResponseAnalysisCategories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BounceAnalysisResponseAnalysisCategories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BounceAnalysisResponseAnalysisCategories> mapFromJson(dynamic json) {
    final map = <String, BounceAnalysisResponseAnalysisCategories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BounceAnalysisResponseAnalysisCategories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BounceAnalysisResponseAnalysisCategories-objects as value to a dart map
  static Map<String, List<BounceAnalysisResponseAnalysisCategories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BounceAnalysisResponseAnalysisCategories>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BounceAnalysisResponseAnalysisCategories.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

