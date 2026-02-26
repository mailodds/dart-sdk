//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_list_request.g.dart';

/// CreateListRequest
///
/// Properties:
/// * [name] - List name (unique per account)
/// * [description] - Optional list description
/// * [confirmationRedirectUrl] - URL to redirect subscribers after confirmation
/// * [confirmationSubject] - Custom confirmation email subject
/// * [confirmationFromName] - Custom sender name for confirmation emails
@BuiltValue()
abstract class CreateListRequest implements Built<CreateListRequest, CreateListRequestBuilder> {
  /// List name (unique per account)
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Optional list description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// URL to redirect subscribers after confirmation
  @BuiltValueField(wireName: r'confirmation_redirect_url')
  String? get confirmationRedirectUrl;

  /// Custom confirmation email subject
  @BuiltValueField(wireName: r'confirmation_subject')
  String? get confirmationSubject;

  /// Custom sender name for confirmation emails
  @BuiltValueField(wireName: r'confirmation_from_name')
  String? get confirmationFromName;

  CreateListRequest._();

  factory CreateListRequest([void updates(CreateListRequestBuilder b)]) = _$CreateListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateListRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateListRequest> get serializer => _$CreateListRequestSerializer();
}

class _$CreateListRequestSerializer implements PrimitiveSerializer<CreateListRequest> {
  @override
  final Iterable<Type> types = const [CreateListRequest, _$CreateListRequest];

  @override
  final String wireName = r'CreateListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmationRedirectUrl != null) {
      yield r'confirmation_redirect_url';
      yield serializers.serialize(
        object.confirmationRedirectUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmationSubject != null) {
      yield r'confirmation_subject';
      yield serializers.serialize(
        object.confirmationSubject,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmationFromName != null) {
      yield r'confirmation_from_name';
      yield serializers.serialize(
        object.confirmationFromName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateListRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'confirmation_redirect_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmationRedirectUrl = valueDes;
          break;
        case r'confirmation_subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmationSubject = valueDes;
          break;
        case r'confirmation_from_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmationFromName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateListRequestBuilder();
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

