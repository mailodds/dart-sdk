//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/job.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_response.g.dart';

/// JobResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [job] 
@BuiltValue()
abstract class JobResponse implements Built<JobResponse, JobResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'job')
  Job? get job;

  JobResponse._();

  factory JobResponse([void updates(JobResponseBuilder b)]) = _$JobResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JobResponse> get serializer => _$JobResponseSerializer();
}

class _$JobResponseSerializer implements PrimitiveSerializer<JobResponse> {
  @override
  final Iterable<Type> types = const [JobResponse, _$JobResponse];

  @override
  final String wireName = r'JobResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobResponse object, {
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
    if (object.job != null) {
      yield r'job';
      yield serializers.serialize(
        object.job,
        specifiedType: const FullType(Job),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JobResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobResponseBuilder result,
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
        case r'job':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Job),
          ) as Job;
          result.job.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JobResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobResponseBuilder();
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

