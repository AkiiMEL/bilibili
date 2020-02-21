import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_button_description.g.dart';

abstract class ButtonDescription implements Built<ButtonDescription, ButtonDescriptionBuilder> {
  // Fields
  @nullable
  String get text;
  @nullable
  String get uri;
  @nullable
  String get event;
  @nullable
  int get type;
  @nullable
  @BuiltValueField(wireName: "event_v2")
  String get eventV2;

  ButtonDescription._();

  factory ButtonDescription([void Function(ButtonDescriptionBuilder) updates]) =
      _$ButtonDescription;

  String toJson() {
    return json.encode(serializers.serializeWith(ButtonDescription.serializer, this));
  }

  static ButtonDescription fromJson(String jsonString) {
    return serializers.deserializeWith(
        ButtonDescription.serializer, json.decode(jsonString));
  }

  static Serializer<ButtonDescription> get serializer => _$buttonDescriptionSerializer;
}
