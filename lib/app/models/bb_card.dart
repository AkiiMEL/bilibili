import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'bb_ad_tag_style.dart';
import 'bb_cover.dart';
import 'bb_feedback_panel.dart';
import 'bb_serializers.dart';

export 'bb_ad_tag_style.dart';
export 'bb_cover.dart';
export 'bb_feedback_panel.dart';

part 'bb_card.g.dart';

abstract class Card implements Built<Card, CardBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "card_type")
  int get cardType;
  @nullable
  String get title;
  @nullable
  BuiltList<Cover> get covers;
  @nullable
  @BuiltValueField(wireName: "jump_url")
  String get jumpUrl;
  @nullable
  String get desc;
  @nullable
  @BuiltValueField(wireName: "callup_url")
  String get callupUrl;
  @nullable
  @BuiltValueField(wireName: "long_desc")
  String get longDesc;
  @nullable
  @BuiltValueField(wireName: "ad_tag")
  String get adTag;
  @nullable
  @BuiltValueField(wireName: "extra_desc")
  String get extraDesc;
  @nullable
  @BuiltValueField(wireName: "ad_tag_style")
  AdTagStyle get adTagStyle;
  @nullable
  @BuiltValueField(wireName: "feedback_panel")
  FeedbackPanel get feedbackPanel;

  Card._();

  factory Card([void Function(CardBuilder) updates]) = _$Card;

  String toJson() {
    return json.encode(serializers.serializeWith(Card.serializer, this));
  }

  static Card fromJson(String jsonString) {
    return serializers.deserializeWith(
        Card.serializer, json.decode(jsonString));
  }

  static Serializer<Card> get serializer => _$cardSerializer;
}
