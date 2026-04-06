//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ConnectDnsProviderRequest {
  /// Returns a new [ConnectDnsProviderRequest] instance.
  ConnectDnsProviderRequest({
    required this.provider,
    required this.apiToken,
  });

  /// DNS provider
  ConnectDnsProviderRequestProviderEnum provider;

  /// API token with Zone > DNS > Edit permission
  String apiToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectDnsProviderRequest &&
    other.provider == provider &&
    other.apiToken == apiToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (apiToken.hashCode);

  @override
  String toString() => 'ConnectDnsProviderRequest[provider=$provider, apiToken=$apiToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'api_token'] = this.apiToken;
    return json;
  }

  /// Returns a new [ConnectDnsProviderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectDnsProviderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectDnsProviderRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectDnsProviderRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectDnsProviderRequest(
        provider: ConnectDnsProviderRequestProviderEnum.fromJson(json[r'provider'])!,
        apiToken: mapValueOfType<String>(json, r'api_token')!,
      );
    }
    return null;
  }

  static List<ConnectDnsProviderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectDnsProviderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectDnsProviderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectDnsProviderRequest> mapFromJson(dynamic json) {
    final map = <String, ConnectDnsProviderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectDnsProviderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectDnsProviderRequest-objects as value to a dart map
  static Map<String, List<ConnectDnsProviderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectDnsProviderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectDnsProviderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'api_token',
  };
}

/// DNS provider
class ConnectDnsProviderRequestProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectDnsProviderRequestProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cloudflare = ConnectDnsProviderRequestProviderEnum._(r'cloudflare');

  /// List of all possible values in this [enum][ConnectDnsProviderRequestProviderEnum].
  static const values = <ConnectDnsProviderRequestProviderEnum>[
    cloudflare,
  ];

  static ConnectDnsProviderRequestProviderEnum? fromJson(dynamic value) => ConnectDnsProviderRequestProviderEnumTypeTransformer().decode(value);

  static List<ConnectDnsProviderRequestProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectDnsProviderRequestProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectDnsProviderRequestProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectDnsProviderRequestProviderEnum] to String,
/// and [decode] dynamic data back to [ConnectDnsProviderRequestProviderEnum].
class ConnectDnsProviderRequestProviderEnumTypeTransformer {
  factory ConnectDnsProviderRequestProviderEnumTypeTransformer() => _instance ??= const ConnectDnsProviderRequestProviderEnumTypeTransformer._();

  const ConnectDnsProviderRequestProviderEnumTypeTransformer._();

  String encode(ConnectDnsProviderRequestProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectDnsProviderRequestProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectDnsProviderRequestProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cloudflare': return ConnectDnsProviderRequestProviderEnum.cloudflare;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectDnsProviderRequestProviderEnumTypeTransformer] instance.
  static ConnectDnsProviderRequestProviderEnumTypeTransformer? _instance;
}


