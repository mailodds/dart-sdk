//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_artifacts.g.dart';

/// Download URLs for completed jobs. Present only when status is completed.
///
/// Properties:
/// * [csvAll] - CSV with all results
/// * [csvValid] - CSV with valid emails only
/// * [csvInvalid] - CSV with invalid emails only
@BuiltValue()
abstract class JobArtifacts implements Built<JobArtifacts, JobArtifactsBuilder> {
  /// CSV with all results
  @BuiltValueField(wireName: r'csv_all')
  String? get csvAll;

  /// CSV with valid emails only
  @BuiltValueField(wireName: r'csv_valid')
  String? get csvValid;

  /// CSV with invalid emails only
  @BuiltValueField(wireName: r'csv_invalid')
  String? get csvInvalid;

  JobArtifacts._();

  factory JobArtifacts([void updates(JobArtifactsBuilder b)]) = _$JobArtifacts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobArtifactsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JobArtifacts> get serializer => _$JobArtifactsSerializer();
}

class _$JobArtifactsSerializer implements PrimitiveSerializer<JobArtifacts> {
  @override
  final Iterable<Type> types = const [JobArtifacts, _$JobArtifacts];

  @override
  final String wireName = r'JobArtifacts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobArtifacts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.csvAll != null) {
      yield r'csv_all';
      yield serializers.serialize(
        object.csvAll,
        specifiedType: const FullType(String),
      );
    }
    if (object.csvValid != null) {
      yield r'csv_valid';
      yield serializers.serialize(
        object.csvValid,
        specifiedType: const FullType(String),
      );
    }
    if (object.csvInvalid != null) {
      yield r'csv_invalid';
      yield serializers.serialize(
        object.csvInvalid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JobArtifacts object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobArtifactsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'csv_all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.csvAll = valueDes;
          break;
        case r'csv_valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.csvValid = valueDes;
          break;
        case r'csv_invalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.csvInvalid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JobArtifacts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobArtifactsBuilder();
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

