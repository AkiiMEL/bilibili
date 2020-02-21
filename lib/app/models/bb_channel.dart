import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_button_description.dart';
import 'bb_media.dart';
import 'bb_serializers.dart';

export 'bb_button_description.dart';
export 'bb_media.dart';

part 'bb_channel.g.dart';

abstract class Channel implements Built<Channel, ChannelBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get param;
  @nullable
  String get uri;
  @nullable
  int get position;
  @nullable
  @BuiltValueField(wireName: "s_type")
  int get sType;
  @nullable
  String get goto;
  @nullable
  String get title;
  @nullable
  String get background;
  @nullable
  String get desc;
  @nullable
  @BuiltValueField(wireName: "card_type")
  String get cardType;
  @nullable
  @BuiltValueField(wireName: "card_goto")
  String get cardGoto;
  @nullable
  String get cover;
  @nullable
  @BuiltValueField(wireName: "cover_label")
  String get coverLabel;
  @nullable
  @BuiltValueField(wireName: "cover_label2")
  String get coverLabel2;
  @nullable
  int get alpha;
  @nullable
  @BuiltValueField(wireName: "theme_color")
  String get themeColor;
  @nullable
  int get idx;
  @nullable
  ButtonDescription get button;
  @nullable
  @BuiltValueField(wireName: "official_verify")
  int get officialVerify;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "desc_button")
  ButtonDescription get descButton;
  @nullable
  BuiltMap<String, Object> get args;
  @nullable
  BuiltList<Media> get items;
  @nullable
  @BuiltValueField(wireName: "desc_1")
  String get desc1;
  @nullable
  @BuiltValueField(wireName: "desc_button_2")
  ButtonDescription get descButton2;

  Channel._();

  factory Channel([void Function(ChannelBuilder) updates]) = _$Channel;

  String toJson() {
    return json.encode(serializers.serializeWith(Channel.serializer, this));
  }

  static Channel fromJson(String jsonString) {
    return serializers.deserializeWith(
        Channel.serializer, json.decode(jsonString));
  }

  static Serializer<Channel> get serializer => _$channelSerializer;
}
