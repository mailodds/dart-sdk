//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/batch_deliver_request_structured_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_deliver_request.g.dart';

/// Same fields as DeliverRequest but 'to' accepts up to 100 recipients.
///
/// Properties:
/// * [to] - List of recipient email addresses (max 100)
/// * [from] 
/// * [subject] 
/// * [html] 
/// * [text] 
/// * [domainId] 
/// * [replyTo] 
/// * [headers] 
/// * [tags] 
/// * [campaignType] 
/// * [structuredData] 
/// * [options] 
@BuiltValue()
abstract class BatchDeliverRequest implements Built<BatchDeliverRequest, BatchDeliverRequestBuilder> {
  /// List of recipient email addresses (max 100)
  @BuiltValueField(wireName: r'to')
  BuiltList<String> get to;

  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'subject')
  String get subject;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'domain_id')
  String get domainId;

  @BuiltValueField(wireName: r'reply_to')
  String? get replyTo;

  @BuiltValueField(wireName: r'headers')
  JsonObject? get headers;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'campaign_type')
  String? get campaignType;

  @BuiltValueField(wireName: r'structured_data')
  BatchDeliverRequestStructuredData? get structuredData;

  @BuiltValueField(wireName: r'options')
  JsonObject? get options;

  BatchDeliverRequest._();

  factory BatchDeliverRequest([void updates(BatchDeliverRequestBuilder b)]) = _$BatchDeliverRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchDeliverRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchDeliverRequest> get serializer => _$BatchDeliverRequestSerializer();
}

class _$BatchDeliverRequestSerializer implements PrimitiveSerializer<BatchDeliverRequest> {
  @override
  final Iterable<Type> types = const [BatchDeliverRequest, _$BatchDeliverRequest];

  @override
  final String wireName = r'BatchDeliverRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchDeliverRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    yield r'domain_id';
    yield serializers.serialize(
      object.domainId,
      specifiedType: const FullType(String),
    );
    if (object.replyTo != null) {
      yield r'reply_to';
      yield serializers.serialize(
        object.replyTo,
        specifiedType: const FullType(String),
      );
    }
    if (object.headers != null) {
      yield r'headers';
      yield serializers.serialize(
        object.headers,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.campaignType != null) {
      yield r'campaign_type';
      yield serializers.serialize(
        object.campaignType,
        specifiedType: const FullType(String),
      );
    }
    if (object.structuredData != null) {
      yield r'structured_data';
      yield serializers.serialize(
        object.structuredData,
        specifiedType: const FullType(BatchDeliverRequestStructuredData),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchDeliverRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchDeliverRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.to.replace(valueDes);
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'domain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainId = valueDes;
          break;
        case r'reply_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.replyTo = valueDes;
          break;
        case r'headers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.headers = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'campaign_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.campaignType = valueDes;
          break;
        case r'structured_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchDeliverRequestStructuredData),
          ) as BatchDeliverRequestStructuredData;
          result.structuredData.replace(valueDes);
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.options = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchDeliverRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDeliverRequestBuilder();
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

