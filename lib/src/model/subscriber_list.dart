//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscriber_list.g.dart';

/// SubscriberList
///
/// Properties:
/// * [id] - List UUID
/// * [accountId] - Account ID
/// * [name] - List name
/// * [description] - List description
/// * [confirmationRedirectUrl] - Redirect URL after confirmation
/// * [confirmationSubject] - Confirmation email subject
/// * [confirmationFromName] - Confirmation email sender name
/// * [subscriberCount] - Total subscriber count
/// * [confirmedCount] - Confirmed subscriber count
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class SubscriberList implements Built<SubscriberList, SubscriberListBuilder> {
  /// List UUID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Account ID
  @BuiltValueField(wireName: r'account_id')
  int? get accountId;

  /// List name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// List description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Redirect URL after confirmation
  @BuiltValueField(wireName: r'confirmation_redirect_url')
  String? get confirmationRedirectUrl;

  /// Confirmation email subject
  @BuiltValueField(wireName: r'confirmation_subject')
  String? get confirmationSubject;

  /// Confirmation email sender name
  @BuiltValueField(wireName: r'confirmation_from_name')
  String? get confirmationFromName;

  /// Total subscriber count
  @BuiltValueField(wireName: r'subscriber_count')
  int? get subscriberCount;

  /// Confirmed subscriber count
  @BuiltValueField(wireName: r'confirmed_count')
  int? get confirmedCount;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  SubscriberList._();

  factory SubscriberList([void updates(SubscriberListBuilder b)]) = _$SubscriberList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriberListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriberList> get serializer => _$SubscriberListSerializer();
}

class _$SubscriberListSerializer implements PrimitiveSerializer<SubscriberList> {
  @override
  final Iterable<Type> types = const [SubscriberList, _$SubscriberList];

  @override
  final String wireName = r'SubscriberList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriberList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountId != null) {
      yield r'account_id';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.confirmationRedirectUrl != null) {
      yield r'confirmation_redirect_url';
      yield serializers.serialize(
        object.confirmationRedirectUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.confirmationSubject != null) {
      yield r'confirmation_subject';
      yield serializers.serialize(
        object.confirmationSubject,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.confirmationFromName != null) {
      yield r'confirmation_from_name';
      yield serializers.serialize(
        object.confirmationFromName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subscriberCount != null) {
      yield r'subscriber_count';
      yield serializers.serialize(
        object.subscriberCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.confirmedCount != null) {
      yield r'confirmed_count';
      yield serializers.serialize(
        object.confirmedCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriberList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriberListBuilder result,
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
        case r'account_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'confirmation_redirect_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confirmationRedirectUrl = valueDes;
          break;
        case r'confirmation_subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confirmationSubject = valueDes;
          break;
        case r'confirmation_from_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confirmationFromName = valueDes;
          break;
        case r'subscriber_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.subscriberCount = valueDes;
          break;
        case r'confirmed_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.confirmedCount = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriberList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriberListBuilder();
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

