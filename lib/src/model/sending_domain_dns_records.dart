//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/sending_domain_dns_records_ns.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_dns_records.g.dart';

/// DNS records for domain verification
///
/// Properties:
/// * [ns] 
@BuiltValue()
abstract class SendingDomainDnsRecords implements Built<SendingDomainDnsRecords, SendingDomainDnsRecordsBuilder> {
  @BuiltValueField(wireName: r'ns')
  SendingDomainDnsRecordsNs? get ns;

  SendingDomainDnsRecords._();

  factory SendingDomainDnsRecords([void updates(SendingDomainDnsRecordsBuilder b)]) = _$SendingDomainDnsRecords;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainDnsRecordsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainDnsRecords> get serializer => _$SendingDomainDnsRecordsSerializer();
}

class _$SendingDomainDnsRecordsSerializer implements PrimitiveSerializer<SendingDomainDnsRecords> {
  @override
  final Iterable<Type> types = const [SendingDomainDnsRecords, _$SendingDomainDnsRecords];

  @override
  final String wireName = r'SendingDomainDnsRecords';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainDnsRecords object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ns != null) {
      yield r'ns';
      yield serializers.serialize(
        object.ns,
        specifiedType: const FullType(SendingDomainDnsRecordsNs),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainDnsRecords object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainDnsRecordsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendingDomainDnsRecordsNs),
          ) as SendingDomainDnsRecordsNs;
          result.ns.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainDnsRecords deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainDnsRecordsBuilder();
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

