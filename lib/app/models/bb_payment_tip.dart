import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_payment_primary.dart';
import 'bb_serializers.dart';

part 'bb_payment_tip.g.dart';

abstract class PaymentTip implements Built<PaymentTip, PaymentTipBuilder> {
  // Fields
  @nullable
  PaymentPrimary get primary;

  PaymentTip._();

  factory PaymentTip([void Function(PaymentTipBuilder) updates]) = _$PaymentTip;

  String toJson() {
    return json.encode(serializers.serializeWith(PaymentTip.serializer, this));
  }

  static PaymentTip fromJson(String jsonString) {
    return serializers.deserializeWith(
        PaymentTip.serializer, json.decode(jsonString));
  }

  static Serializer<PaymentTip> get serializer => _$paymentTipSerializer;
}
