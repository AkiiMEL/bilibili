import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_vip.g.dart';

abstract class Vip implements Built<Vip, VipBuilder> {
  // Fields
  @nullable
  int get status;
  @nullable
  @BuiltValueField(wireName: "vip_pay_type")
  int get vipPayType;
  @nullable
  @BuiltValueField(wireName: "theme_type")
  int get themeType;
  @nullable
  VipLabel get label;
  @nullable
  int get type;
  @nullable
  @BuiltValueField(wireName: "due_date")
  int get dueDate;

  Vip._();

  factory Vip([void Function(VipBuilder) updates]) = _$Vip;

  String toJson() {
    return json.encode(serializers.serializeWith(Vip.serializer, this));
  }

  static Vip fromJson(String jsonString) {
    return serializers.deserializeWith(Vip.serializer, json.decode(jsonString));
  }

  static Serializer<Vip> get serializer => _$vipSerializer;
}

abstract class VipLabel implements Built<VipLabel, VipLabelBuilder> {
  // Fields
  @nullable
  String get path;

  VipLabel._();

  factory VipLabel([void Function(VipLabelBuilder) updates]) = _$VipLabel;

  String toJson() {
    return json.encode(serializers.serializeWith(VipLabel.serializer, this));
  }

  static VipLabel fromJson(String jsonString) {
    return serializers.deserializeWith(
        VipLabel.serializer, json.decode(jsonString));
  }

  static Serializer<VipLabel> get serializer => _$vipLabelSerializer;
}
