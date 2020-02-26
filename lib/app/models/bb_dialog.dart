import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_dialog.g.dart';

abstract class Dialog implements Built<Dialog, DialogBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "btn_right")
  DialogButtonDescription get btnRight;
  @nullable
  String get desc;
  @nullable
  String get title;

  Dialog._();

  factory Dialog([void Function(DialogBuilder) updates]) = _$Dialog;

  String toJson() {
    return json.encode(serializers.serializeWith(Dialog.serializer, this));
  }

  static Dialog fromJson(String jsonString) {
    return serializers.deserializeWith(
        Dialog.serializer, json.decode(jsonString));
  }

  static Serializer<Dialog> get serializer => _$dialogSerializer;
}

abstract class DialogButtonDescription
    implements Built<DialogButtonDescription, DialogButtonDescriptionBuilder> {
  // Fields
  @nullable
  String get title;
  @nullable
  String get type;

  DialogButtonDescription._();

  factory DialogButtonDescription(
          [void Function(DialogButtonDescriptionBuilder) updates]) =
      _$DialogButtonDescription;

  String toJson() {
    return json.encode(
        serializers.serializeWith(DialogButtonDescription.serializer, this));
  }

  static DialogButtonDescription fromJson(String jsonString) {
    return serializers.deserializeWith(
        DialogButtonDescription.serializer, json.decode(jsonString));
  }

  static Serializer<DialogButtonDescription> get serializer =>
      _$dialogButtonDescriptionSerializer;
}
