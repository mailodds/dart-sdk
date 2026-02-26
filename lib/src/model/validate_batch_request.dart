//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_batch_request.g.dart';

/// ValidateBatchRequest
///
/// Properties:
/// * [emails] - List of emails to validate
/// * [depth] 
/// * [policyId] - Optional policy ID
@BuiltValue()
abstract class ValidateBatchRequest implements Built<ValidateBatchRequest, ValidateBatchRequestBuilder> {
  /// List of emails to validate
  @BuiltValueField(wireName: r'emails')
  BuiltList<String> get emails;

  @BuiltValueField(wireName: r'depth')
  ValidateBatchRequestDepthEnum? get depth;
  // enum depthEnum {  standard,  enhanced,  };

  /// Optional policy ID
  @BuiltValueField(wireName: r'policy_id')
  int? get policyId;

  ValidateBatchRequest._();

  factory ValidateBatchRequest([void updates(ValidateBatchRequestBuilder b)]) = _$ValidateBatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateBatchRequestBuilder b) => b
      ..depth = ValidateBatchRequestDepthEnum.valueOf('enhanced');

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateBatchRequest> get serializer => _$ValidateBatchRequestSerializer();
}

class _$ValidateBatchRequestSerializer implements PrimitiveSerializer<ValidateBatchRequest> {
  @override
  final Iterable<Type> types = const [ValidateBatchRequest, _$ValidateBatchRequest];

  @override
  final String wireName = r'ValidateBatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'emails';
    yield serializers.serialize(
      object.emails,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(ValidateBatchRequestDepthEnum),
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
    ValidateBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateBatchRequestBuilder result,
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
        case r'depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidateBatchRequestDepthEnum),
          ) as ValidateBatchRequestDepthEnum;
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
  ValidateBatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateBatchRequestBuilder();
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

class ValidateBatchRequestDepthEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'standard')
  static const ValidateBatchRequestDepthEnum standard = _$validateBatchRequestDepthEnum_standard;
  @BuiltValueEnumConst(wireName: r'enhanced')
  static const ValidateBatchRequestDepthEnum enhanced = _$validateBatchRequestDepthEnum_enhanced;

  static Serializer<ValidateBatchRequestDepthEnum> get serializer => _$validateBatchRequestDepthEnumSerializer;

  const ValidateBatchRequestDepthEnum._(String name): super(name);

  static BuiltSet<ValidateBatchRequestDepthEnum> get values => _$validateBatchRequestDepthEnumValues;
  static ValidateBatchRequestDepthEnum valueOf(String name) => _$validateBatchRequestDepthEnumValueOf(name);
}

