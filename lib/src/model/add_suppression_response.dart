//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_suppression_response.g.dart';

/// AddSuppressionResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [added] - Number of entries successfully added
/// * [duplicates] - Number of duplicate entries skipped
/// * [invalid] - Number of invalid entries rejected
/// * [total] - Total entries in the request
@BuiltValue()
abstract class AddSuppressionResponse implements Built<AddSuppressionResponse, AddSuppressionResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  /// Number of entries successfully added
  @BuiltValueField(wireName: r'added')
  int? get added;

  /// Number of duplicate entries skipped
  @BuiltValueField(wireName: r'duplicates')
  int? get duplicates;

  /// Number of invalid entries rejected
  @BuiltValueField(wireName: r'invalid')
  int? get invalid;

  /// Total entries in the request
  @BuiltValueField(wireName: r'total')
  int? get total;

  AddSuppressionResponse._();

  factory AddSuppressionResponse([void updates(AddSuppressionResponseBuilder b)]) = _$AddSuppressionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSuppressionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSuppressionResponse> get serializer => _$AddSuppressionResponseSerializer();
}

class _$AddSuppressionResponseSerializer implements PrimitiveSerializer<AddSuppressionResponse> {
  @override
  final Iterable<Type> types = const [AddSuppressionResponse, _$AddSuppressionResponse];

  @override
  final String wireName = r'AddSuppressionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSuppressionResponse object, {
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
    if (object.added != null) {
      yield r'added';
      yield serializers.serialize(
        object.added,
        specifiedType: const FullType(int),
      );
    }
    if (object.duplicates != null) {
      yield r'duplicates';
      yield serializers.serialize(
        object.duplicates,
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
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSuppressionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSuppressionResponseBuilder result,
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
        case r'added':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.added = valueDes;
          break;
        case r'duplicates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duplicates = valueDes;
          break;
        case r'invalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.invalid = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddSuppressionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSuppressionResponseBuilder();
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

