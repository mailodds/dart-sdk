//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductFacets {
  /// Returns a new [ProductFacets] instance.
  ProductFacets({
    this.categories = const [],
    this.priceRanges = const [],
    this.stores = const [],
  });

  List<ProductFacetsCategoriesInner> categories;

  List<ProductFacetsPriceRangesInner> priceRanges;

  List<ProductFacetsStoresInner> stores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductFacets &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.priceRanges, priceRanges) &&
    _deepEquality.equals(other.stores, stores);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categories.hashCode) +
    (priceRanges.hashCode) +
    (stores.hashCode);

  @override
  String toString() => 'ProductFacets[categories=$categories, priceRanges=$priceRanges, stores=$stores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'categories'] = this.categories;
      json[r'price_ranges'] = this.priceRanges;
      json[r'stores'] = this.stores;
    return json;
  }

  /// Returns a new [ProductFacets] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductFacets? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductFacets[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductFacets[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductFacets(
        categories: ProductFacetsCategoriesInner.listFromJson(json[r'categories']),
        priceRanges: ProductFacetsPriceRangesInner.listFromJson(json[r'price_ranges']),
        stores: ProductFacetsStoresInner.listFromJson(json[r'stores']),
      );
    }
    return null;
  }

  static List<ProductFacets> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductFacets>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductFacets.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductFacets> mapFromJson(dynamic json) {
    final map = <String, ProductFacets>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductFacets.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductFacets-objects as value to a dart map
  static Map<String, List<ProductFacets>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductFacets>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductFacets.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

