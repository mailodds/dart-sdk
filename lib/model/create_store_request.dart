//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class CreateStoreRequest {
  /// Returns a new [CreateStoreRequest] instance.
  CreateStoreRequest({
    required this.platform,
    required this.storeName,
    required this.storeUrl,
    required this.authMethod,
    this.settings,
  });

  /// E-commerce platform
  CreateStoreRequestPlatformEnum platform;

  /// Display name for the store
  String storeName;

  /// Store base URL
  String storeUrl;

  /// Authentication method
  CreateStoreRequestAuthMethodEnum authMethod;

  /// Platform-specific settings (e.g., API keys, feed URL)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? settings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateStoreRequest &&
    other.platform == platform &&
    other.storeName == storeName &&
    other.storeUrl == storeUrl &&
    other.authMethod == authMethod &&
    other.settings == settings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (platform.hashCode) +
    (storeName.hashCode) +
    (storeUrl.hashCode) +
    (authMethod.hashCode) +
    (settings == null ? 0 : settings!.hashCode);

  @override
  String toString() => 'CreateStoreRequest[platform=$platform, storeName=$storeName, storeUrl=$storeUrl, authMethod=$authMethod, settings=$settings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'platform'] = this.platform;
      json[r'store_name'] = this.storeName;
      json[r'store_url'] = this.storeUrl;
      json[r'auth_method'] = this.authMethod;
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    return json;
  }

  /// Returns a new [CreateStoreRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateStoreRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateStoreRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateStoreRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateStoreRequest(
        platform: CreateStoreRequestPlatformEnum.fromJson(json[r'platform'])!,
        storeName: mapValueOfType<String>(json, r'store_name')!,
        storeUrl: mapValueOfType<String>(json, r'store_url')!,
        authMethod: CreateStoreRequestAuthMethodEnum.fromJson(json[r'auth_method'])!,
        settings: mapValueOfType<Object>(json, r'settings'),
      );
    }
    return null;
  }

  static List<CreateStoreRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateStoreRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateStoreRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateStoreRequest> mapFromJson(dynamic json) {
    final map = <String, CreateStoreRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateStoreRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateStoreRequest-objects as value to a dart map
  static Map<String, List<CreateStoreRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateStoreRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateStoreRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'platform',
    'store_name',
    'store_url',
    'auth_method',
  };
}

/// E-commerce platform
class CreateStoreRequestPlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateStoreRequestPlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const woocommerce = CreateStoreRequestPlatformEnum._(r'woocommerce');
  static const prestashop = CreateStoreRequestPlatformEnum._(r'prestashop');
  static const shopify = CreateStoreRequestPlatformEnum._(r'shopify');
  static const feed = CreateStoreRequestPlatformEnum._(r'feed');
  static const custom = CreateStoreRequestPlatformEnum._(r'custom');

  /// List of all possible values in this [enum][CreateStoreRequestPlatformEnum].
  static const values = <CreateStoreRequestPlatformEnum>[
    woocommerce,
    prestashop,
    shopify,
    feed,
    custom,
  ];

  static CreateStoreRequestPlatformEnum? fromJson(dynamic value) => CreateStoreRequestPlatformEnumTypeTransformer().decode(value);

  static List<CreateStoreRequestPlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateStoreRequestPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateStoreRequestPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateStoreRequestPlatformEnum] to String,
/// and [decode] dynamic data back to [CreateStoreRequestPlatformEnum].
class CreateStoreRequestPlatformEnumTypeTransformer {
  factory CreateStoreRequestPlatformEnumTypeTransformer() => _instance ??= const CreateStoreRequestPlatformEnumTypeTransformer._();

  const CreateStoreRequestPlatformEnumTypeTransformer._();

  String encode(CreateStoreRequestPlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateStoreRequestPlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateStoreRequestPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'woocommerce': return CreateStoreRequestPlatformEnum.woocommerce;
        case r'prestashop': return CreateStoreRequestPlatformEnum.prestashop;
        case r'shopify': return CreateStoreRequestPlatformEnum.shopify;
        case r'feed': return CreateStoreRequestPlatformEnum.feed;
        case r'custom': return CreateStoreRequestPlatformEnum.custom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateStoreRequestPlatformEnumTypeTransformer] instance.
  static CreateStoreRequestPlatformEnumTypeTransformer? _instance;
}


/// Authentication method
class CreateStoreRequestAuthMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateStoreRequestAuthMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pluginHandshake = CreateStoreRequestAuthMethodEnum._(r'plugin_handshake');
  static const apiKey = CreateStoreRequestAuthMethodEnum._(r'api_key');
  static const oauth = CreateStoreRequestAuthMethodEnum._(r'oauth');
  static const feedUrl = CreateStoreRequestAuthMethodEnum._(r'feed_url');

  /// List of all possible values in this [enum][CreateStoreRequestAuthMethodEnum].
  static const values = <CreateStoreRequestAuthMethodEnum>[
    pluginHandshake,
    apiKey,
    oauth,
    feedUrl,
  ];

  static CreateStoreRequestAuthMethodEnum? fromJson(dynamic value) => CreateStoreRequestAuthMethodEnumTypeTransformer().decode(value);

  static List<CreateStoreRequestAuthMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateStoreRequestAuthMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateStoreRequestAuthMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateStoreRequestAuthMethodEnum] to String,
/// and [decode] dynamic data back to [CreateStoreRequestAuthMethodEnum].
class CreateStoreRequestAuthMethodEnumTypeTransformer {
  factory CreateStoreRequestAuthMethodEnumTypeTransformer() => _instance ??= const CreateStoreRequestAuthMethodEnumTypeTransformer._();

  const CreateStoreRequestAuthMethodEnumTypeTransformer._();

  String encode(CreateStoreRequestAuthMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateStoreRequestAuthMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateStoreRequestAuthMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'plugin_handshake': return CreateStoreRequestAuthMethodEnum.pluginHandshake;
        case r'api_key': return CreateStoreRequestAuthMethodEnum.apiKey;
        case r'oauth': return CreateStoreRequestAuthMethodEnum.oauth;
        case r'feed_url': return CreateStoreRequestAuthMethodEnum.feedUrl;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateStoreRequestAuthMethodEnumTypeTransformer] instance.
  static CreateStoreRequestAuthMethodEnumTypeTransformer? _instance;
}


