//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_job_from_s3_request.g.dart';

/// CreateJobFromS3Request
///
/// Properties:
/// * [s3Key] - S3 key from presigned upload
/// * [dedup] 
@BuiltValue()
abstract class CreateJobFromS3Request implements Built<CreateJobFromS3Request, CreateJobFromS3RequestBuilder> {
  /// S3 key from presigned upload
  @BuiltValueField(wireName: r's3_key')
  String get s3Key;

  @BuiltValueField(wireName: r'dedup')
  bool? get dedup;

  CreateJobFromS3Request._();

  factory CreateJobFromS3Request([void updates(CreateJobFromS3RequestBuilder b)]) = _$CreateJobFromS3Request;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateJobFromS3RequestBuilder b) => b
      ..dedup = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateJobFromS3Request> get serializer => _$CreateJobFromS3RequestSerializer();
}

class _$CreateJobFromS3RequestSerializer implements PrimitiveSerializer<CreateJobFromS3Request> {
  @override
  final Iterable<Type> types = const [CreateJobFromS3Request, _$CreateJobFromS3Request];

  @override
  final String wireName = r'CreateJobFromS3Request';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateJobFromS3Request object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r's3_key';
    yield serializers.serialize(
      object.s3Key,
      specifiedType: const FullType(String),
    );
    if (object.dedup != null) {
      yield r'dedup';
      yield serializers.serialize(
        object.dedup,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateJobFromS3Request object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateJobFromS3RequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r's3_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.s3Key = valueDes;
          break;
        case r'dedup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dedup = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateJobFromS3Request deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateJobFromS3RequestBuilder();
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

