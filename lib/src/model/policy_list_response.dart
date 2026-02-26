//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/policy_list_response_limits.dart';
import 'package:mailodds/src/model/policy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_list_response.g.dart';

/// PolicyListResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [policies] 
/// * [limits] 
@BuiltValue()
abstract class PolicyListResponse implements Built<PolicyListResponse, PolicyListResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'policies')
  BuiltList<Policy>? get policies;

  @BuiltValueField(wireName: r'limits')
  PolicyListResponseLimits? get limits;

  PolicyListResponse._();

  factory PolicyListResponse([void updates(PolicyListResponseBuilder b)]) = _$PolicyListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyListResponse> get serializer => _$PolicyListResponseSerializer();
}

class _$PolicyListResponseSerializer implements PrimitiveSerializer<PolicyListResponse> {
  @override
  final Iterable<Type> types = const [PolicyListResponse, _$PolicyListResponse];

  @override
  final String wireName = r'PolicyListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyListResponse object, {
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
    if (object.policies != null) {
      yield r'policies';
      yield serializers.serialize(
        object.policies,
        specifiedType: const FullType(BuiltList, [FullType(Policy)]),
      );
    }
    if (object.limits != null) {
      yield r'limits';
      yield serializers.serialize(
        object.limits,
        specifiedType: const FullType(PolicyListResponseLimits),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyListResponseBuilder result,
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
        case r'policies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Policy)]),
          ) as BuiltList<Policy>;
          result.policies.replace(valueDes);
          break;
        case r'limits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyListResponseLimits),
          ) as PolicyListResponseLimits;
          result.limits.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyListResponseBuilder();
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

