//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/validation_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'results_response.g.dart';

/// ResultsResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [results] 
/// * [pagination] 
@BuiltValue()
abstract class ResultsResponse implements Built<ResultsResponse, ResultsResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'results')
  BuiltList<ValidationResult>? get results;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  ResultsResponse._();

  factory ResultsResponse([void updates(ResultsResponseBuilder b)]) = _$ResultsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResultsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResultsResponse> get serializer => _$ResultsResponseSerializer();
}

class _$ResultsResponseSerializer implements PrimitiveSerializer<ResultsResponse> {
  @override
  final Iterable<Type> types = const [ResultsResponse, _$ResultsResponse];

  @override
  final String wireName = r'ResultsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResultsResponse object, {
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
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(ValidationResult)]),
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
    ResultsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResultsResponseBuilder result,
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
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ValidationResult)]),
          ) as BuiltList<ValidationResult>;
          result.results.replace(valueDes);
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
  ResultsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResultsResponseBuilder();
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

