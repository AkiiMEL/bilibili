import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_dialog.dart';
import 'bb_payment_tip.dart';
import 'bb_payment_type.dart';
import 'bb_serializers.dart';

part 'bb_payment.g.dart';

abstract class Payment implements Built<Payment, PaymentBuilder> {
  // Fields
  @nullable
  Dialog get dialog;
  @nullable
  @BuiltValueField(wireName: "pay_tip")
  PaymentTip get payTip;
  @nullable
  @BuiltValueField(wireName: "pay_type")
  PaymentType get payType;
  @nullable
  String get price;
  @nullable
  @BuiltValueField(wireName: "tv_price")
  String get tvPrice;
  @nullable
  @BuiltValueField(wireName: "vip_promotion")
  String get vipPromotion;

  Payment._();

  factory Payment([void Function(PaymentBuilder) updates]) = _$Payment;

  String toJson() {
    return json.encode(serializers.serializeWith(Payment.serializer, this));
  }

  static Payment fromJson(String jsonString) {
    return serializers.deserializeWith(
        Payment.serializer, json.decode(jsonString));
  }

  static Serializer<Payment> get serializer => _$paymentSerializer;
}
