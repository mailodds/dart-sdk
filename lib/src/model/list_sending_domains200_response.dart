//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_sending_domains200_response.g.dart';

/// ListSendingDomains200Response
///
/// Properties:
/// * [domains] 
@BuiltValue()
abstract class ListSendingDomains200Response implements Built<ListSendingDomains200Response, ListSendingDomains200ResponseBuilder> {
  @BuiltValueField(wireName: r'domains')
  BuiltList<SendingDomain>? get domains;

  ListSendingDomains200Response._();

  factory ListSendingDomains200Response([void updates(ListSendingDomains200ResponseBuilder b)]) = _$ListSendingDomains200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListSendingDomains200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListSendingDomains200Response> get serializer => _$ListSendingDomains200ResponseSerializer();
}

class _$ListSendingDomains200ResponseSerializer implements PrimitiveSerializer<ListSendingDomains200Response> {
  @override
  final Iterable<Type> types = const [ListSendingDomains200Response, _$ListSendingDomains200Response];

  @override
  final String wireName = r'ListSendingDomains200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListSendingDomains200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(SendingDomain)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListSendingDomains200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListSendingDomains200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendingDomain)]),
          ) as BuiltList<SendingDomain>;
          result.domains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListSendingDomains200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSendingDomains200ResponseBuilder();
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

