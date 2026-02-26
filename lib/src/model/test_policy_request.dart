//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/test_policy_request_test_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_policy_request.g.dart';

/// TestPolicyRequest
///
/// Properties:
/// * [policyId] 
/// * [testResult] 
@BuiltValue()
abstract class TestPolicyRequest implements Built<TestPolicyRequest, TestPolicyRequestBuilder> {
  @BuiltValueField(wireName: r'policy_id')
  int get policyId;

  @BuiltValueField(wireName: r'test_result')
  TestPolicyRequestTestResult get testResult;

  TestPolicyRequest._();

  factory TestPolicyRequest([void updates(TestPolicyRequestBuilder b)]) = _$TestPolicyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestPolicyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestPolicyRequest> get serializer => _$TestPolicyRequestSerializer();
}

class _$TestPolicyRequestSerializer implements PrimitiveSerializer<TestPolicyRequest> {
  @override
  final Iterable<Type> types = const [TestPolicyRequest, _$TestPolicyRequest];

  @override
  final String wireName = r'TestPolicyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'policy_id';
    yield serializers.serialize(
      object.policyId,
      specifiedType: const FullType(int),
    );
    yield r'test_result';
    yield serializers.serialize(
      object.testResult,
      specifiedType: const FullType(TestPolicyRequestTestResult),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TestPolicyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.policyId = valueDes;
          break;
        case r'test_result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestPolicyRequestTestResult),
          ) as TestPolicyRequestTestResult;
          result.testResult.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestPolicyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestPolicyRequestBuilder();
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

