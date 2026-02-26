//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_job_request.g.dart';

/// Bulk jobs use the account's default validation policy. To use a specific policy, set it as default via the Policies API.
///
/// Properties:
/// * [emails] - List of emails to validate
/// * [dedup] - Remove duplicate emails
/// * [metadata] - Custom metadata for the job
/// * [webhookUrl] - URL for completion webhook
/// * [idempotencyKey] - Unique key for idempotent requests
@BuiltValue()
abstract class CreateJobRequest implements Built<CreateJobRequest, CreateJobRequestBuilder> {
  /// List of emails to validate
  @BuiltValueField(wireName: r'emails')
  BuiltList<String> get emails;

  /// Remove duplicate emails
  @BuiltValueField(wireName: r'dedup')
  bool? get dedup;

  /// Custom metadata for the job
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// URL for completion webhook
  @BuiltValueField(wireName: r'webhook_url')
  String? get webhookUrl;

  /// Unique key for idempotent requests
  @BuiltValueField(wireName: r'idempotency_key')
  String? get idempotencyKey;

  CreateJobRequest._();

  factory CreateJobRequest([void updates(CreateJobRequestBuilder b)]) = _$CreateJobRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateJobRequestBuilder b) => b
      ..dedup = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateJobRequest> get serializer => _$CreateJobRequestSerializer();
}

class _$CreateJobRequestSerializer implements PrimitiveSerializer<CreateJobRequest> {
  @override
  final Iterable<Type> types = const [CreateJobRequest, _$CreateJobRequest];

  @override
  final String wireName = r'CreateJobRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'emails';
    yield serializers.serialize(
      object.emails,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.dedup != null) {
      yield r'dedup';
      yield serializers.serialize(
        object.dedup,
        specifiedType: const FullType(bool),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.webhookUrl != null) {
      yield r'webhook_url';
      yield serializers.serialize(
        object.webhookUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.idempotencyKey != null) {
      yield r'idempotency_key';
      yield serializers.serialize(
        object.idempotencyKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateJobRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'emails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.emails.replace(valueDes);
          break;
        case r'dedup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dedup = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'webhook_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webhookUrl = valueDes;
          break;
        case r'idempotency_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idempotencyKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateJobRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateJobRequestBuilder();
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

