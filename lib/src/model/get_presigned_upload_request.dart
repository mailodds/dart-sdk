//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_presigned_upload_request.g.dart';

/// GetPresignedUploadRequest
///
/// Properties:
/// * [filename] - Original filename
/// * [contentType] - File MIME type
@BuiltValue()
abstract class GetPresignedUploadRequest implements Built<GetPresignedUploadRequest, GetPresignedUploadRequestBuilder> {
  /// Original filename
  @BuiltValueField(wireName: r'filename')
  String get filename;

  /// File MIME type
  @BuiltValueField(wireName: r'content_type')
  String? get contentType;

  GetPresignedUploadRequest._();

  factory GetPresignedUploadRequest([void updates(GetPresignedUploadRequestBuilder b)]) = _$GetPresignedUploadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPresignedUploadRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPresignedUploadRequest> get serializer => _$GetPresignedUploadRequestSerializer();
}

class _$GetPresignedUploadRequestSerializer implements PrimitiveSerializer<GetPresignedUploadRequest> {
  @override
  final Iterable<Type> types = const [GetPresignedUploadRequest, _$GetPresignedUploadRequest];

  @override
  final String wireName = r'GetPresignedUploadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPresignedUploadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filename';
    yield serializers.serialize(
      object.filename,
      specifiedType: const FullType(String),
    );
    if (object.contentType != null) {
      yield r'content_type';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetPresignedUploadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetPresignedUploadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        case r'content_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetPresignedUploadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPresignedUploadRequestBuilder();
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

