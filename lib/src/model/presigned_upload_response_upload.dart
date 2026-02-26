//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presigned_upload_response_upload.g.dart';

/// PresignedUploadResponseUpload
///
/// Properties:
/// * [url] 
/// * [fields] 
/// * [s3Key] 
/// * [expiresIn] 
@BuiltValue()
abstract class PresignedUploadResponseUpload implements Built<PresignedUploadResponseUpload, PresignedUploadResponseUploadBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'fields')
  JsonObject? get fields;

  @BuiltValueField(wireName: r's3_key')
  String? get s3Key;

  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  PresignedUploadResponseUpload._();

  factory PresignedUploadResponseUpload([void updates(PresignedUploadResponseUploadBuilder b)]) = _$PresignedUploadResponseUpload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresignedUploadResponseUploadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresignedUploadResponseUpload> get serializer => _$PresignedUploadResponseUploadSerializer();
}

class _$PresignedUploadResponseUploadSerializer implements PrimitiveSerializer<PresignedUploadResponseUpload> {
  @override
  final Iterable<Type> types = const [PresignedUploadResponseUpload, _$PresignedUploadResponseUpload];

  @override
  final String wireName = r'PresignedUploadResponseUpload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresignedUploadResponseUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.s3Key != null) {
      yield r's3_key';
      yield serializers.serialize(
        object.s3Key,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresIn != null) {
      yield r'expires_in';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PresignedUploadResponseUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PresignedUploadResponseUploadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.fields = valueDes;
          break;
        case r's3_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.s3Key = valueDes;
          break;
        case r'expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PresignedUploadResponseUpload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresignedUploadResponseUploadBuilder();
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

