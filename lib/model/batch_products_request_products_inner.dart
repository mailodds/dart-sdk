//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class BatchProductsRequestProductsInner {
  /// Returns a new [BatchProductsRequestProductsInner] instance.
  BatchProductsRequestProductsInner({
    required this.externalId,
    required this.title,
    required this.productUrl,
    this.sku,
    this.description,
    this.priceCurrent,
    this.priceOriginal,
    this.currency,
    this.stockStatus,
    this.stockQuantity,
    this.imageUrl,
    this.additionalImages = const [],
    this.categories = const [],
    this.tags = const [],
    this.variants = const [],
  });

  String externalId;

  String title;

  String productUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sku;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? priceCurrent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? priceOriginal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  BatchProductsRequestProductsInnerStockStatusEnum? stockStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stockQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  List<String> additionalImages;

  List<String> categories;

  List<String> tags;

  List<Object> variants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchProductsRequestProductsInner &&
    other.externalId == externalId &&
    other.title == title &&
    other.productUrl == productUrl &&
    other.sku == sku &&
    other.description == description &&
    other.priceCurrent == priceCurrent &&
    other.priceOriginal == priceOriginal &&
    other.currency == currency &&
    other.stockStatus == stockStatus &&
    other.stockQuantity == stockQuantity &&
    other.imageUrl == imageUrl &&
    _deepEquality.equals(other.additionalImages, additionalImages) &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.variants, variants);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (externalId.hashCode) +
    (title.hashCode) +
    (productUrl.hashCode) +
    (sku == null ? 0 : sku!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (priceCurrent == null ? 0 : priceCurrent!.hashCode) +
    (priceOriginal == null ? 0 : priceOriginal!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (stockStatus == null ? 0 : stockStatus!.hashCode) +
    (stockQuantity == null ? 0 : stockQuantity!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (additionalImages.hashCode) +
    (categories.hashCode) +
    (tags.hashCode) +
    (variants.hashCode);

  @override
  String toString() => 'BatchProductsRequestProductsInner[externalId=$externalId, title=$title, productUrl=$productUrl, sku=$sku, description=$description, priceCurrent=$priceCurrent, priceOriginal=$priceOriginal, currency=$currency, stockStatus=$stockStatus, stockQuantity=$stockQuantity, imageUrl=$imageUrl, additionalImages=$additionalImages, categories=$categories, tags=$tags, variants=$variants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'external_id'] = this.externalId;
      json[r'title'] = this.title;
      json[r'product_url'] = this.productUrl;
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
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
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
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
      json[r'additional_images'] = this.additionalImages;
      json[r'categories'] = this.categories;
      json[r'tags'] = this.tags;
      json[r'variants'] = this.variants;
    return json;
  }

  /// Returns a new [BatchProductsRequestProductsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchProductsRequestProductsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchProductsRequestProductsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchProductsRequestProductsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchProductsRequestProductsInner(
        externalId: mapValueOfType<String>(json, r'external_id')!,
        title: mapValueOfType<String>(json, r'title')!,
        productUrl: mapValueOfType<String>(json, r'product_url')!,
        sku: mapValueOfType<String>(json, r'sku'),
        description: mapValueOfType<String>(json, r'description'),
        priceCurrent: num.parse('${json[r'price_current']}'),
        priceOriginal: num.parse('${json[r'price_original']}'),
        currency: mapValueOfType<String>(json, r'currency'),
        stockStatus: BatchProductsRequestProductsInnerStockStatusEnum.fromJson(json[r'stock_status']),
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
        variants: json[r'variants'] is List ? (json[r'variants'] as List).cast<Object>().toList(growable: false) : const [],
      );
    }
    return null;
  }

  static List<BatchProductsRequestProductsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchProductsRequestProductsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchProductsRequestProductsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchProductsRequestProductsInner> mapFromJson(dynamic json) {
    final map = <String, BatchProductsRequestProductsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchProductsRequestProductsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchProductsRequestProductsInner-objects as value to a dart map
  static Map<String, List<BatchProductsRequestProductsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchProductsRequestProductsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchProductsRequestProductsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'external_id',
    'title',
    'product_url',
  };
}


class BatchProductsRequestProductsInnerStockStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BatchProductsRequestProductsInnerStockStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const inStock = BatchProductsRequestProductsInnerStockStatusEnum._(r'in_stock');
  static const outOfStock = BatchProductsRequestProductsInnerStockStatusEnum._(r'out_of_stock');
  static const onBackorder = BatchProductsRequestProductsInnerStockStatusEnum._(r'on_backorder');
  static const preorder = BatchProductsRequestProductsInnerStockStatusEnum._(r'preorder');

  /// List of all possible values in this [enum][BatchProductsRequestProductsInnerStockStatusEnum].
  static const values = <BatchProductsRequestProductsInnerStockStatusEnum>[
    inStock,
    outOfStock,
    onBackorder,
    preorder,
  ];

  static BatchProductsRequestProductsInnerStockStatusEnum? fromJson(dynamic value) => BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer().decode(value);

  static List<BatchProductsRequestProductsInnerStockStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchProductsRequestProductsInnerStockStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchProductsRequestProductsInnerStockStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BatchProductsRequestProductsInnerStockStatusEnum] to String,
/// and [decode] dynamic data back to [BatchProductsRequestProductsInnerStockStatusEnum].
class BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer {
  factory BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer() => _instance ??= const BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer._();

  const BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer._();

  String encode(BatchProductsRequestProductsInnerStockStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BatchProductsRequestProductsInnerStockStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BatchProductsRequestProductsInnerStockStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'in_stock': return BatchProductsRequestProductsInnerStockStatusEnum.inStock;
        case r'out_of_stock': return BatchProductsRequestProductsInnerStockStatusEnum.outOfStock;
        case r'on_backorder': return BatchProductsRequestProductsInnerStockStatusEnum.onBackorder;
        case r'preorder': return BatchProductsRequestProductsInnerStockStatusEnum.preorder;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer] instance.
  static BatchProductsRequestProductsInnerStockStatusEnumTypeTransformer? _instance;
}


