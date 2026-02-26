//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_policy200_response.g.dart';

/// DeletePolicy200Response
///
/// Properties:
/// * [deleted] 
/// * [policyId] 
@BuiltValue()
abstract class DeletePolicy200Response implements Built<DeletePolicy200Response, DeletePolicy200ResponseBuilder> {
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  @BuiltValueField(wireName: r'policy_id')
  int? get policyId;

  DeletePolicy200Response._();

  factory DeletePolicy200Response([void updates(DeletePolicy200ResponseBuilder b)]) = _$DeletePolicy200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeletePolicy200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeletePolicy200Response> get serializer => _$DeletePolicy200ResponseSerializer();
}

class _$DeletePolicy200ResponseSerializer implements PrimitiveSerializer<DeletePolicy200Response> {
  @override
  final Iterable<Type> types = const [DeletePolicy200Response, _$DeletePolicy200Response];

  @override
  final String wireName = r'DeletePolicy200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeletePolicy200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.policyId != null) {
      yield r'policy_id';
      yield serializers.serialize(
        object.policyId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeletePolicy200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeletePolicy200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleted = valueDes;
          break;
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.policyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeletePolicy200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePolicy200ResponseBuilder();
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

