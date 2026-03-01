//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mailodds/src/model/suppression_audit_response_entries_inner.dart';
import 'package:mailodds/src/model/pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_audit_response.g.dart';

/// SuppressionAuditResponse
///
/// Properties:
/// * [schemaVersion] 
/// * [requestId] - Unique request identifier
/// * [entries] 
/// * [pagination] 
@BuiltValue()
abstract class SuppressionAuditResponse implements Built<SuppressionAuditResponse, SuppressionAuditResponseBuilder> {
  @BuiltValueField(wireName: r'schema_version')
  String? get schemaVersion;

  /// Unique request identifier
  @BuiltValueField(wireName: r'request_id')
  String? get requestId;

  @BuiltValueField(wireName: r'entries')
  BuiltList<SuppressionAuditResponseEntriesInner>? get entries;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  SuppressionAuditResponse._();

  factory SuppressionAuditResponse([void updates(SuppressionAuditResponseBuilder b)]) = _$SuppressionAuditResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionAuditResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionAuditResponse> get serializer => _$SuppressionAuditResponseSerializer();
}

class _$SuppressionAuditResponseSerializer implements PrimitiveSerializer<SuppressionAuditResponse> {
  @override
  final Iterable<Type> types = const [SuppressionAuditResponse, _$SuppressionAuditResponse];

  @override
  final String wireName = r'SuppressionAuditResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionAuditResponse object, {
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
    if (object.entries != null) {
      yield r'entries';
      yield serializers.serialize(
        object.entries,
        specifiedType: const FullType(BuiltList, [FullType(SuppressionAuditResponseEntriesInner)]),
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
    SuppressionAuditResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionAuditResponseBuilder result,
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
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SuppressionAuditResponseEntriesInner)]),
          ) as BuiltList<SuppressionAuditResponseEntriesInner>;
          result.entries.replace(valueDes);
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
  SuppressionAuditResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionAuditResponseBuilder();
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

