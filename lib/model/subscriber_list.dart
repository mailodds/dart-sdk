//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscriberList {
  /// Returns a new [SubscriberList] instance.
  SubscriberList({
    this.id,
    this.accountId,
    this.name,
    this.description,
    this.confirmationRedirectUrl,
    this.confirmationSubject,
    this.confirmationFromName,
    this.subscriberCount,
    this.confirmedCount,
    this.createdAt,
    this.updatedAt,
  });

  /// List UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Account ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  /// List name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// List description
  String? description;

  /// Redirect URL after confirmation
  String? confirmationRedirectUrl;

  /// Confirmation email subject
  String? confirmationSubject;

  /// Confirmation email sender name
  String? confirmationFromName;

  /// Total subscriber count
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscriberCount;

  /// Confirmed subscriber count
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? confirmedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriberList &&
    other.id == id &&
    other.accountId == accountId &&
    other.name == name &&
    other.description == description &&
    other.confirmationRedirectUrl == confirmationRedirectUrl &&
    other.confirmationSubject == confirmationSubject &&
    other.confirmationFromName == confirmationFromName &&
    other.subscriberCount == subscriberCount &&
    other.confirmedCount == confirmedCount &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (confirmationRedirectUrl == null ? 0 : confirmationRedirectUrl!.hashCode) +
    (confirmationSubject == null ? 0 : confirmationSubject!.hashCode) +
    (confirmationFromName == null ? 0 : confirmationFromName!.hashCode) +
    (subscriberCount == null ? 0 : subscriberCount!.hashCode) +
    (confirmedCount == null ? 0 : confirmedCount!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'SubscriberList[id=$id, accountId=$accountId, name=$name, description=$description, confirmationRedirectUrl=$confirmationRedirectUrl, confirmationSubject=$confirmationSubject, confirmationFromName=$confirmationFromName, subscriberCount=$subscriberCount, confirmedCount=$confirmedCount, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.confirmationRedirectUrl != null) {
      json[r'confirmation_redirect_url'] = this.confirmationRedirectUrl;
    } else {
      json[r'confirmation_redirect_url'] = null;
    }
    if (this.confirmationSubject != null) {
      json[r'confirmation_subject'] = this.confirmationSubject;
    } else {
      json[r'confirmation_subject'] = null;
    }
    if (this.confirmationFromName != null) {
      json[r'confirmation_from_name'] = this.confirmationFromName;
    } else {
      json[r'confirmation_from_name'] = null;
    }
    if (this.subscriberCount != null) {
      json[r'subscriber_count'] = this.subscriberCount;
    } else {
      json[r'subscriber_count'] = null;
    }
    if (this.confirmedCount != null) {
      json[r'confirmed_count'] = this.confirmedCount;
    } else {
      json[r'confirmed_count'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriberList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriberList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriberList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriberList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriberList(
        id: mapValueOfType<String>(json, r'id'),
        accountId: mapValueOfType<int>(json, r'account_id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        confirmationRedirectUrl: mapValueOfType<String>(json, r'confirmation_redirect_url'),
        confirmationSubject: mapValueOfType<String>(json, r'confirmation_subject'),
        confirmationFromName: mapValueOfType<String>(json, r'confirmation_from_name'),
        subscriberCount: mapValueOfType<int>(json, r'subscriber_count'),
        confirmedCount: mapValueOfType<int>(json, r'confirmed_count'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<SubscriberList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriberList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriberList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriberList> mapFromJson(dynamic json) {
    final map = <String, SubscriberList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriberList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriberList-objects as value to a dart map
  static Map<String, List<SubscriberList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriberList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriberList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

