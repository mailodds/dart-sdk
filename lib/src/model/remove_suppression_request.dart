//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remove_suppression_request.g.dart';

/// RemoveSuppressionRequest
///
/// Properties:
/// * [entries] 
@BuiltValue()
abstract class RemoveSuppressionRequest implements Built<RemoveSuppressionRequest, RemoveSuppressionRequestBuilder> {
  @BuiltValueField(wireName: r'entries')
  BuiltList<String> get entries;

  RemoveSuppressionRequest._();

  factory RemoveSuppressionRequest([void updates(RemoveSuppressionRequestBuilder b)]) = _$RemoveSuppressionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoveSuppressionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoveSuppressionRequest> get serializer => _$RemoveSuppressionRequestSerializer();
}

class _$RemoveSuppressionRequestSerializer implements PrimitiveSerializer<RemoveSuppressionRequest> {
  @override
  final Iterable<Type> types = const [RemoveSuppressionRequest, _$RemoveSuppressionRequest];

  @override
  final String wireName = r'RemoveSuppressionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoveSuppressionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoveSuppressionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RemoveSuppressionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.entries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoveSuppressionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveSuppressionRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

