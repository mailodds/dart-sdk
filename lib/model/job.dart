//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Job {
  /// Returns a new [Job] instance.
  Job({
    required this.id,
    required this.name,
    required this.status,
    required this.totalCount,
    required this.processedCount,
    this.summary,
    required this.createdAt,
    this.startedAt,
    this.completedAt,
    required this.resultsExpireAt,
    this.metadata,
    this.errorMessage,
    this.requestId,
    this.artifacts,
  });

  String id;

  /// Job name (from metadata or auto-generated)
  String name;

  JobStatusEnum status;

  int totalCount;

  int processedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JobSummary? summary;

  DateTime createdAt;

  /// When processing began. Omitted if not yet started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  /// Omitted if not yet completed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? completedAt;

  /// When job results will be purged
  DateTime resultsExpireAt;

  /// Custom metadata attached at creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  /// Error details. Present only for failed jobs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  /// Request ID from the job creation request
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JobArtifacts? artifacts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Job &&
    other.id == id &&
    other.name == name &&
    other.status == status &&
    other.totalCount == totalCount &&
    other.processedCount == processedCount &&
    other.summary == summary &&
    other.createdAt == createdAt &&
    other.startedAt == startedAt &&
    other.completedAt == completedAt &&
    other.resultsExpireAt == resultsExpireAt &&
    other.metadata == metadata &&
    other.errorMessage == errorMessage &&
    other.requestId == requestId &&
    other.artifacts == artifacts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (totalCount.hashCode) +
    (processedCount.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (createdAt.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (resultsExpireAt.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (artifacts == null ? 0 : artifacts!.hashCode);

  @override
  String toString() => 'Job[id=$id, name=$name, status=$status, totalCount=$totalCount, processedCount=$processedCount, summary=$summary, createdAt=$createdAt, startedAt=$startedAt, completedAt=$completedAt, resultsExpireAt=$resultsExpireAt, metadata=$metadata, errorMessage=$errorMessage, requestId=$requestId, artifacts=$artifacts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'total_count'] = this.totalCount;
      json[r'processed_count'] = this.processedCount;
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'started_at'] = null;
    }
    if (this.completedAt != null) {
      json[r'completed_at'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completed_at'] = null;
    }
      json[r'results_expire_at'] = this.resultsExpireAt.toUtc().toIso8601String();
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.errorMessage != null) {
      json[r'error_message'] = this.errorMessage;
    } else {
      json[r'error_message'] = null;
    }
    if (this.requestId != null) {
      json[r'request_id'] = this.requestId;
    } else {
      json[r'request_id'] = null;
    }
    if (this.artifacts != null) {
      json[r'artifacts'] = this.artifacts;
    } else {
      json[r'artifacts'] = null;
    }
    return json;
  }

  /// Returns a new [Job] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Job? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Job[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Job[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Job(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: JobStatusEnum.fromJson(json[r'status'])!,
        totalCount: mapValueOfType<int>(json, r'total_count')!,
        processedCount: mapValueOfType<int>(json, r'processed_count')!,
        summary: JobSummary.fromJson(json[r'summary']),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        startedAt: mapDateTime(json, r'started_at', r''),
        completedAt: mapDateTime(json, r'completed_at', r''),
        resultsExpireAt: mapDateTime(json, r'results_expire_at', r'')!,
        metadata: mapValueOfType<Object>(json, r'metadata'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        artifacts: JobArtifacts.fromJson(json[r'artifacts']),
      );
    }
    return null;
  }

  static List<Job> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Job>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Job.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Job> mapFromJson(dynamic json) {
    final map = <String, Job>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Job.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Job-objects as value to a dart map
  static Map<String, List<Job>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Job>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Job.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'status',
    'total_count',
    'processed_count',
    'created_at',
    'results_expire_at',
  };
}


class JobStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const JobStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = JobStatusEnum._(r'pending');
  static const processing = JobStatusEnum._(r'processing');
  static const completed = JobStatusEnum._(r'completed');
  static const failed = JobStatusEnum._(r'failed');
  static const cancelled = JobStatusEnum._(r'cancelled');

  /// List of all possible values in this [enum][JobStatusEnum].
  static const values = <JobStatusEnum>[
    pending,
    processing,
    completed,
    failed,
    cancelled,
  ];

  static JobStatusEnum? fromJson(dynamic value) => JobStatusEnumTypeTransformer().decode(value);

  static List<JobStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JobStatusEnum] to String,
/// and [decode] dynamic data back to [JobStatusEnum].
class JobStatusEnumTypeTransformer {
  factory JobStatusEnumTypeTransformer() => _instance ??= const JobStatusEnumTypeTransformer._();

  const JobStatusEnumTypeTransformer._();

  String encode(JobStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JobStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JobStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return JobStatusEnum.pending;
        case r'processing': return JobStatusEnum.processing;
        case r'completed': return JobStatusEnum.completed;
        case r'failed': return JobStatusEnum.failed;
        case r'cancelled': return JobStatusEnum.cancelled;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JobStatusEnumTypeTransformer] instance.
  static JobStatusEnumTypeTransformer? _instance;
}


