import 'package:json_annotation/json_annotation.dart';

part 'bili_featured_models.g.dart';

@JsonSerializable()
class FeaturedBody extends Object {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'ttl')
  int ttl;

  @JsonKey(name: 'data')
  FeaturedData data;

  FeaturedBody(
    this.code,
    this.message,
    this.ttl,
    this.data,
  );

  factory FeaturedBody.fromJson(Map<String, dynamic> srcJson) =>
      _$FeaturedBodyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeaturedBodyToJson(this);
}

@JsonSerializable()
class FeaturedData extends Object {
  @JsonKey(name: 'items')
  List<Items> items;

  @JsonKey(name: 'config')
  Config config;

  FeaturedData(
    this.items,
    this.config,
  );

  factory FeaturedData.fromJson(Map<String, dynamic> srcJson) =>
      _$FeaturedDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeaturedDataToJson(this);
}

@JsonSerializable()
class Items extends Object {
  @JsonKey(name: 'cover_left_icon_2')
  int coverLeftIcon2;

  @JsonKey(name: 'rcmd_reason_style')
  Rcmd_reason_style rcmdReasonStyle;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'cover_left_icon_1')
  int coverLeftIcon1;

  @JsonKey(name: 'param')
  String param;

  @JsonKey(name: 'can_play')
  int canPlay;

  @JsonKey(name: 'idx')
  int idx;

  @JsonKey(name: 'rcmd_reason')
  String rcmdReason;

  @JsonKey(name: 'cover_left_text_2')
  String coverLeftText2;

  @JsonKey(name: 'args')
  Args args;

  @JsonKey(name: 'cover')
  String cover;

  @JsonKey(name: 'cover_left_text_1')
  String coverLeftText1;

  @JsonKey(name: 'official_icon')
  int officialIcon;

  @JsonKey(name: 'uri')
  String uri;

  @JsonKey(name: 'card_type')
  String cardType;

  @JsonKey(name: 'player_args')
  Player_args playerArgs;

  @JsonKey(name: 'three_point_v2')
  List<Three_point_v2> threePointV2;

  @JsonKey(name: 'cover_right_text')
  String coverRightText;

  @JsonKey(name: 'goto')
  String goto;

  @JsonKey(name: 'card_goto')
  String cardGoto;

  @JsonKey(name: 'three_point')
  Three_point threePoint;

  Items(
    this.coverLeftIcon2,
    this.rcmdReasonStyle,
    this.title,
    this.coverLeftIcon1,
    this.param,
    this.canPlay,
    this.idx,
    this.rcmdReason,
    this.coverLeftText2,
    this.args,
    this.cover,
    this.coverLeftText1,
    this.officialIcon,
    this.uri,
    this.cardType,
    this.playerArgs,
    this.threePointV2,
    this.coverRightText,
    this.goto,
    this.cardGoto,
    this.threePoint,
  );

  factory Items.fromJson(Map<String, dynamic> srcJson) =>
      _$ItemsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class Rcmd_reason_style extends Object {
  @JsonKey(name: 'border_color_night')
  String borderColorNight;

  @JsonKey(name: 'bg_color')
  String bgColor;

  @JsonKey(name: 'text_color_night')
  String textColorNight;

  @JsonKey(name: 'bg_color_night')
  String bgColorNight;

  @JsonKey(name: 'border_color')
  String borderColor;

  @JsonKey(name: 'text')
  String text;

  @JsonKey(name: 'bg_style')
  int bgStyle;

  @JsonKey(name: 'text_color')
  String textColor;

  Rcmd_reason_style(
    this.borderColorNight,
    this.bgColor,
    this.textColorNight,
    this.bgColorNight,
    this.borderColor,
    this.text,
    this.bgStyle,
    this.textColor,
  );

  factory Rcmd_reason_style.fromJson(Map<String, dynamic> srcJson) =>
      _$Rcmd_reason_styleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Rcmd_reason_styleToJson(this);
}

@JsonSerializable()
class Args extends Object {
  @JsonKey(name: 'tname')
  String tname;

  @JsonKey(name: 'up_name')
  String upName;

  @JsonKey(name: 'rid')
  int rid;

  @JsonKey(name: 'aid')
  int aid;

  @JsonKey(name: 'up_id')
  int upId;

  @JsonKey(name: 'rname')
  String rname;

  @JsonKey(name: 'tid')
  int tid;

  Args(
    this.tname,
    this.upName,
    this.rid,
    this.aid,
    this.upId,
    this.rname,
    this.tid,
  );

  factory Args.fromJson(Map<String, dynamic> srcJson) =>
      _$ArgsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArgsToJson(this);
}

@JsonSerializable()
class Player_args extends Object {
  @JsonKey(name: 'aid')
  int aid;

  @JsonKey(name: 'cid')
  int cid;

  @JsonKey(name: 'type')
  String type;

  Player_args(
    this.aid,
    this.cid,
    this.type,
  );

  factory Player_args.fromJson(Map<String, dynamic> srcJson) =>
      _$Player_argsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Player_argsToJson(this);
}

@JsonSerializable()
class Three_point_v2 extends Object {
  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'type')
  String type;

  Three_point_v2(
    this.title,
    this.type,
  );

  factory Three_point_v2.fromJson(Map<String, dynamic> srcJson) =>
      _$Three_point_v2FromJson(srcJson);

  Map<String, dynamic> toJson() => _$Three_point_v2ToJson(this);
}

@JsonSerializable()
class Three_point extends Object {
  @JsonKey(name: 'feedbacks')
  List<Feedbacks> feedbacks;

  @JsonKey(name: 'watch_later')
  int watchLater;

  @JsonKey(name: 'dislike_reasons')
  List<Dislike_reasons> dislikeReasons;

  Three_point(
    this.feedbacks,
    this.watchLater,
    this.dislikeReasons,
  );

  factory Three_point.fromJson(Map<String, dynamic> srcJson) =>
      _$Three_pointFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Three_pointToJson(this);
}

@JsonSerializable()
class Feedbacks extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  Feedbacks(
    this.id,
    this.name,
  );

  factory Feedbacks.fromJson(Map<String, dynamic> srcJson) =>
      _$FeedbacksFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeedbacksToJson(this);
}

@JsonSerializable()
class Dislike_reasons extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  Dislike_reasons(
    this.id,
    this.name,
  );

  factory Dislike_reasons.fromJson(Map<String, dynamic> srcJson) =>
      _$Dislike_reasonsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Dislike_reasonsToJson(this);
}

@JsonSerializable()
class Config extends Object {
  @JsonKey(name: 'auto_refresh_time')
  int autoRefreshTime;

  @JsonKey(name: 'autoplay_card')
  int autoplayCard;

  @JsonKey(name: 'column')
  int column;

  @JsonKey(name: 'feed_clean_abtest')
  int feedCleanAbtest;

  @JsonKey(name: 'home_transfer_test')
  int homeTransferTest;

  Config(
    this.autoRefreshTime,
    this.autoplayCard,
    this.column,
    this.feedCleanAbtest,
    this.homeTransferTest,
  );

  factory Config.fromJson(Map<String, dynamic> srcJson) =>
      _$ConfigFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
