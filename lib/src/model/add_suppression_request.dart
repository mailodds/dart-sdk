//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/add_suppression_request_entries_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_suppression_request.g.dart';

/// AddSuppressionRequest
///
/// Properties:
/// * [entries] 
@BuiltValue()
abstract class AddSuppressionRequest implements Built<AddSuppressionRequest, AddSuppressionRequestBuilder> {
  @BuiltValueField(wireName: r'entries')
  BuiltList<AddSuppressionRequestEntriesInner> get entries;

  AddSuppressionRequest._();

  factory AddSuppressionRequest([void updates(AddSuppressionRequestBuilder b)]) = _$AddSuppressionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSuppressionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSuppressionRequest> get serializer => _$AddSuppressionRequestSerializer();
}

class _$AddSuppressionRequestSerializer implements PrimitiveSerializer<AddSuppressionRequest> {
  @override
  final Iterable<Type> types = const [AddSuppressionRequest, _$AddSuppressionRequest];

  @override
  final String wireName = r'AddSuppressionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSuppressionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(AddSuppressionRequestEntriesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSuppressionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSuppressionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AddSuppressionRequestEntriesInner)]),
          ) as BuiltList<AddSuppressionRequestEntriesInner>;
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
  AddSuppressionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSuppressionRequestBuilder();
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

