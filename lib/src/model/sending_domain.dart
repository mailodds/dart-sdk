//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain_dns_records.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain.g.dart';

/// SendingDomain
///
/// Properties:
/// * [id] - Domain UUID
/// * [domain] - Domain name
/// * [domainType] - Domain type (ns_delegated)
/// * [status] - Domain verification status
/// * [dkimSelector] - DKIM selector (e.g. mo1)
/// * [dnsRecords] 
/// * [bimiSvgUrl] - BIMI SVG logo URL
/// * [bimiVmcUrl] - BIMI VMC certificate URL
/// * [bimiEnabled] - Whether BIMI is enabled
/// * [forwardRepliesTo] - Reply forwarding address
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class SendingDomain implements Built<SendingDomain, SendingDomainBuilder> {
  /// Domain UUID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Domain name
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  /// Domain type (ns_delegated)
  @BuiltValueField(wireName: r'domain_type')
  String? get domainType;

  /// Domain verification status
  @BuiltValueField(wireName: r'status')
  SendingDomainStatusEnum? get status;
  // enum statusEnum {  pending_dns,  dns_partial,  active,  suspended,  };

  /// DKIM selector (e.g. mo1)
  @BuiltValueField(wireName: r'dkim_selector')
  String? get dkimSelector;

  @BuiltValueField(wireName: r'dns_records')
  SendingDomainDnsRecords? get dnsRecords;

  /// BIMI SVG logo URL
  @BuiltValueField(wireName: r'bimi_svg_url')
  String? get bimiSvgUrl;

  /// BIMI VMC certificate URL
  @BuiltValueField(wireName: r'bimi_vmc_url')
  String? get bimiVmcUrl;

  /// Whether BIMI is enabled
  @BuiltValueField(wireName: r'bimi_enabled')
  bool? get bimiEnabled;

  /// Reply forwarding address
  @BuiltValueField(wireName: r'forward_replies_to')
  String? get forwardRepliesTo;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  SendingDomain._();

  factory SendingDomain([void updates(SendingDomainBuilder b)]) = _$SendingDomain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomain> get serializer => _$SendingDomainSerializer();
}

class _$SendingDomainSerializer implements PrimitiveSerializer<SendingDomain> {
  @override
  final Iterable<Type> types = const [SendingDomain, _$SendingDomain];

  @override
  final String wireName = r'SendingDomain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.domainType != null) {
      yield r'domain_type';
      yield serializers.serialize(
        object.domainType,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SendingDomainStatusEnum),
      );
    }
    if (object.dkimSelector != null) {
      yield r'dkim_selector';
      yield serializers.serialize(
        object.dkimSelector,
        specifiedType: const FullType(String),
      );
    }
    if (object.dnsRecords != null) {
      yield r'dns_records';
      yield serializers.serialize(
        object.dnsRecords,
        specifiedType: const FullType(SendingDomainDnsRecords),
      );
    }
    if (object.bimiSvgUrl != null) {
      yield r'bimi_svg_url';
      yield serializers.serialize(
        object.bimiSvgUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bimiVmcUrl != null) {
      yield r'bimi_vmc_url';
      yield serializers.serialize(
        object.bimiVmcUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bimiEnabled != null) {
      yield r'bimi_enabled';
      yield serializers.serialize(
        object.bimiEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.forwardRepliesTo != null) {
      yield r'forward_replies_to';
      yield serializers.serialize(
        object.forwardRepliesTo,
        specifiedType: const FullType.nullable(String),
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
    SendingDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainBuilder result,
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
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        case r'domain_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainStatusEnum),
          ) as SendingDomainStatusEnum;
          result.status = valueDes;
          break;
        case r'dkim_selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dkimSelector = valueDes;
          break;
        case r'dns_records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainDnsRecords),
          ) as SendingDomainDnsRecords;
          result.dnsRecords.replace(valueDes);
          break;
        case r'bimi_svg_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bimiSvgUrl = valueDes;
          break;
        case r'bimi_vmc_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bimiVmcUrl = valueDes;
          break;
        case r'bimi_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bimiEnabled = valueDes;
          break;
        case r'forward_replies_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.forwardRepliesTo = valueDes;
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
  SendingDomain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainBuilder();
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

class SendingDomainStatusEnum extends EnumClass {

  /// Domain verification status
  @BuiltValueEnumConst(wireName: r'pending_dns')
  static const SendingDomainStatusEnum pendingDns = _$sendingDomainStatusEnum_pendingDns;
  /// Domain verification status
  @BuiltValueEnumConst(wireName: r'dns_partial')
  static const SendingDomainStatusEnum dnsPartial = _$sendingDomainStatusEnum_dnsPartial;
  /// Domain verification status
  @BuiltValueEnumConst(wireName: r'active')
  static const SendingDomainStatusEnum active = _$sendingDomainStatusEnum_active;
  /// Domain verification status
  @BuiltValueEnumConst(wireName: r'suspended')
  static const SendingDomainStatusEnum suspended = _$sendingDomainStatusEnum_suspended;

  static Serializer<SendingDomainStatusEnum> get serializer => _$sendingDomainStatusEnumSerializer;

  const SendingDomainStatusEnum._(String name): super(name);

  static BuiltSet<SendingDomainStatusEnum> get values => _$sendingDomainStatusEnumValues;
  static SendingDomainStatusEnum valueOf(String name) => _$sendingDomainStatusEnumValueOf(name);
}

