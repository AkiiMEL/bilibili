import 'package:json_annotation/json_annotation.dart';

part 'bb_channel_models.g.dart';

@JsonSerializable()
class ChannelHomeHttpBody extends Object {
  int code;
  String message;
  int ttl;
  List<ChannelGroup> data;

  ChannelHomeHttpBody({this.code, this.message, this.ttl, this.data});

  factory ChannelHomeHttpBody.fromJson(Map<String, dynamic> srcJson) =>
      _$ChannelHomeHttpBodyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChannelHomeHttpBodyToJson(this);
}

class ChannelGroup extends Object {
  String offset;
  List<Channel> channels;
  List<Channel> popular;
  List<Channel> recommanded;
  List<Channel> dynamics;
  String type;
  String title;
  String label;
  int hasMore;
  ButtonDescription descButton;

  ChannelGroup(
      {this.channels,
      this.type,
      this.title,
      this.label,
      this.hasMore,
      this.descButton});

  static List<Channel> _modelsFromJson(dynamic json, String key) {
    if (json is List) {
      return json.map((e) => Channel.fromJson(e)).toList();
    } else if (json is Map) {
      return (json[key] as List)
          ?.map((e) => e == null ? null : Channel.fromJson(e))
          ?.toList();
    } else {
      return null;
    }
  }

  ChannelGroup.fromJson(Map<String, dynamic> json) {
    offset = json["offset"];
    type = json["model_type"];
    title = json["model_title"];
    label = json["label"];
    hasMore = json["has_more"];
    descButton = json["desc_button"] == null
        ? null
        : ButtonDescription.fromJson(
            json['desc_button'] as Map<String, dynamic>);

    var srcJson = json["items"];
    if (srcJson is List) {
      channels = _modelsFromJson(srcJson, "");
    } else {
      popular = _modelsFromJson(srcJson, "list");
      recommanded = _modelsFromJson(srcJson, "rcmd");
      dynamics = _modelsFromJson(srcJson, "dynamic");
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data["offset"] = this.offset;
    data["model_type"] = this.type;
    data["model_title"] = this.title;
    data["label"] = this.label;
    data["has_more"] = this.hasMore;
    data["desc_button"] = this.descButton?.toJson();
    if (this.channels != null) {
      data["items"] = this.channels.map((v) => v.toJson()).toList();
    } else {
      data["items"] = <String, dynamic>{
        "dynamic": this.dynamics.map((v) => v.toJson()).toList(),
        "rcmd": this.recommanded.map((v) => v.toJson()).toList(),
        "list": this.popular.map((v) => v.toJson()).toList()
      };
    }
    return data;
  }
}

@JsonSerializable()
class Channel extends Object {
  int id;
  String param;
  String uri;
  int position;
  @JsonKey(name: "s_type")
  int sType;
  String goto;
  String title;
  String background;
  String desc;
  @JsonKey(name: "card_type")
  String cardType;
  @JsonKey(name: "card_goto")
  String cardGoto;
  String cover;
  @JsonKey(name: "cover_label")
  String coverLabel;
  @JsonKey(name: "cover_label2")
  String coverLabel2;
  int alpha;
  @JsonKey(name: "theme_color")
  String themeColor;
  int idx;
  ButtonDescription button;
  @JsonKey(name: "official_verify")
  int officialVerify;
  String name;
  @JsonKey(name: "desc_button")
  ButtonDescription descButton;
  Map args;
  List<MediaCard> items;
  @JsonKey(name: "desc_1")
  String desc1;
  @JsonKey(name: "desc_button_2")
  ButtonDescription descButton2;

  Channel(
      {this.id,
      this.param,
      this.uri,
      this.position,
      this.sType,
      this.goto,
      this.title,
      this.background,
      this.desc,
      this.cardType,
      this.cardGoto,
      this.cover,
      this.alpha,
      this.themeColor,
      this.idx,
      this.button,
      this.officialVerify,
      this.name,
      this.descButton,
      this.args,
      this.items,
      this.desc1,
      this.descButton2});

  factory Channel.fromJson(Map<String, dynamic> srcJson) =>
      _$ChannelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}

@JsonSerializable()
class ButtonDescription extends Object {
  String uri;
  String text;

  ButtonDescription({this.uri, this.text});

  factory ButtonDescription.fromJson(Map<String, dynamic> srcJson) =>
      _$ButtonDescriptionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ButtonDescriptionToJson(this);
}

@JsonSerializable()
class MediaCard extends Object {
  @JsonKey(name: "cover_left_icon_2")
  int coverLeftIcon2;
  String param;
  @JsonKey(name: "cover_left_text_1")
  String coverLeftText1;
  @JsonKey(name: "cover_left_icon_1")
  int coverLeftIcon1;
  int position;
  MediaCardBadge badge;
  String goto;
  String title;
  String cover;
  @JsonKey(name: "cover_left_text_3")
  String coverRightText1;
  @JsonKey(name: "cover_left_text_2")
  String coverLeftText2;
  String uri;

  MediaCard(
      {this.coverLeftIcon2,
      this.param,
      this.coverLeftText1,
      this.coverLeftIcon1,
      this.position,
      this.badge,
      this.goto,
      this.title,
      this.cover,
      this.coverRightText1,
      this.coverLeftText2,
      this.uri});

  factory MediaCard.fromJson(Map<String, dynamic> srcJson) =>
      _$MediaCardFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MediaCardToJson(this);
}

@JsonSerializable()
class MediaCardBadge extends Object {
  String text;
  @JsonKey(name: "icon_bg_url")
  String iconBgUrl;

  MediaCardBadge({this.text, this.iconBgUrl});

  factory MediaCardBadge.fromJson(Map<String, dynamic> srcJson) =>
      _$MediaCardBadgeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MediaCardBadgeToJson(this);
}
