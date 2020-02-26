import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_payment_primary.g.dart';

abstract class PaymentPrimary
    implements Built<PaymentPrimary, PaymentPrimaryBuilder> {
  // Fields
  @nullable
  String get icon;
  @nullable
  String get title;
  @nullable
  int get type;
  @nullable
  String get url;

  PaymentPrimary._();

  factory PaymentPrimary([void Function(PaymentPrimaryBuilder) updates]) =
      _$PaymentPrimary;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PaymentPrimary.serializer, this));
  }

  static PaymentPrimary fromJson(String jsonString) {
    return serializers.deserializeWith(
        PaymentPrimary.serializer, json.decode(jsonString));
  }

  static Serializer<PaymentPrimary> get serializer =>
      _$paymentPrimarySerializer;
}