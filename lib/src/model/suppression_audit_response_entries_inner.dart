//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suppression_audit_response_entries_inner.g.dart';

/// SuppressionAuditResponseEntriesInner
///
/// Properties:
/// * [id] 
/// * [eventType] - Audit event type
/// * [eventCategory] 
/// * [details] - Event-specific details
/// * [createdAt] 
@BuiltValue()
abstract class SuppressionAuditResponseEntriesInner implements Built<SuppressionAuditResponseEntriesInner, SuppressionAuditResponseEntriesInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Audit event type
  @BuiltValueField(wireName: r'event_type')
  String? get eventType;

  @BuiltValueField(wireName: r'event_category')
  String? get eventCategory;

  /// Event-specific details
  @BuiltValueField(wireName: r'details')
  JsonObject? get details;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  SuppressionAuditResponseEntriesInner._();

  factory SuppressionAuditResponseEntriesInner([void updates(SuppressionAuditResponseEntriesInnerBuilder b)]) = _$SuppressionAuditResponseEntriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuppressionAuditResponseEntriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuppressionAuditResponseEntriesInner> get serializer => _$SuppressionAuditResponseEntriesInnerSerializer();
}

class _$SuppressionAuditResponseEntriesInnerSerializer implements PrimitiveSerializer<SuppressionAuditResponseEntriesInner> {
  @override
  final Iterable<Type> types = const [SuppressionAuditResponseEntriesInner, _$SuppressionAuditResponseEntriesInner];

  @override
  final String wireName = r'SuppressionAuditResponseEntriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuppressionAuditResponseEntriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.eventType != null) {
      yield r'event_type';
      yield serializers.serialize(
        object.eventType,
        specifiedType: const FullType(String),
      );
    }
    if (object.eventCategory != null) {
      yield r'event_category';
      yield serializers.serialize(
        object.eventCategory,
        specifiedType: const FullType(String),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuppressionAuditResponseEntriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuppressionAuditResponseEntriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'event_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventType = valueDes;
          break;
        case r'event_category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventCategory = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.details = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuppressionAuditResponseEntriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuppressionAuditResponseEntriesInnerBuilder();
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

