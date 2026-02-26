//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/pagination.dart';
import 'package:mailodds/src/model/job.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_list_response.g.dart';

/// JobListResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [jobs] 
/// * [pagination] 
@BuiltValue()
abstract class JobListResponse implements Built<JobListResponse, JobListResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'jobs')
  BuiltList<Job>? get jobs;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  JobListResponse._();

  factory JobListResponse([void updates(JobListResponseBuilder b)]) = _$JobListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JobListResponse> get serializer => _$JobListResponseSerializer();
}

class _$JobListResponseSerializer implements PrimitiveSerializer<JobListResponse> {
  @override
  final Iterable<Type> types = const [JobListResponse, _$JobListResponse];

  @override
  final String wireName = r'JobListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobListResponse object, {
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
    if (object.jobs != null) {
      yield r'jobs';
      yield serializers.serialize(
        object.jobs,
        specifiedType: const FullType(BuiltList, [FullType(Job)]),
      );
    }
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(Pagination),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JobListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobListResponseBuilder result,
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
        case r'jobs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Job)]),
          ) as BuiltList<Job>;
          result.jobs.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Pagination),
          ) as Pagination;
          result.pagination.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JobListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobListResponseBuilder();
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

