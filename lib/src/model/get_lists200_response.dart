//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/subscriber_list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_lists200_response.g.dart';

/// GetLists200Response
///
/// Properties:
/// * [lists] 
/// * [total] 
/// * [page] 
/// * [perPage] 
/// * [pages] 
@BuiltValue()
abstract class GetLists200Response implements Built<GetLists200Response, GetLists200ResponseBuilder> {
  @BuiltValueField(wireName: r'lists')
  BuiltList<SubscriberList>? get lists;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'per_page')
  int? get perPage;

  @BuiltValueField(wireName: r'pages')
  int? get pages;

  GetLists200Response._();

  factory GetLists200Response([void updates(GetLists200ResponseBuilder b)]) = _$GetLists200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLists200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLists200Response> get serializer => _$GetLists200ResponseSerializer();
}

class _$GetLists200ResponseSerializer implements PrimitiveSerializer<GetLists200Response> {
  @override
  final Iterable<Type> types = const [GetLists200Response, _$GetLists200Response];

  @override
  final String wireName = r'GetLists200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lists != null) {
      yield r'lists';
      yield serializers.serialize(
        object.lists,
        specifiedType: const FullType(BuiltList, [FullType(SubscriberList)]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.perPage != null) {
      yield r'per_page';
      yield serializers.serialize(
        object.perPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetLists200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubscriberList)]),
          ) as BuiltList<SubscriberList>;
          result.lists.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'per_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perPage = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pages = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetLists200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLists200ResponseBuilder();
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

