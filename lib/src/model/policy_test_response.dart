//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_test_response.g.dart';

/// PolicyTestResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [original] - Original validation result before policy
/// * [modified] - Result after policy applied
/// * [matchedRule] - The rule that matched, or null if none matched
/// * [rulesEvaluated] 
@BuiltValue()
abstract class PolicyTestResponse implements Built<PolicyTestResponse, PolicyTestResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  /// Original validation result before policy
  @BuiltValueField(wireName: r'original')
  JsonObject? get original;

  /// Result after policy applied
  @BuiltValueField(wireName: r'modified')
  JsonObject? get modified;

  /// The rule that matched, or null if none matched
  @BuiltValueField(wireName: r'matched_rule')
  JsonObject? get matchedRule;

  @BuiltValueField(wireName: r'rules_evaluated')
  int? get rulesEvaluated;

  PolicyTestResponse._();

  factory PolicyTestResponse([void updates(PolicyTestResponseBuilder b)]) = _$PolicyTestResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyTestResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyTestResponse> get serializer => _$PolicyTestResponseSerializer();
}

class _$PolicyTestResponseSerializer implements PrimitiveSerializer<PolicyTestResponse> {
  @override
  final Iterable<Type> types = const [PolicyTestResponse, _$PolicyTestResponse];

  @override
  final String wireName = r'PolicyTestResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyTestResponse object, {
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
    if (object.original != null) {
      yield r'original';
      yield serializers.serialize(
        object.original,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.modified != null) {
      yield r'modified';
      yield serializers.serialize(
        object.modified,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.matchedRule != null) {
      yield r'matched_rule';
      yield serializers.serialize(
        object.matchedRule,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.rulesEvaluated != null) {
      yield r'rules_evaluated';
      yield serializers.serialize(
        object.rulesEvaluated,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyTestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PolicyTestResponseBuilder result,
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
        case r'original':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.original = valueDes;
          break;
        case r'modified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.modified = valueDes;
          break;
        case r'matched_rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.matchedRule = valueDes;
          break;
        case r'rules_evaluated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rulesEvaluated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyTestResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyTestResponseBuilder();
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

