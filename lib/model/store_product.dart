//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class StoreProduct {
  /// Returns a new [StoreProduct] instance.
  StoreProduct({
    this.id,
    this.storeId,
    this.externalId,
    this.sku,
    this.title,
    this.description,
    this.priceCurrent,
    this.priceOriginal,
    this.currency = 'USD',
    this.saleStart,
    this.saleEnd,
    this.stockStatus,
    this.stockQuantity,
    this.imageUrl,
    this.additionalImages = const [],
    this.categories = const [],
    this.tags = const [],
    this.productUrl,
    this.variants = const [],
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  /// Product UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Store connection UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storeId;

  /// Product ID in the source store
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  String? sku;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  String? description;

  /// Current price
  num? priceCurrent;

  /// Original price (before discount)
  num? priceOriginal;

  String currency;

  DateTime? saleStart;

  DateTime? saleEnd;

  StoreProductStockStatusEnum? stockStatus;

  int? stockQuantity;

  String? imageUrl;

  List<String>? additionalImages;

  List<String>? categories;

  List<String>? tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productUrl;

  List<Object>? variants;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

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
  bool operator ==(Object other) => identical(this, other) || other is StoreProduct &&
    other.id == id &&
    other.storeId == storeId &&
    other.externalId == externalId &&
    other.sku == sku &&
    other.title == title &&
    other.description == description &&
    other.priceCurrent == priceCurrent &&
    other.priceOriginal == priceOriginal &&
    other.currency == currency &&
    other.saleStart == saleStart &&
    other.saleEnd == saleEnd &&
    other.stockStatus == stockStatus &&
    other.stockQuantity == stockQuantity &&
    other.imageUrl == imageUrl &&
    _deepEquality.equals(other.additionalImages, additionalImages) &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.tags, tags) &&
    other.productUrl == productUrl &&
    _deepEquality.equals(other.variants, variants) &&
    other.isActive == isActive &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (storeId == null ? 0 : storeId!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (sku == null ? 0 : sku!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (priceCurrent == null ? 0 : priceCurrent!.hashCode) +
    (priceOriginal == null ? 0 : priceOriginal!.hashCode) +
    (currency.hashCode) +
    (saleStart == null ? 0 : saleStart!.hashCode) +
    (saleEnd == null ? 0 : saleEnd!.hashCode) +
    (stockStatus == null ? 0 : stockStatus!.hashCode) +
    (stockQuantity == null ? 0 : stockQuantity!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (additionalImages == null ? 0 : additionalImages!.hashCode) +
    (categories == null ? 0 : categories!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (productUrl == null ? 0 : productUrl!.hashCode) +
    (variants == null ? 0 : variants!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'StoreProduct[id=$id, storeId=$storeId, externalId=$externalId, sku=$sku, title=$title, description=$description, priceCurrent=$priceCurrent, priceOriginal=$priceOriginal, currency=$currency, saleStart=$saleStart, saleEnd=$saleEnd, stockStatus=$stockStatus, stockQuantity=$stockQuantity, imageUrl=$imageUrl, additionalImages=$additionalImages, categories=$categories, tags=$tags, productUrl=$productUrl, variants=$variants, isActive=$isActive, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.storeId != null) {
      json[r'store_id'] = this.storeId;
    } else {
      json[r'store_id'] = null;
    }
    if (this.externalId != null) {
      json[r'external_id'] = this.externalId;
    } else {
      json[r'external_id'] = null;
    }
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.priceCurrent != null) {
      json[r'price_current'] = this.priceCurrent;
    } else {
      json[r'price_current'] = null;
    }
    if (this.priceOriginal != null) {
      json[r'price_original'] = this.priceOriginal;
    } else {
      json[r'price_original'] = null;
    }
      json[r'currency'] = this.currency;
    if (this.saleStart != null) {
      json[r'sale_start'] = this.saleStart!.toUtc().toIso8601String();
    } else {
      json[r'sale_start'] = null;
    }
    if (this.saleEnd != null) {
      json[r'sale_end'] = this.saleEnd!.toUtc().toIso8601String();
    } else {
      json[r'sale_end'] = null;
    }
    if (this.stockStatus != null) {
      json[r'stock_status'] = this.stockStatus;
    } else {
      json[r'stock_status'] = null;
    }
    if (this.stockQuantity != null) {
      json[r'stock_quantity'] = this.stockQuantity;
    } else {
      json[r'stock_quantity'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.additionalImages != null) {
      json[r'additional_images'] = this.additionalImages;
    } else {
      json[r'additional_images'] = null;
    }
    if (this.categories != null) {
      json[r'categories'] = this.categories;
    } else {
      json[r'categories'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.productUrl != null) {
      json[r'product_url'] = this.productUrl;
    } else {
      json[r'product_url'] = null;
    }
    if (this.variants != null) {
      json[r'variants'] = this.variants;
    } else {
      json[r'variants'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
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

  /// Returns a new [StoreProduct] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoreProduct? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoreProduct[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoreProduct[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoreProduct(
        id: mapValueOfType<String>(json, r'id'),
        storeId: mapValueOfType<String>(json, r'store_id'),
        externalId: mapValueOfType<String>(json, r'external_id'),
        sku: mapValueOfType<String>(json, r'sku'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        priceCurrent: json[r'price_current'] == null
            ? null
            : num.parse('${json[r'price_current']}'),
        priceOriginal: json[r'price_original'] == null
            ? null
            : num.parse('${json[r'price_original']}'),
        currency: mapValueOfType<String>(json, r'currency') ?? 'USD',
        saleStart: mapDateTime(json, r'sale_start', r''),
        saleEnd: mapDateTime(json, r'sale_end', r''),
        stockStatus: StoreProductStockStatusEnum.fromJson(json[r'stock_status']),
        stockQuantity: mapValueOfType<int>(json, r'stock_quantity'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        additionalImages: json[r'additional_images'] is Iterable
            ? (json[r'additional_images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        productUrl: mapValueOfType<String>(json, r'product_url'),
        variants: json[r'variants'] is List ? (json[r'variants'] as List).cast<Object>().toList(growable: false) : const [],
        isActive: mapValueOfType<bool>(json, r'is_active'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<StoreProduct> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreProduct>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreProduct.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoreProduct> mapFromJson(dynamic json) {
    final map = <String, StoreProduct>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoreProduct.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoreProduct-objects as value to a dart map
  static Map<String, List<StoreProduct>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoreProduct>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoreProduct.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class StoreProductStockStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StoreProductStockStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const inStock = StoreProductStockStatusEnum._(r'in_stock');
  static const outOfStock = StoreProductStockStatusEnum._(r'out_of_stock');
  static const onBackorder = StoreProductStockStatusEnum._(r'on_backorder');
  static const preorder = StoreProductStockStatusEnum._(r'preorder');

  /// List of all possible values in this [enum][StoreProductStockStatusEnum].
  static const values = <StoreProductStockStatusEnum>[
    inStock,
    outOfStock,
    onBackorder,
    preorder,
  ];

  static StoreProductStockStatusEnum? fromJson(dynamic value) => StoreProductStockStatusEnumTypeTransformer().decode(value);

  static List<StoreProductStockStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoreProductStockStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoreProductStockStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StoreProductStockStatusEnum] to String,
/// and [decode] dynamic data back to [StoreProductStockStatusEnum].
class StoreProductStockStatusEnumTypeTransformer {
  factory StoreProductStockStatusEnumTypeTransformer() => _instance ??= const StoreProductStockStatusEnumTypeTransformer._();

  const StoreProductStockStatusEnumTypeTransformer._();

  String encode(StoreProductStockStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StoreProductStockStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StoreProductStockStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'in_stock': return StoreProductStockStatusEnum.inStock;
        case r'out_of_stock': return StoreProductStockStatusEnum.outOfStock;
        case r'on_backorder': return StoreProductStockStatusEnum.onBackorder;
        case r'preorder': return StoreProductStockStatusEnum.preorder;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StoreProductStockStatusEnumTypeTransformer] instance.
  static StoreProductStockStatusEnumTypeTransformer? _instance;
}


