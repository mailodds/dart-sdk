//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_request.g.dart';

/// ValidateRequest
///
/// Properties:
/// * [email] - Email address to validate
/// * [depth] - Validation depth. 'standard' skips SMTP verification.
/// * [policyId] - Optional policy ID to use instead of default policy
@BuiltValue()
abstract class ValidateRequest implements Built<ValidateRequest, ValidateRequestBuilder> {
  /// Email address to validate
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Validation depth. 'standard' skips SMTP verification.
  @BuiltValueField(wireName: r'depth')
  ValidateRequestDepthEnum? get depth;
  // enum depthEnum {  standard,  enhanced,  };

  /// Optional policy ID to use instead of default policy
  @BuiltValueField(wireName: r'policy_id')
  int? get policyId;

  ValidateRequest._();

  factory ValidateRequest([void updates(ValidateRequestBuilder b)]) = _$ValidateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateRequestBuilder b) => b
      ..depth = ValidateRequestDepthEnum.valueOf('enhanced');

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateRequest> get serializer => _$ValidateRequestSerializer();
}

class _$ValidateRequestSerializer implements PrimitiveSerializer<ValidateRequest> {
  @override
  final Iterable<Type> types = const [ValidateRequest, _$ValidateRequest];

  @override
  final String wireName = r'ValidateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(ValidateRequestDepthEnum),
      );
    }
    if (object.policyId != null) {
      yield r'policy_id';
      yield serializers.serialize(
        object.policyId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidateRequestDepthEnum),
          ) as ValidateRequestDepthEnum;
          result.depth = valueDes;
          break;
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.policyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateRequestBuilder();
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

class ValidateRequestDepthEnum extends EnumClass {

  /// Validation depth. 'standard' skips SMTP verification.
  @BuiltValueEnumConst(wireName: r'standard')
  static const ValidateRequestDepthEnum standard = _$validateRequestDepthEnum_standard;
  /// Validation depth. 'standard' skips SMTP verification.
  @BuiltValueEnumConst(wireName: r'enhanced')
  static const ValidateRequestDepthEnum enhanced = _$validateRequestDepthEnum_enhanced;

  static Serializer<ValidateRequestDepthEnum> get serializer => _$validateRequestDepthEnumSerializer;

  const ValidateRequestDepthEnum._(String name): super(name);

  static BuiltSet<ValidateRequestDepthEnum> get values => _$validateRequestDepthEnumValues;
  static ValidateRequestDepthEnum valueOf(String name) => _$validateRequestDepthEnumValueOf(name);
}

