import 'dart:convert';

import 'package:bilibili/app/models/bb_text_attributes_definations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_text_attributes.g.dart';

abstract class TextAttributes
    implements Built<TextAttributes, TextAttributesBuilder>, TextAttributesDifinations {
  // Fields
  @nullable
  @BuiltValueField(wireName: "text_color_night")
  String get darkModeTextColor;
  @nullable
  @BuiltValueField(wireName: "bg_color")
  String get backgroundColor;
  @nullable
  @BuiltValueField(wireName: "bg_color_night")
  String get darkModeBackgroundColor;
  @nullable
  @BuiltValueField(wireName: "text_color")
  String get textColor;
  @nullable
  @BuiltValueField(wireName: "border_color")
  String get borderColor;
  @nullable
  @BuiltValueField(wireName: "border_color_night")
  String get darkModeBorderColor;
  @nullable
  @BuiltValueField(wireName: "bg_style")
  int get bgStyle;
  @nullable
  String get text;

  TextAttributes._();

  factory TextAttributes([void Function(TextAttributesBuilder) updates]) =
      _$TextAttributes;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TextAttributes.serializer, this));
  }

  static TextAttributes fromJson(String jsonString) {
    return serializers.deserializeWith(
        TextAttributes.serializer, json.decode(jsonString));
  }

  static Serializer<TextAttributes> get serializer =>
      _$textAttributesSerializer;
}
