//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mailodds/src/model/identity_score_check.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_domain_identity_score_breakdown.g.dart';

/// Per-check scoring breakdown
///
/// Properties:
/// * [dkim] 
/// * [spf] 
/// * [dmarc] 
/// * [mx] 
/// * [returnPath] 
/// * [bimi] 
@BuiltValue()
abstract class SendingDomainIdentityScoreBreakdown implements Built<SendingDomainIdentityScoreBreakdown, SendingDomainIdentityScoreBreakdownBuilder> {
  @BuiltValueField(wireName: r'dkim')
  IdentityScoreCheck? get dkim;

  @BuiltValueField(wireName: r'spf')
  IdentityScoreCheck? get spf;

  @BuiltValueField(wireName: r'dmarc')
  IdentityScoreCheck? get dmarc;

  @BuiltValueField(wireName: r'mx')
  IdentityScoreCheck? get mx;

  @BuiltValueField(wireName: r'return_path')
  IdentityScoreCheck? get returnPath;

  @BuiltValueField(wireName: r'bimi')
  IdentityScoreCheck? get bimi;

  SendingDomainIdentityScoreBreakdown._();

  factory SendingDomainIdentityScoreBreakdown([void updates(SendingDomainIdentityScoreBreakdownBuilder b)]) = _$SendingDomainIdentityScoreBreakdown;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendingDomainIdentityScoreBreakdownBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendingDomainIdentityScoreBreakdown> get serializer => _$SendingDomainIdentityScoreBreakdownSerializer();
}

class _$SendingDomainIdentityScoreBreakdownSerializer implements PrimitiveSerializer<SendingDomainIdentityScoreBreakdown> {
  @override
  final Iterable<Type> types = const [SendingDomainIdentityScoreBreakdown, _$SendingDomainIdentityScoreBreakdown];

  @override
  final String wireName = r'SendingDomainIdentityScoreBreakdown';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendingDomainIdentityScoreBreakdown object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dkim != null) {
      yield r'dkim';
      yield serializers.serialize(
        object.dkim,
        specifiedType: const FullType(IdentityScoreCheck),
      );
    }
    if (object.spf != null) {
      yield r'spf';
      yield serializers.serialize(
        object.spf,
        specifiedType: const FullType(IdentityScoreCheck),
      );
    }
    if (object.dmarc != null) {
      yield r'dmarc';
      yield serializers.serialize(
        object.dmarc,
        specifiedType: const FullType(IdentityScoreCheck),
      );
    }
    if (object.mx != null) {
      yield r'mx';
      yield serializers.serialize(
        object.mx,
        specifiedType: const FullType(IdentityScoreCheck),
      );
    }
    if (object.returnPath != null) {
      yield r'return_path';
      yield serializers.serialize(
        object.returnPath,
        specifiedType: const FullType(IdentityScoreCheck),
      );
    }
    if (object.bimi != null) {
      yield r'bimi';
      yield serializers.serialize(
        object.bimi,
        specifiedType: const FullType(IdentityScoreCheck),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendingDomainIdentityScoreBreakdown object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendingDomainIdentityScoreBreakdownBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dkim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdentityScoreCheck),
          ) as IdentityScoreCheck;
          result.dkim.replace(valueDes);
          break;
        case r'spf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdentityScoreCheck),
          ) as IdentityScoreCheck;
          result.spf.replace(valueDes);
          break;
        case r'dmarc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdentityScoreCheck),
          ) as IdentityScoreCheck;
          result.dmarc.replace(valueDes);
          break;
        case r'mx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdentityScoreCheck),
          ) as IdentityScoreCheck;
          result.mx.replace(valueDes);
          break;
        case r'return_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdentityScoreCheck),
          ) as IdentityScoreCheck;
          result.returnPath.replace(valueDes);
          break;
        case r'bimi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdentityScoreCheck),
          ) as IdentityScoreCheck;
          result.bimi.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendingDomainIdentityScoreBreakdown deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendingDomainIdentityScoreBreakdownBuilder();
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

