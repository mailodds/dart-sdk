//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_summary.g.dart';

/// JobSummary
///
/// Properties:
/// * [valid] 
/// * [invalid] 
/// * [catchAll] 
/// * [doNotMail] 
/// * [unknown] 
/// * [cancelledPending] 
@BuiltValue()
abstract class JobSummary implements Built<JobSummary, JobSummaryBuilder> {
  @BuiltValueField(wireName: r'valid')
  int? get valid;

  @BuiltValueField(wireName: r'invalid')
  int? get invalid;

  @BuiltValueField(wireName: r'catch_all')
  int? get catchAll;

  @BuiltValueField(wireName: r'do_not_mail')
  int? get doNotMail;

  @BuiltValueField(wireName: r'unknown')
  int? get unknown;

  @BuiltValueField(wireName: r'cancelled_pending')
  int? get cancelledPending;

  JobSummary._();

  factory JobSummary([void updates(JobSummaryBuilder b)]) = _$JobSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JobSummary> get serializer => _$JobSummarySerializer();
}

class _$JobSummarySerializer implements PrimitiveSerializer<JobSummary> {
  @override
  final Iterable<Type> types = const [JobSummary, _$JobSummary];

  @override
  final String wireName = r'JobSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.valid != null) {
      yield r'valid';
      yield serializers.serialize(
        object.valid,
        specifiedType: const FullType(int),
      );
    }
    if (object.invalid != null) {
      yield r'invalid';
      yield serializers.serialize(
        object.invalid,
        specifiedType: const FullType(int),
      );
    }
    if (object.catchAll != null) {
      yield r'catch_all';
      yield serializers.serialize(
        object.catchAll,
        specifiedType: const FullType(int),
      );
    }
    if (object.doNotMail != null) {
      yield r'do_not_mail';
      yield serializers.serialize(
        object.doNotMail,
        specifiedType: const FullType(int),
      );
    }
    if (object.unknown != null) {
      yield r'unknown';
      yield serializers.serialize(
        object.unknown,
        specifiedType: const FullType(int),
      );
    }
    if (object.cancelledPending != null) {
      yield r'cancelled_pending';
      yield serializers.serialize(
        object.cancelledPending,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JobSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.valid = valueDes;
          break;
        case r'invalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.invalid = valueDes;
          break;
        case r'catch_all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.catchAll = valueDes;
          break;
        case r'do_not_mail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.doNotMail = valueDes;
          break;
        case r'unknown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unknown = valueDes;
          break;
        case r'cancelled_pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cancelledPending = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JobSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobSummaryBuilder();
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

