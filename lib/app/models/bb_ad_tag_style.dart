import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_ad_tag_style.g.dart';

abstract class AdTagStyle implements Built<AdTagStyle, AdTagStyleBuilder> {
  // Fields
  @nullable
  int get type;
  @nullable
  String get text;
  @nullable
  @BuiltValueField(wireName: "text_color")
  String get textColor;
  @nullable
  @BuiltValueField(wireName: "bg_border_color")
  String get borderColor;

  AdTagStyle._();

  factory AdTagStyle([void Function(AdTagStyleBuilder) updates]) = _$AdTagStyle;

  String toJson() {
    return json.encode(serializers.serializeWith(AdTagStyle.serializer, this));
  }

  static AdTagStyle fromJson(String jsonString) {
    return serializers.deserializeWith(
        AdTagStyle.serializer, json.decode(jsonString));
  }

  static Serializer<AdTagStyle> get serializer => _$adTagStyleSerializer;
}
