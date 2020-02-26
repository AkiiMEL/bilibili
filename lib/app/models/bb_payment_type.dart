import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_payment_type.g.dart';

abstract class PaymentType implements Built<PaymentType, PaymentTypeBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "allow_ticket")
  int get allowTicket;

  PaymentType._();

  factory PaymentType([void Function(PaymentTypeBuilder) updates]) =
      _$PaymentType;

  String toJson() {
    return json.encode(serializers.serializeWith(PaymentType.serializer, this));
  }

  static PaymentType fromJson(String jsonString) {
    return serializers.deserializeWith(
        PaymentType.serializer, json.decode(jsonString));
  }

  static Serializer<PaymentType> get serializer => _$paymentTypeSerializer;
}
