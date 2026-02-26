//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_check_response.g.dart';

/// SuppressionCheckResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [email] 
/// * [suppressed] 
/// * [matchType] 
/// * [matchValue] 
@BuiltValue()
abstract class SuppressionCheckResponse implements Built<SuppressionCheckResponse, SuppressionCheckResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'suppressed')
  bool? get suppressed;

  @BuiltValueField(wireName: r'match_type')
  SuppressionCheckResponseMatchTypeEnum? get matchType;
  // enum matchTypeEnum {  email,  domain,  };

  @BuiltValueField(wireName: r'match_value')
  String? get matchValue;

  SuppressionCheckResponse._();

  factory SuppressionCheckResponse([void updates(SuppressionCheckResponseBuilder b)]) = _$SuppressionCheckResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionCheckResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionCheckResponse> get serializer => _$SuppressionCheckResponseSerializer();
}

class _$SuppressionCheckResponseSerializer implements PrimitiveSerializer<SuppressionCheckResponse> {
  @override
  final Iterable<Type> types = const [SuppressionCheckResponse, _$SuppressionCheckResponse];

  @override
  final String wireName = r'SuppressionCheckResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionCheckResponse object, {
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
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.suppressed != null) {
      yield r'suppressed';
      yield serializers.serialize(
        object.suppressed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.matchType != null) {
      yield r'match_type';
      yield serializers.serialize(
        object.matchType,
        specifiedType: const FullType(SuppressionCheckResponseMatchTypeEnum),
      );
    }
    if (object.matchValue != null) {
      yield r'match_value';
      yield serializers.serialize(
        object.matchValue,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionCheckResponseBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'suppressed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suppressed = valueDes;
          break;
        case r'match_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuppressionCheckResponseMatchTypeEnum),
          ) as SuppressionCheckResponseMatchTypeEnum;
          result.matchType = valueDes;
          break;
        case r'match_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matchValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuppressionCheckResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionCheckResponseBuilder();
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

class SuppressionCheckResponseMatchTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const SuppressionCheckResponseMatchTypeEnum email = _$suppressionCheckResponseMatchTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'domain')
  static const SuppressionCheckResponseMatchTypeEnum domain = _$suppressionCheckResponseMatchTypeEnum_domain;

  static Serializer<SuppressionCheckResponseMatchTypeEnum> get serializer => _$suppressionCheckResponseMatchTypeEnumSerializer;

  const SuppressionCheckResponseMatchTypeEnum._(String name): super(name);

  static BuiltSet<SuppressionCheckResponseMatchTypeEnum> get values => _$suppressionCheckResponseMatchTypeEnumValues;
  static SuppressionCheckResponseMatchTypeEnum valueOf(String name) => _$suppressionCheckResponseMatchTypeEnumValueOf(name);
}

