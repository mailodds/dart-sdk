//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'deliver_request_structured_data.g.dart';

/// JSON-LD structured data (object, array, or string). Max 10KB.
@BuiltValue()
abstract class DeliverRequestStructuredData implements Built<DeliverRequestStructuredData, DeliverRequestStructuredDataBuilder> {
  /// One Of [BuiltList<JsonObject>], [JsonObject], [String]
  OneOf get oneOf;

  DeliverRequestStructuredData._();

  factory DeliverRequestStructuredData([void updates(DeliverRequestStructuredDataBuilder b)]) = _$DeliverRequestStructuredData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliverRequestStructuredDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliverRequestStructuredData> get serializer => _$DeliverRequestStructuredDataSerializer();
}

class _$DeliverRequestStructuredDataSerializer implements PrimitiveSerializer<DeliverRequestStructuredData> {
  @override
  final Iterable<Type> types = const [DeliverRequestStructuredData, _$DeliverRequestStructuredData];

  @override
  final String wireName = r'DeliverRequestStructuredData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliverRequestStructuredData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliverRequestStructuredData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  DeliverRequestStructuredData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverRequestStructuredDataBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(JsonObject), FullType(BuiltList, [FullType.nullable(JsonObject)]), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

