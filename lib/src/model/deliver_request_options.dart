//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deliver_request_options.g.dart';

/// DeliverRequestOptions
///
/// Properties:
/// * [validateFirst] - Validate recipients before sending
@BuiltValue()
abstract class DeliverRequestOptions implements Built<DeliverRequestOptions, DeliverRequestOptionsBuilder> {
  /// Validate recipients before sending
  @BuiltValueField(wireName: r'validate_first')
  bool? get validateFirst;

  DeliverRequestOptions._();

  factory DeliverRequestOptions([void updates(DeliverRequestOptionsBuilder b)]) = _$DeliverRequestOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliverRequestOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliverRequestOptions> get serializer => _$DeliverRequestOptionsSerializer();
}

class _$DeliverRequestOptionsSerializer implements PrimitiveSerializer<DeliverRequestOptions> {
  @override
  final Iterable<Type> types = const [DeliverRequestOptions, _$DeliverRequestOptions];

  @override
  final String wireName = r'DeliverRequestOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliverRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.validateFirst != null) {
      yield r'validate_first';
      yield serializers.serialize(
        object.validateFirst,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliverRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliverRequestOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'validate_first':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.validateFirst = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliverRequestOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliverRequestOptionsBuilder();
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

