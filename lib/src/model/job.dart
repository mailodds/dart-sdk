//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/job_artifacts.dart';
import 'package:mailodds/src/model/job_summary.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job.g.dart';

/// Job
///
/// Properties:
/// * [id] 
/// * [name] - Job name (from metadata or auto-generated)
/// * [status] 
/// * [totalCount] 
/// * [processedCount] 
/// * [summary] 
/// * [createdAt] 
/// * [startedAt] - When processing began. Omitted if not yet started.
/// * [completedAt] - Omitted if not yet completed.
/// * [resultsExpireAt] - When job results will be purged
/// * [metadata] - Custom metadata attached at creation
/// * [errorMessage] - Error details. Present only for failed jobs.
/// * [requestId] - Request ID from the job creation request
/// * [artifacts] 
@BuiltValue()
abstract class Job implements Built<Job, JobBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Job name (from metadata or auto-generated)
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'status')
  JobStatusEnum get status;
  // enum statusEnum {  pending,  processing,  completed,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'total_count')
  int get totalCount;

  @BuiltValueField(wireName: r'processed_count')
  int get processedCount;

  @BuiltValueField(wireName: r'summary')
  JobSummary? get summary;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// When processing began. Omitted if not yet started.
  @BuiltValueField(wireName: r'started_at')
  DateTime? get startedAt;

  /// Omitted if not yet completed.
  @BuiltValueField(wireName: r'completed_at')
  DateTime? get completedAt;

  /// When job results will be purged
  @BuiltValueField(wireName: r'results_expire_at')
  DateTime get resultsExpireAt;

  /// Custom metadata attached at creation
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// Error details. Present only for failed jobs.
  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  /// Request ID from the job creation request
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'artifacts')
  JobArtifacts? get artifacts;

  Job._();

  factory Job([void updates(JobBuilder b)]) = _$Job;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Job> get serializer => _$JobSerializer();
}

class _$JobSerializer implements PrimitiveSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];

  @override
  final String wireName = r'Job';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Job object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(JobStatusEnum),
    );
    yield r'total_count';
    yield serializers.serialize(
      object.totalCount,
      specifiedType: const FullType(int),
    );
    yield r'processed_count';
    yield serializers.serialize(
      object.processedCount,
      specifiedType: const FullType(int),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(JobSummary),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.startedAt != null) {
      yield r'started_at';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.completedAt != null) {
      yield r'completed_at';
      yield serializers.serialize(
        object.completedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'results_expire_at';
    yield serializers.serialize(
      object.resultsExpireAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
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
    if (object.artifacts != null) {
      yield r'artifacts';
      yield serializers.serialize(
        object.artifacts,
        specifiedType: const FullType(JobArtifacts),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Job object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JobStatusEnum),
          ) as JobStatusEnum;
          result.status = valueDes;
          break;
        case r'total_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'processed_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.processedCount = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JobSummary),
          ) as JobSummary;
          result.summary.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'started_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'completed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.completedAt = valueDes;
          break;
        case r'results_expire_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.resultsExpireAt = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'request_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        case r'artifacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JobArtifacts),
          ) as JobArtifacts;
          result.artifacts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Job deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobBuilder();
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

class JobStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const JobStatusEnum pending = _$jobStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'processing')
  static const JobStatusEnum processing = _$jobStatusEnum_processing;
  @BuiltValueEnumConst(wireName: r'completed')
  static const JobStatusEnum completed = _$jobStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const JobStatusEnum failed = _$jobStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const JobStatusEnum cancelled = _$jobStatusEnum_cancelled;

  static Serializer<JobStatusEnum> get serializer => _$jobStatusEnumSerializer;

  const JobStatusEnum._(String name): super(name);

  static BuiltSet<JobStatusEnum> get values => _$jobStatusEnumValues;
  static JobStatusEnum valueOf(String name) => _$jobStatusEnumValueOf(name);
}

