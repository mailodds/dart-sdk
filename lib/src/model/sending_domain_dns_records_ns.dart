//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_dns_records_ns.g.dart';

/// SendingDomainDnsRecordsNs
///
/// Properties:
/// * [type] - Record type (NS)
/// * [host] - NS record host (mo.yourdomain.com)
/// * [targets] - NS target servers
/// * [status] - Verification status
/// * [verifiedAt] 
@BuiltValue()
abstract class SendingDomainDnsRecordsNs implements Built<SendingDomainDnsRecordsNs, SendingDomainDnsRecordsNsBuilder> {
  /// Record type (NS)
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// NS record host (mo.yourdomain.com)
  @BuiltValueField(wireName: r'host')
  String? get host;

  /// NS target servers
  @BuiltValueField(wireName: r'targets')
  BuiltList<String>? get targets;

  /// Verification status
  @BuiltValueField(wireName: r'status')
  SendingDomainDnsRecordsNsStatusEnum? get status;
  // enum statusEnum {  pending,  verified,  };

  @BuiltValueField(wireName: r'verified_at')
  DateTime? get verifiedAt;

  SendingDomainDnsRecordsNs._();

  factory SendingDomainDnsRecordsNs([void updates(SendingDomainDnsRecordsNsBuilder b)]) = _$SendingDomainDnsRecordsNs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainDnsRecordsNsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainDnsRecordsNs> get serializer => _$SendingDomainDnsRecordsNsSerializer();
}

class _$SendingDomainDnsRecordsNsSerializer implements PrimitiveSerializer<SendingDomainDnsRecordsNs> {
  @override
  final Iterable<Type> types = const [SendingDomainDnsRecordsNs, _$SendingDomainDnsRecordsNs];

  @override
  final String wireName = r'SendingDomainDnsRecordsNs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainDnsRecordsNs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.targets != null) {
      yield r'targets';
      yield serializers.serialize(
        object.targets,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SendingDomainDnsRecordsNsStatusEnum),
      );
    }
    if (object.verifiedAt != null) {
      yield r'verified_at';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainDnsRecordsNs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainDnsRecordsNsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'targets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.targets.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainDnsRecordsNsStatusEnum),
          ) as SendingDomainDnsRecordsNsStatusEnum;
          result.status = valueDes;
          break;
        case r'verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.verifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainDnsRecordsNs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainDnsRecordsNsBuilder();
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

class SendingDomainDnsRecordsNsStatusEnum extends EnumClass {

  /// Verification status
  @BuiltValueEnumConst(wireName: r'pending')
  static const SendingDomainDnsRecordsNsStatusEnum pending = _$sendingDomainDnsRecordsNsStatusEnum_pending;
  /// Verification status
  @BuiltValueEnumConst(wireName: r'verified')
  static const SendingDomainDnsRecordsNsStatusEnum verified = _$sendingDomainDnsRecordsNsStatusEnum_verified;

  static Serializer<SendingDomainDnsRecordsNsStatusEnum> get serializer => _$sendingDomainDnsRecordsNsStatusEnumSerializer;

  const SendingDomainDnsRecordsNsStatusEnum._(String name): super(name);

  static BuiltSet<SendingDomainDnsRecordsNsStatusEnum> get values => _$sendingDomainDnsRecordsNsStatusEnumValues;
  static SendingDomainDnsRecordsNsStatusEnum valueOf(String name) => _$sendingDomainDnsRecordsNsStatusEnumValueOf(name);
}

