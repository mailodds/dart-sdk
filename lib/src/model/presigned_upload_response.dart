//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/presigned_upload_response_upload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presigned_upload_response.g.dart';

/// PresignedUploadResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [upload] 
@BuiltValue()
abstract class PresignedUploadResponse implements Built<PresignedUploadResponse, PresignedUploadResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'upload')
  PresignedUploadResponseUpload? get upload;

  PresignedUploadResponse._();

  factory PresignedUploadResponse([void updates(PresignedUploadResponseBuilder b)]) = _$PresignedUploadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresignedUploadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresignedUploadResponse> get serializer => _$PresignedUploadResponseSerializer();
}

class _$PresignedUploadResponseSerializer implements PrimitiveSerializer<PresignedUploadResponse> {
  @override
  final Iterable<Type> types = const [PresignedUploadResponse, _$PresignedUploadResponse];

  @override
  final String wireName = r'PresignedUploadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresignedUploadResponse object, {
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
    if (object.upload != null) {
      yield r'upload';
      yield serializers.serialize(
        object.upload,
        specifiedType: const FullType(PresignedUploadResponseUpload),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PresignedUploadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PresignedUploadResponseBuilder result,
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
        case r'upload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PresignedUploadResponseUpload),
          ) as PresignedUploadResponseUpload;
          result.upload.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PresignedUploadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresignedUploadResponseBuilder();
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

