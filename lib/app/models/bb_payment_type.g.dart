// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_payment_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentType> _$paymentTypeSerializer = new _$PaymentTypeSerializer();

class _$PaymentTypeSerializer implements StructuredSerializer<PaymentType> {
  @override
  final Iterable<Type> types = const [PaymentType, _$PaymentType];
  @override
  final String wireName = 'PaymentType';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.allowTicket != null) {
      result
        ..add('allow_ticket')
        ..add(serializers.serialize(object.allowTicket,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PaymentType deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'allow_ticket':
          result.allowTicket = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentType extends PaymentType {
  @override
  final int allowTicket;

  factory _$PaymentType([void Function(PaymentTypeBuilder) updates]) =>
      (new PaymentTypeBuilder()..update(updates)).build();

  _$PaymentType._({this.allowTicket}) : super._();

  @override
  PaymentType rebuild(void Function(PaymentTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentTypeBuilder toBuilder() => new PaymentTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentType && allowTicket == other.allowTicket;
  }

  @override
  int get hashCode {
    return $jf($jc(0, allowTicket.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentType')
          ..add('allowTicket', allowTicket))
        .toString();
  }
}

class PaymentTypeBuilder implements Builder<PaymentType, PaymentTypeBuilder> {
  _$PaymentType _$v;

  int _allowTicket;
  int get allowTicket => _$this._allowTicket;
  set allowTicket(int allowTicket) => _$this._allowTicket = allowTicket;

  PaymentTypeBuilder();

  PaymentTypeBuilder get _$this {
    if (_$v != null) {
      _allowTicket = _$v.allowTicket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentType other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentType;
  }

  @override
  void update(void Function(PaymentTypeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentType build() {
    final _$result = _$v ?? new _$PaymentType._(allowTicket: allowTicket);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
