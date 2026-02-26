//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/get_sending_stats200_response_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sending_stats200_response.g.dart';

/// GetSendingStats200Response
///
/// Properties:
/// * [stats] 
@BuiltValue()
abstract class GetSendingStats200Response implements Built<GetSendingStats200Response, GetSendingStats200ResponseBuilder> {
  @BuiltValueField(wireName: r'stats')
  GetSendingStats200ResponseStats? get stats;

  GetSendingStats200Response._();

  factory GetSendingStats200Response([void updates(GetSendingStats200ResponseBuilder b)]) = _$GetSendingStats200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSendingStats200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSendingStats200Response> get serializer => _$GetSendingStats200ResponseSerializer();
}

class _$GetSendingStats200ResponseSerializer implements PrimitiveSerializer<GetSendingStats200Response> {
  @override
  final Iterable<Type> types = const [GetSendingStats200Response, _$GetSendingStats200Response];

  @override
  final String wireName = r'GetSendingStats200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSendingStats200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(GetSendingStats200ResponseStats),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSendingStats200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSendingStats200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetSendingStats200ResponseStats),
          ) as GetSendingStats200ResponseStats;
          result.stats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSendingStats200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSendingStats200ResponseBuilder();
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

