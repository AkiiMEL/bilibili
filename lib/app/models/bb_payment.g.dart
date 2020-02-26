// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_payment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Payment> _$paymentSerializer = new _$PaymentSerializer();

class _$PaymentSerializer implements StructuredSerializer<Payment> {
  @override
  final Iterable<Type> types = const [Payment, _$Payment];
  @override
  final String wireName = 'Payment';

  @override
  Iterable<Object> serialize(Serializers serializers, Payment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dialog != null) {
      result
        ..add('dialog')
        ..add(serializers.serialize(object.dialog,
            specifiedType: const FullType(Dialog)));
    }
    if (object.payTip != null) {
      result
        ..add('pay_tip')
        ..add(serializers.serialize(object.payTip,
            specifiedType: const FullType(PaymentTip)));
    }
    if (object.payType != null) {
      result
        ..add('pay_type')
        ..add(serializers.serialize(object.payType,
            specifiedType: const FullType(PaymentType)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(String)));
    }
    if (object.tvPrice != null) {
      result
        ..add('tv_price')
        ..add(serializers.serialize(object.tvPrice,
            specifiedType: const FullType(String)));
    }
    if (object.vipPromotion != null) {
      result
        ..add('vip_promotion')
        ..add(serializers.serialize(object.vipPromotion,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Payment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dialog':
          result.dialog.replace(serializers.deserialize(value,
              specifiedType: const FullType(Dialog)) as Dialog);
          break;
        case 'pay_tip':
          result.payTip.replace(serializers.deserialize(value,
              specifiedType: const FullType(PaymentTip)) as PaymentTip);
          break;
        case 'pay_type':
          result.payType.replace(serializers.deserialize(value,
              specifiedType: const FullType(PaymentType)) as PaymentType);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tv_price':
          result.tvPrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vip_promotion':
          result.vipPromotion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Payment extends Payment {
  @override
  final Dialog dialog;
  @override
  final PaymentTip payTip;
  @override
  final PaymentType payType;
  @override
  final String price;
  @override
  final String tvPrice;
  @override
  final String vipPromotion;

  factory _$Payment([void Function(PaymentBuilder) updates]) =>
      (new PaymentBuilder()..update(updates)).build();

  _$Payment._(
      {this.dialog,
      this.payTip,
      this.payType,
      this.price,
      this.tvPrice,
      this.vipPromotion})
      : super._();

  @override
  Payment rebuild(void Function(PaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentBuilder toBuilder() => new PaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payment &&
        dialog == other.dialog &&
        payTip == other.payTip &&
        payType == other.payType &&
        price == other.price &&
        tvPrice == other.tvPrice &&
        vipPromotion == other.vipPromotion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, dialog.hashCode), payTip.hashCode),
                    payType.hashCode),
                price.hashCode),
            tvPrice.hashCode),
        vipPromotion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Payment')
          ..add('dialog', dialog)
          ..add('payTip', payTip)
          ..add('payType', payType)
          ..add('price', price)
          ..add('tvPrice', tvPrice)
          ..add('vipPromotion', vipPromotion))
        .toString();
  }
}

class PaymentBuilder implements Builder<Payment, PaymentBuilder> {
  _$Payment _$v;

  DialogBuilder _dialog;
  DialogBuilder get dialog => _$this._dialog ??= new DialogBuilder();
  set dialog(DialogBuilder dialog) => _$this._dialog = dialog;

  PaymentTipBuilder _payTip;
  PaymentTipBuilder get payTip => _$this._payTip ??= new PaymentTipBuilder();
  set payTip(PaymentTipBuilder payTip) => _$this._payTip = payTip;

  PaymentTypeBuilder _payType;
  PaymentTypeBuilder get payType =>
      _$this._payType ??= new PaymentTypeBuilder();
  set payType(PaymentTypeBuilder payType) => _$this._payType = payType;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _tvPrice;
  String get tvPrice => _$this._tvPrice;
  set tvPrice(String tvPrice) => _$this._tvPrice = tvPrice;

  String _vipPromotion;
  String get vipPromotion => _$this._vipPromotion;
  set vipPromotion(String vipPromotion) => _$this._vipPromotion = vipPromotion;

  PaymentBuilder();

  PaymentBuilder get _$this {
    if (_$v != null) {
      _dialog = _$v.dialog?.toBuilder();
      _payTip = _$v.payTip?.toBuilder();
      _payType = _$v.payType?.toBuilder();
      _price = _$v.price;
      _tvPrice = _$v.tvPrice;
      _vipPromotion = _$v.vipPromotion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Payment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Payment;
  }

  @override
  void update(void Function(PaymentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Payment build() {
    _$Payment _$result;
    try {
      _$result = _$v ??
          new _$Payment._(
              dialog: _dialog?.build(),
              payTip: _payTip?.build(),
              payType: _payType?.build(),
              price: price,
              tvPrice: tvPrice,
              vipPromotion: vipPromotion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dialog';
        _dialog?.build();
        _$failedField = 'payTip';
        _payTip?.build();
        _$failedField = 'payType';
        _payType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Payment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
