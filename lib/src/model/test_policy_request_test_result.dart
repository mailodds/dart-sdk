//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_policy_request_test_result.g.dart';

/// Mock validation result to test against
///
/// Properties:
/// * [email] 
/// * [status] 
/// * [action] 
/// * [domain] 
/// * [subStatus] 
@BuiltValue()
abstract class TestPolicyRequestTestResult implements Built<TestPolicyRequestTestResult, TestPolicyRequestTestResultBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'action')
  String? get action;

  @BuiltValueField(wireName: r'domain')
  String? get domain;

  @BuiltValueField(wireName: r'sub_status')
  String? get subStatus;

  TestPolicyRequestTestResult._();

  factory TestPolicyRequestTestResult([void updates(TestPolicyRequestTestResultBuilder b)]) = _$TestPolicyRequestTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestPolicyRequestTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestPolicyRequestTestResult> get serializer => _$TestPolicyRequestTestResultSerializer();
}

class _$TestPolicyRequestTestResultSerializer implements PrimitiveSerializer<TestPolicyRequestTestResult> {
  @override
  final Iterable<Type> types = const [TestPolicyRequestTestResult, _$TestPolicyRequestTestResult];

  @override
  final String wireName = r'TestPolicyRequestTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestPolicyRequestTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.subStatus != null) {
      yield r'sub_status';
      yield serializers.serialize(
        object.subStatus,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestPolicyRequestTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TestPolicyRequestTestResultBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'sub_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestPolicyRequestTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestPolicyRequestTestResultBuilder();
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

