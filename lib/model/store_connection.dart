//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class StoreConnection {
  /// Returns a new [StoreConnection] instance.
  StoreConnection({
    this.id,
    this.accountId,
    this.platform,
    this.storeName,
    this.storeUrl,
    this.status,
    this.authMethod,
    this.productCount,
    this.lastSyncedAt,
    this.lastError,
    this.syncIntervalSeconds = 3600,
    this.settings,
    this.createdAt,
    this.updatedAt,
  });

  /// Store connection UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  /// E-commerce platform
  StoreConnectionPlatformEnum? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storeUrl;

  StoreConnectionStatusEnum? status;

  StoreConnectionAuthMethodEnum? authMethod;

  /// Number of active products
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? productCount;

  DateTime? lastSyncedAt;

  /// Last sync error message
  String? lastError;

  /// Auto-sync interval in seconds
  int syncIntervalSeconds;

  /// Platform-specific settings
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? settings;

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
  bool operator ==(Object other) => identical(this, other) || other is StoreConnection &&
    other.id == id &&
    other.accountId == accountId &&
    other.platform == platform &&
    other.storeName == storeName &&
    other.storeUrl == storeUrl &&
    other.status == status &&
    other.authMethod == authMethod &&
    other.productCount == productCount &&
    other.lastSyncedAt == lastSyncedAt &&
    other.lastError == lastError &&
    other.syncIntervalSeconds == syncIntervalSeconds &&
    other.settings == settings &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (storeName == null ? 0 : storeName!.hashCode) +
    (storeUrl == null ? 0 : storeUrl!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (authMethod == null ? 0 : authMethod!.hashCode) +
    (productCount == null ? 0 : productCount!.hashCode) +
    (lastSyncedAt == null ? 0 : lastSyncedAt!.hashCode) +
    (lastError == null ? 0 : lastError!.hashCode) +
    (syncIntervalSeconds.hashCode) +
    (settings == null ? 0 : settings!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'StoreConnection[id=$id, accountId=$accountId, platform=$platform, storeName=$storeName, storeUrl=$storeUrl, status=$status, authMethod=$authMethod, productCount=$productCount, lastSyncedAt=$lastSyncedAt, lastError=$lastError, syncIntervalSeconds=$syncIntervalSeconds, settings=$settings, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.storeName != null) {
      json[r'store_name'] = this.storeName;
    } else {
      json[r'store_name'] = null;
    }
    if (this.storeUrl != null) {
      json[r'store_url'] = this.storeUrl;
    } else {
      json[r'store_url'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.authMethod != null) {
      json[r'auth_method'] = this.authMethod;
    } else {
      json[r'auth_method'] = null;
    }
    if (this.productCount != null) {
      json[r'product_count'] = this.productCount;
    } else {
      json[r'product_count'] = null;
    }
    if (this.lastSyncedAt != null) {
      json[r'last_synced_at'] = this.lastSyncedAt!.toUtc().toIso8601String();
    } else {
      json[r'last_synced_at'] = null;
    }
    if (this.lastError != null) {
      json[r'last_error'] = this.lastError;
    } else {
      json[r'last_error'] = null;
    }
      json[r'sync_interval_seconds'] = this.syncIntervalSeconds;
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
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

  /// Returns a new [StoreConnection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreConnection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreConnection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreConnection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreConnection(
        id: mapValueOfType<String>(json, r'id'),
        accountId: mapValueOfType<int>(json, r'account_id'),
        platform: StoreConnectionPlatformEnum.fromJson(json[r'platform']),
        storeName: mapValueOfType<String>(json, r'store_name'),
        storeUrl: mapValueOfType<String>(json, r'store_url'),
        status: StoreConnectionStatusEnum.fromJson(json[r'status']),
        authMethod: StoreConnectionAuthMethodEnum.fromJson(json[r'auth_method']),
        productCount: mapValueOfType<int>(json, r'product_count'),
        lastSyncedAt: mapDateTime(json, r'last_synced_at', r''),
        lastError: mapValueOfType<String>(json, r'last_error'),
        syncIntervalSeconds: mapValueOfType<int>(json, r'sync_interval_seconds') ?? 3600,
        settings: mapValueOfType<Object>(json, r'settings'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<StoreConnection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreConnection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreConnection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreConnection> mapFromJson(dynamic json) {
    final map = <String, StoreConnection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreConnection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreConnection-objects as value to a dart map
  static Map<String, List<StoreConnection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreConnection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreConnection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// E-commerce platform
class StoreConnectionPlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const StoreConnectionPlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const woocommerce = StoreConnectionPlatformEnum._(r'woocommerce');
  static const prestashop = StoreConnectionPlatformEnum._(r'prestashop');
  static const shopify = StoreConnectionPlatformEnum._(r'shopify');
  static const feed = StoreConnectionPlatformEnum._(r'feed');

  /// List of all possible values in this [enum][StoreConnectionPlatformEnum].
  static const values = <StoreConnectionPlatformEnum>[
    woocommerce,
    prestashop,
    shopify,
    feed,
  ];

  static StoreConnectionPlatformEnum? fromJson(dynamic value) => StoreConnectionPlatformEnumTypeTransformer().decode(value);

  static List<StoreConnectionPlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreConnectionPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreConnectionPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StoreConnectionPlatformEnum] to String,
/// and [decode] dynamic data back to [StoreConnectionPlatformEnum].
class StoreConnectionPlatformEnumTypeTransformer {
  factory StoreConnectionPlatformEnumTypeTransformer() => _instance ??= const StoreConnectionPlatformEnumTypeTransformer._();

  const StoreConnectionPlatformEnumTypeTransformer._();

  String encode(StoreConnectionPlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StoreConnectionPlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StoreConnectionPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'woocommerce': return StoreConnectionPlatformEnum.woocommerce;
        case r'prestashop': return StoreConnectionPlatformEnum.prestashop;
        case r'shopify': return StoreConnectionPlatformEnum.shopify;
        case r'feed': return StoreConnectionPlatformEnum.feed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StoreConnectionPlatformEnumTypeTransformer] instance.
  static StoreConnectionPlatformEnumTypeTransformer? _instance;
}



class StoreConnectionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StoreConnectionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = StoreConnectionStatusEnum._(r'pending');
  static const connected = StoreConnectionStatusEnum._(r'connected');
  static const active = StoreConnectionStatusEnum._(r'active');
  static const syncing = StoreConnectionStatusEnum._(r'syncing');
  static const error = StoreConnectionStatusEnum._(r'error');
  static const disconnected = StoreConnectionStatusEnum._(r'disconnected');

  /// List of all possible values in this [enum][StoreConnectionStatusEnum].
  static const values = <StoreConnectionStatusEnum>[
    pending,
    connected,
    active,
    syncing,
    error,
    disconnected,
  ];

  static StoreConnectionStatusEnum? fromJson(dynamic value) => StoreConnectionStatusEnumTypeTransformer().decode(value);

  static List<StoreConnectionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreConnectionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreConnectionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StoreConnectionStatusEnum] to String,
/// and [decode] dynamic data back to [StoreConnectionStatusEnum].
class StoreConnectionStatusEnumTypeTransformer {
  factory StoreConnectionStatusEnumTypeTransformer() => _instance ??= const StoreConnectionStatusEnumTypeTransformer._();

  const StoreConnectionStatusEnumTypeTransformer._();

  String encode(StoreConnectionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StoreConnectionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StoreConnectionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return StoreConnectionStatusEnum.pending;
        case r'connected': return StoreConnectionStatusEnum.connected;
        case r'active': return StoreConnectionStatusEnum.active;
        case r'syncing': return StoreConnectionStatusEnum.syncing;
        case r'error': return StoreConnectionStatusEnum.error;
        case r'disconnected': return StoreConnectionStatusEnum.disconnected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StoreConnectionStatusEnumTypeTransformer] instance.
  static StoreConnectionStatusEnumTypeTransformer? _instance;
}



class StoreConnectionAuthMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const StoreConnectionAuthMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pluginHandshake = StoreConnectionAuthMethodEnum._(r'plugin_handshake');
  static const apiKey = StoreConnectionAuthMethodEnum._(r'api_key');
  static const oauth = StoreConnectionAuthMethodEnum._(r'oauth');
  static const feedUrl = StoreConnectionAuthMethodEnum._(r'feed_url');

  /// List of all possible values in this [enum][StoreConnectionAuthMethodEnum].
  static const values = <StoreConnectionAuthMethodEnum>[
    pluginHandshake,
    apiKey,
    oauth,
    feedUrl,
  ];

  static StoreConnectionAuthMethodEnum? fromJson(dynamic value) => StoreConnectionAuthMethodEnumTypeTransformer().decode(value);

  static List<StoreConnectionAuthMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreConnectionAuthMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreConnectionAuthMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StoreConnectionAuthMethodEnum] to String,
/// and [decode] dynamic data back to [StoreConnectionAuthMethodEnum].
class StoreConnectionAuthMethodEnumTypeTransformer {
  factory StoreConnectionAuthMethodEnumTypeTransformer() => _instance ??= const StoreConnectionAuthMethodEnumTypeTransformer._();

  const StoreConnectionAuthMethodEnumTypeTransformer._();

  String encode(StoreConnectionAuthMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StoreConnectionAuthMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StoreConnectionAuthMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'plugin_handshake': return StoreConnectionAuthMethodEnum.pluginHandshake;
        case r'api_key': return StoreConnectionAuthMethodEnum.apiKey;
        case r'oauth': return StoreConnectionAuthMethodEnum.oauth;
        case r'feed_url': return StoreConnectionAuthMethodEnum.feedUrl;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StoreConnectionAuthMethodEnumTypeTransformer] instance.
  static StoreConnectionAuthMethodEnumTypeTransformer? _instance;
}


