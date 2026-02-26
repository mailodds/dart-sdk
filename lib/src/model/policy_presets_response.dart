//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/policy_presets_response_presets_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_presets_response.g.dart';

/// PolicyPresetsResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [presets] 
@BuiltValue()
abstract class PolicyPresetsResponse implements Built<PolicyPresetsResponse, PolicyPresetsResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'presets')
  BuiltList<PolicyPresetsResponsePresetsInner>? get presets;

  PolicyPresetsResponse._();

  factory PolicyPresetsResponse([void updates(PolicyPresetsResponseBuilder b)]) = _$PolicyPresetsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyPresetsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyPresetsResponse> get serializer => _$PolicyPresetsResponseSerializer();
}

class _$PolicyPresetsResponseSerializer implements PrimitiveSerializer<PolicyPresetsResponse> {
  @override
  final Iterable<Type> types = const [PolicyPresetsResponse, _$PolicyPresetsResponse];

  @override
  final String wireName = r'PolicyPresetsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyPresetsResponse object, {
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
    if (object.presets != null) {
      yield r'presets';
      yield serializers.serialize(
        object.presets,
        specifiedType: const FullType(BuiltList, [FullType(PolicyPresetsResponsePresetsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyPresetsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyPresetsResponseBuilder result,
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
        case r'presets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PolicyPresetsResponsePresetsInner)]),
          ) as BuiltList<PolicyPresetsResponsePresetsInner>;
          result.presets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyPresetsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyPresetsResponseBuilder();
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

