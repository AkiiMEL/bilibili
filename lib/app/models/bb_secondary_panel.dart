import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_secondary_panel.g.dart';

abstract class SecondaryPanel
    implements Built<SecondaryPanel, SecondaryPanelBuilder> {
  // Fields
  @nullable
  String get text;
  @nullable
  @BuiltValueField(wireName: "reason_id")
  int get reasonId;

  SecondaryPanel._();

  factory SecondaryPanel([void Function(SecondaryPanelBuilder) updates]) =
      _$SecondaryPanel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SecondaryPanel.serializer, this));
  }

  static SecondaryPanel fromJson(String jsonString) {
    return serializers.deserializeWith(
        SecondaryPanel.serializer, json.decode(jsonString));
  }

  static Serializer<SecondaryPanel> get serializer =>
      _$secondaryPanelSerializer;
}
