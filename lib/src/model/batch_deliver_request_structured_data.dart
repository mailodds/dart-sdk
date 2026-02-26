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

part 'batch_deliver_request_structured_data.g.dart';

/// BatchDeliverRequestStructuredData
@BuiltValue()
abstract class BatchDeliverRequestStructuredData implements Built<BatchDeliverRequestStructuredData, BatchDeliverRequestStructuredDataBuilder> {
  /// One Of [BuiltList<JsonObject>], [JsonObject], [String]
  OneOf get oneOf;

  BatchDeliverRequestStructuredData._();

  factory BatchDeliverRequestStructuredData([void updates(BatchDeliverRequestStructuredDataBuilder b)]) = _$BatchDeliverRequestStructuredData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchDeliverRequestStructuredDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchDeliverRequestStructuredData> get serializer => _$BatchDeliverRequestStructuredDataSerializer();
}

class _$BatchDeliverRequestStructuredDataSerializer implements PrimitiveSerializer<BatchDeliverRequestStructuredData> {
  @override
  final Iterable<Type> types = const [BatchDeliverRequestStructuredData, _$BatchDeliverRequestStructuredData];

  @override
  final String wireName = r'BatchDeliverRequestStructuredData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchDeliverRequestStructuredData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchDeliverRequestStructuredData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  BatchDeliverRequestStructuredData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDeliverRequestStructuredDataBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(JsonObject), FullType(BuiltList, [FullType.nullable(JsonObject)]), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

