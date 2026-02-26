//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_policy_rule200_response.g.dart';

/// DeletePolicyRule200Response
///
/// Properties:
/// * [deleted] 
@BuiltValue()
abstract class DeletePolicyRule200Response implements Built<DeletePolicyRule200Response, DeletePolicyRule200ResponseBuilder> {
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  DeletePolicyRule200Response._();

  factory DeletePolicyRule200Response([void updates(DeletePolicyRule200ResponseBuilder b)]) = _$DeletePolicyRule200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeletePolicyRule200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeletePolicyRule200Response> get serializer => _$DeletePolicyRule200ResponseSerializer();
}

class _$DeletePolicyRule200ResponseSerializer implements PrimitiveSerializer<DeletePolicyRule200Response> {
  @override
  final Iterable<Type> types = const [DeletePolicyRule200Response, _$DeletePolicyRule200Response];

  @override
  final String wireName = r'DeletePolicyRule200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeletePolicyRule200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeletePolicyRule200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeletePolicyRule200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeletePolicyRule200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePolicyRule200ResponseBuilder();
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

