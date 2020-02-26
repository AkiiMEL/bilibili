// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_payment_tip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentTip> _$paymentTipSerializer = new _$PaymentTipSerializer();

class _$PaymentTipSerializer implements StructuredSerializer<PaymentTip> {
  @override
  final Iterable<Type> types = const [PaymentTip, _$PaymentTip];
  @override
  final String wireName = 'PaymentTip';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentTip object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.primary != null) {
      result
        ..add('primary')
        ..add(serializers.serialize(object.primary,
            specifiedType: const FullType(PaymentPrimary)));
    }
    return result;
  }

  @override
  PaymentTip deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentTipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'primary':
          result.primary.replace(serializers.deserialize(value,
              specifiedType: const FullType(PaymentPrimary)) as PaymentPrimary);
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentTip extends PaymentTip {
  @override
  final PaymentPrimary primary;

  factory _$PaymentTip([void Function(PaymentTipBuilder) updates]) =>
      (new PaymentTipBuilder()..update(updates)).build();

  _$PaymentTip._({this.primary}) : super._();

  @override
  PaymentTip rebuild(void Function(PaymentTipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentTipBuilder toBuilder() => new PaymentTipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentTip && primary == other.primary;
  }

  @override
  int get hashCode {
    return $jf($jc(0, primary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentTip')..add('primary', primary))
        .toString();
  }
}

class PaymentTipBuilder implements Builder<PaymentTip, PaymentTipBuilder> {
  _$PaymentTip _$v;

  PaymentPrimaryBuilder _primary;
  PaymentPrimaryBuilder get primary =>
      _$this._primary ??= new PaymentPrimaryBuilder();
  set primary(PaymentPrimaryBuilder primary) => _$this._primary = primary;

  PaymentTipBuilder();

  PaymentTipBuilder get _$this {
    if (_$v != null) {
      _primary = _$v.primary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentTip other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentTip;
  }

  @override
  void update(void Function(PaymentTipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentTip build() {
    _$PaymentTip _$result;
    try {
      _$result = _$v ?? new _$PaymentTip._(primary: _primary?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'primary';
        _primary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaymentTip', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
