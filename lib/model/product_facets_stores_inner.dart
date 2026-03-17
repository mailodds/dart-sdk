//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;

class ProductFacetsStoresInner {
  /// Returns a new [ProductFacetsStoresInner] instance.
  ProductFacetsStoresInner({
    this.storeId,
    this.storeName,
    this.count,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storeId;

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
  int? count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductFacetsStoresInner &&
    other.storeId == storeId &&
    other.storeName == storeName &&
    other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storeId == null ? 0 : storeId!.hashCode) +
    (storeName == null ? 0 : storeName!.hashCode) +
    (count == null ? 0 : count!.hashCode);

  @override
  String toString() => 'ProductFacetsStoresInner[storeId=$storeId, storeName=$storeName, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.storeId != null) {
      json[r'store_id'] = this.storeId;
    } else {
      json[r'store_id'] = null;
    }
    if (this.storeName != null) {
      json[r'store_name'] = this.storeName;
    } else {
      json[r'store_name'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    return json;
  }

  /// Returns a new [ProductFacetsStoresInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductFacetsStoresInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductFacetsStoresInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductFacetsStoresInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductFacetsStoresInner(
        storeId: mapValueOfType<String>(json, r'store_id'),
        storeName: mapValueOfType<String>(json, r'store_name'),
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<ProductFacetsStoresInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductFacetsStoresInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductFacetsStoresInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductFacetsStoresInner> mapFromJson(dynamic json) {
    final map = <String, ProductFacetsStoresInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductFacetsStoresInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductFacetsStoresInner-objects as value to a dart map
  static Map<String, List<ProductFacetsStoresInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductFacetsStoresInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductFacetsStoresInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

