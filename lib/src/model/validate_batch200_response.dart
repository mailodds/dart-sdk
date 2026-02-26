//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/validation_response.dart';
import 'package:mailodds/src/model/validate_batch200_response_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_batch200_response.g.dart';

/// ValidateBatch200Response
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [total] 
/// * [summary] 
/// * [results] 
@BuiltValue()
abstract class ValidateBatch200Response implements Built<ValidateBatch200Response, ValidateBatch200ResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'summary')
  ValidateBatch200ResponseSummary? get summary;

  @BuiltValueField(wireName: r'results')
  BuiltList<ValidationResponse>? get results;

  ValidateBatch200Response._();

  factory ValidateBatch200Response([void updates(ValidateBatch200ResponseBuilder b)]) = _$ValidateBatch200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateBatch200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateBatch200Response> get serializer => _$ValidateBatch200ResponseSerializer();
}

class _$ValidateBatch200ResponseSerializer implements PrimitiveSerializer<ValidateBatch200Response> {
  @override
  final Iterable<Type> types = const [ValidateBatch200Response, _$ValidateBatch200Response];

  @override
  final String wireName = r'ValidateBatch200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateBatch200Response object, {
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
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(ValidateBatch200ResponseSummary),
      );
    }
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(ValidationResponse)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateBatch200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateBatch200ResponseBuilder result,
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
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidateBatch200ResponseSummary),
          ) as ValidateBatch200ResponseSummary;
          result.summary.replace(valueDes);
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ValidationResponse)]),
          ) as BuiltList<ValidationResponse>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateBatch200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateBatch200ResponseBuilder();
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

