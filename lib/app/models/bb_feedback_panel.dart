import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_feedback_panel_detail.dart';

export 'bb_feedback_panel_detail.dart';

part 'bb_feedback_panel.g.dart';

abstract class FeedbackPanel
    implements Built<FeedbackPanel, FeedbackPanelBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "pannel_type_text")
  String get panelTypeText;
  @BuiltValueField(wireName: "feedback_pannel_detail")
  BuiltList<FeedbackPanelDetail> get feedbackPanelDetail;

  FeedbackPanel._();

  factory FeedbackPanel([void Function(FeedbackPanelBuilder) updates]) =
      _$FeedbackPanel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeedbackPanel.serializer, this));
  }

  static FeedbackPanel fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedbackPanel.serializer, json.decode(jsonString));
  }

  static Serializer<FeedbackPanel> get serializer => _$feedbackPanelSerializer;
}
