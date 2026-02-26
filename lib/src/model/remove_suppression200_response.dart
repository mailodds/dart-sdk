//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remove_suppression200_response.g.dart';

/// RemoveSuppression200Response
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [removed] 
@BuiltValue()
abstract class RemoveSuppression200Response implements Built<RemoveSuppression200Response, RemoveSuppression200ResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'removed')
  int? get removed;

  RemoveSuppression200Response._();

  factory RemoveSuppression200Response([void updates(RemoveSuppression200ResponseBuilder b)]) = _$RemoveSuppression200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoveSuppression200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoveSuppression200Response> get serializer => _$RemoveSuppression200ResponseSerializer();
}

class _$RemoveSuppression200ResponseSerializer implements PrimitiveSerializer<RemoveSuppression200Response> {
  @override
  final Iterable<Type> types = const [RemoveSuppression200Response, _$RemoveSuppression200Response];

  @override
  final String wireName = r'RemoveSuppression200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoveSuppression200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schemaVersion != null) {
      yield r'schema_version';
      yield serializers.serialize(
        object.schemaVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestId != null) {
      yield r'request_id';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(String),
      );
    }
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoveSuppression200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RemoveSuppression200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schema_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schemaVersion = valueDes;
          break;
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.removed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoveSuppression200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveSuppression200ResponseBuilder();
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

