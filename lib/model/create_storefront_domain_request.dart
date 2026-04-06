//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateStorefrontDomainRequest {
  /// Returns a new [CreateStorefrontDomainRequest] instance.
  CreateStorefrontDomainRequest({
    required this.fqdn,
    required this.storeId,
  });

  /// Fully qualified domain name
  String fqdn;

  /// Store connection ID
  String storeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateStorefrontDomainRequest &&
    other.fqdn == fqdn &&
    other.storeId == storeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fqdn.hashCode) +
    (storeId.hashCode);

  @override
  String toString() => 'CreateStorefrontDomainRequest[fqdn=$fqdn, storeId=$storeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fqdn'] = this.fqdn;
      json[r'store_id'] = this.storeId;
    return json;
  }

  /// Returns a new [CreateStorefrontDomainRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateStorefrontDomainRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateStorefrontDomainRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateStorefrontDomainRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateStorefrontDomainRequest(
        fqdn: mapValueOfType<String>(json, r'fqdn')!,
        storeId: mapValueOfType<String>(json, r'store_id')!,
      );
    }
    return null;
  }

  static List<CreateStorefrontDomainRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateStorefrontDomainRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateStorefrontDomainRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateStorefrontDomainRequest> mapFromJson(dynamic json) {
    final map = <String, CreateStorefrontDomainRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateStorefrontDomainRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateStorefrontDomainRequest-objects as value to a dart map
  static Map<String, List<CreateStorefrontDomainRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateStorefrontDomainRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateStorefrontDomainRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fqdn',
    'store_id',
  };
}

