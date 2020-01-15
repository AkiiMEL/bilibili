import 'package:json_annotation/json_annotation.dart';

part 'bili_featured_models.g.dart';

@JsonSerializable()
class FeaturedHttpBody extends Object {
  int code;
  String message;
  int ttl;
  FeaturedBody data;

  FeaturedHttpBody({this.code, this.message, this.ttl, this.data});

  factory FeaturedHttpBody.fromJson(Map<String, dynamic> srcJson) =>
      _$FeaturedHttpBodyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeaturedHttpBodyToJson(this);
}

@JsonSerializable()
class FeaturedBody extends Object {
  List<Media> items;
  Config config;

  FeaturedBody({this.items, this.config});

  factory FeaturedBody.fromJson(Map<String, dynamic> srcJson) =>
      _$FeaturedBodyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeaturedBodyToJson(this);
}

@JsonSerializable()
class Config extends Object {
  int column;
  @JsonKey(name: "autoplay_card")
  int autoplayCard;
  @JsonKey(name: "feed_clean_abtest")
  int feedCleanAbtest;
  @JsonKey(name: "home_transfer_test")
  int homeTransferTest;
  @JsonKey(name: "auto_refresh_time")
  int autoRefreshTime;

  Config(
      {this.column,
      this.autoplayCard,
      this.feedCleanAbtest,
      this.homeTransferTest,
      this.autoRefreshTime});

  factory Config.fromJson(Map<String, dynamic> srcJson) =>
      _$ConfigFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}

@JsonSerializable()
class Media extends Object {
  @JsonKey(name: "card_type")
  String cardType;
  @JsonKey(name: "card_goto")
  String cardGoto;
  String goto;
  String param;
  String cover;
  String title;
  String uri;
  @JsonKey(name: "three_point")
  ThreePoint threePoint;
  Arguments args;
  @JsonKey(name: "player_args")
  PlayerArguments playerArgs;
  int idx;
  @JsonKey(name: "three_point_v2")
  List<ThreePointV2> threePointV2;
  @JsonKey(name: "cover_left_text_1")
  String coverLeftText1;
  String badge;
  @JsonKey(name: "badge_style")
  TextAttributes badgeStyle;
  @JsonKey(name: "cover_left_icon_1")
  int coverLeftIcon1;
  @JsonKey(name: "cover_left_text_2")
  String coverLeftText2;
  @JsonKey(name: "cover_left_icon_2")
  int coverLeftIcon2;
  @JsonKey(name: "cover_right_text")
  String coverRightText;
  @JsonKey(name: "desc_button")
  DescButton descButton;
  @JsonKey(name: "can_play")
  int canPlay;
  @JsonKey(name: "official_icon")
  int officialIcon;
  @JsonKey(name: "rcmd_reason")
  String rcmdReason;
  @JsonKey(name: "rcmd_reason_style")
  TextAttributes rcmdReasonStyle;
  @JsonKey(name: "ad_info")
  AdInfo adInfo;

  Media(
      {this.cardType,
      this.cardGoto,
      this.goto,
      this.param,
      this.cover,
      this.title,
      this.uri,
      this.threePoint,
      this.args,
      this.playerArgs,
      this.idx,
      this.threePointV2,
      this.coverLeftText1,
      this.coverLeftIcon1,
      this.coverLeftText2,
      this.coverLeftIcon2,
      this.coverRightText,
      this.descButton,
      this.canPlay,
      this.officialIcon,
      this.rcmdReason,
      this.rcmdReasonStyle,
      this.adInfo});

  factory Media.fromJson(Map<String, dynamic> srcJson) =>
      _$MediaFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class ThreePoint extends Object {
  @JsonKey(name: "dislike_reasons")
  List<Reason> dislikeReasons;
  @JsonKey(name: "feedbacks")
  List<Reason> feedbacks;
  @JsonKey(name: "watch_later")
  int watchLater;

  ThreePoint({this.dislikeReasons, this.feedbacks, this.watchLater});

  factory ThreePoint.fromJson(Map<String, dynamic> srcJson) =>
      _$ThreePointFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ThreePointToJson(this);
}

@JsonSerializable()
class Reason extends Object {
  int id;
  String name;

  Reason({this.id, this.name});

  factory Reason.fromJson(Map<String, dynamic> srcJson) =>
      _$ReasonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ReasonToJson(this);
}

@JsonSerializable()
class Arguments extends Object {
  @JsonKey(name: "up_id")
  int upId;
  @JsonKey(name: "up_name")
  String upName;

  int rid;
  String rname;
  int tid;
  String tname;
  int aid;

  Arguments(
      {this.upId,
      this.upName,
      this.rid,
      this.rname,
      this.tid,
      this.tname,
      this.aid});

  factory Arguments.fromJson(Map<String, dynamic> srcJson) =>
      _$ArgumentsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArgumentsToJson(this);
}

@JsonSerializable()
class PlayerArguments extends Object {
  int aid;
  int cid;
  String type;

  PlayerArguments({this.aid, this.cid, this.type});

  factory PlayerArguments.fromJson(Map<String, dynamic> srcJson) =>
      _$PlayerArgumentsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlayerArgumentsToJson(this);
}

@JsonSerializable()
class ThreePointV2 extends Object {
  String title;
  String type;
  String subtitle;
  List<Reason> reasons;
  int id;

  ThreePointV2({this.title, this.type, this.subtitle, this.reasons, this.id});

  factory ThreePointV2.fromJson(Map<String, dynamic> srcJson) =>
      _$ThreePointV2FromJson(srcJson);

  Map<String, dynamic> toJson() => _$ThreePointV2ToJson(this);
}

@JsonSerializable()
class DescButton extends Object {
  String text;
  String uri;
  String event;
  int type;
  @JsonKey(name: "event_v2")
  String eventV2;

  DescButton({this.text, this.uri, this.event, this.type, this.eventV2});

  factory DescButton.fromJson(Map<String, dynamic> srcJson) =>
      _$DescButtonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DescButtonToJson(this);
}

@JsonSerializable()
class AdInfo extends Object {
  @JsonKey(name: "creative_id")
  int creativeId;
  @JsonKey(name: "creative_type")
  int creativeType;
  @JsonKey(name: "card_type")
  int cardType;
  @JsonKey(name: "creative_content")
  CreativeContent creativeContent;
  @JsonKey(name: "ad_cb")
  String adCb;
  int resource;
  int source;
  @JsonKey(name: "request_id")
  String requestId;
  @JsonKey(name: "is_ad")
  bool isAd;
  @JsonKey(name: "cm_mark")
  int cmMark;
  int index;
  @JsonKey(name: "is_ad_loc")
  bool isAdLoc;
  @JsonKey(name: "card_index")
  int cardIndex;
  @JsonKey(name: "client_ip")
  String clientIp;
  Extra extra;
  @JsonKey(name: "creative_style")
  int creativeStyle;

  AdInfo(
      {this.creativeId,
      this.creativeType,
      this.cardType,
      this.creativeContent,
      this.adCb,
      this.resource,
      this.source,
      this.requestId,
      this.isAd,
      this.cmMark,
      this.index,
      this.isAdLoc,
      this.cardIndex,
      this.clientIp,
      this.extra,
      this.creativeStyle});

  factory AdInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$AdInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AdInfoToJson(this);
}

@JsonSerializable()
class CreativeContent extends Object {
  String title;
  String description;
  @JsonKey(name: "image_url")
  String imageUrl;
  @JsonKey(name: "image_md5")
  String imageMd5;
  String url;
  @JsonKey(name: "click_url")
  String clickUrl;
  @JsonKey(name: "show_url")
  String showUrl;

  CreativeContent(
      {this.title,
      this.description,
      this.imageUrl,
      this.imageMd5,
      this.url,
      this.clickUrl,
      this.showUrl});

  factory CreativeContent.fromJson(Map<String, dynamic> srcJson) =>
      _$CreativeContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CreativeContentToJson(this);
}

@JsonSerializable()
class Extra extends Object {
  @JsonKey(name: "use_ad_web_v2")
  bool useAdWebV2;
  @JsonKey(name: "show_urls")
  List<String> showUrls;
  @JsonKey(name: "click_urls")
  List<String> clickUrls;
  @JsonKey(name: "download_whitelist")
  List<DownloadWhitelist> downloadWhitelist;
  @JsonKey(name: "open_whitelist")
  List<dynamic> openWhitelist;
  Card card;
  @JsonKey(name: "report_time")
  int reportTime;
  @JsonKey(name: "appstore_priority")
  int appstorePriority;
  @JsonKey(name: "sales_type")
  int salesType;
  @JsonKey(name: "special_industry")
  bool specialIndustry;
  @JsonKey(name: "special_industry_tips")
  String specialIndustryTips;
  @JsonKey(name: "preload_landingpage")
  int preloadLandingpage;
  @JsonKey(name: "enable_share")
  bool enableShare;
  @JsonKey(name: "share_info")
  ShareInfo shareInfo;
  @JsonKey(name: "upzone_entrance_type")
  int upzoneEntranceType;
  @JsonKey(name: "upzone_entrance_report_id")
  int upzoneEntranceReportId;

  Extra(
      {this.useAdWebV2,
      this.showUrls,
      this.clickUrls,
      this.downloadWhitelist,
      this.openWhitelist,
      this.card,
      this.reportTime,
      this.appstorePriority,
      this.salesType,
      this.specialIndustry,
      this.specialIndustryTips,
      this.preloadLandingpage,
      this.enableShare,
      this.shareInfo,
      this.upzoneEntranceType,
      this.upzoneEntranceReportId});

  factory Extra.fromJson(Map<String, dynamic> srcJson) =>
      _$ExtraFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ExtraToJson(this);
}

@JsonSerializable()
class DownloadWhitelist extends Object {
  int size;
  @JsonKey(name: "display_name")
  String displayName;
  @JsonKey(name: "apk_name")
  String apkName;
  String url;
  String md5;
  String icon;
  @JsonKey(name: "bili_url")
  String biliUrl;

  DownloadWhitelist(
      {this.size,
      this.displayName,
      this.apkName,
      this.url,
      this.md5,
      this.icon,
      this.biliUrl});

  factory DownloadWhitelist.fromJson(Map<String, dynamic> srcJson) =>
      _$DownloadWhitelistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DownloadWhitelistToJson(this);
}

@JsonSerializable()
class Card extends Object {
  @JsonKey(name: "card_type")
  int cardType;
  String title;
  List<Cover> covers;
  @JsonKey(name: "jump_url")
  String jumpUrl;
  String desc;
  @JsonKey(name: "callup_url")
  String callupUrl;
  @JsonKey(name: "long_desc")
  String longDesc;
  @JsonKey(name: "ad_tag")
  String adTag;
  @JsonKey(name: "extra_desc")
  String extraDesc;
  @JsonKey(name: "ad_tag_style")
  AdTagStyle adTagStyle;
  @JsonKey(name: "feedback_panel")
  FeedbackPanel feedbackPanel;

  Card(
      {this.cardType,
      this.title,
      this.covers,
      this.jumpUrl,
      this.desc,
      this.callupUrl,
      this.longDesc,
      this.adTag,
      this.extraDesc,
      this.adTagStyle,
      this.feedbackPanel});

  factory Card.fromJson(Map<String, dynamic> srcJson) =>
      _$CardFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}

@JsonSerializable()
class Cover extends Object {
  String url;
  int loop;
  @JsonKey(name: "image_height")
  int imageHeight;
  @JsonKey(name: "image_width")
  int imageWidth;

  Cover({this.url, this.loop, this.imageHeight, this.imageWidth});

  factory Cover.fromJson(Map<String, dynamic> srcJson) =>
      _$CoverFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CoverToJson(this);
}

@JsonSerializable()
class AdTagStyle extends Object implements TextAttributesDefinitions {
  int type;
  String text;
  @JsonKey(name: "text_color")
  String textColor;
  @JsonKey(name: "bg_border_color")
  String borderColor;

  AdTagStyle({this.type, this.text, this.textColor, this.borderColor});

  factory AdTagStyle.fromJson(Map<String, dynamic> srcJson) =>
      _$AdTagStyleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AdTagStyleToJson(this);

  @override
  String backgroundColor;

  @override
  String darkModeBackgroundColor;

  @override
  String darkModeBorderColor;

  @override
  String darkModeTextColor;
}

@JsonSerializable()
class FeedbackPanel extends Object {
  @JsonKey(name: "pannel_type_text")
  String panelTypeText;
  @JsonKey(name: "feedback_pannel_detail")
  List<FeedbackPanelDetail> feedbackPanelDetail;

  FeedbackPanel({this.panelTypeText, this.feedbackPanelDetail});

  factory FeedbackPanel.fromJson(Map<String, dynamic> srcJson) =>
      _$FeedbackPanelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeedbackPanelToJson(this);
}

@JsonSerializable()
class FeedbackPanelDetail extends Object {
  String text;
  @JsonKey(name: "module_id")
  int moduleId;
  @JsonKey(name: "jump_type")
  int jumpType;
  @JsonKey(name: "icon_url")
  String iconUrl;
  @JsonKey(name: "jump_url")
  String jumpUrl;
  @JsonKey(name: "secondary_panel")
  List<SecondaryPanel> secondaryPanel;

  FeedbackPanelDetail(
      {this.text,
      this.moduleId,
      this.jumpType,
      this.iconUrl,
      this.jumpUrl,
      this.secondaryPanel});

  factory FeedbackPanelDetail.fromJson(Map<String, dynamic> srcJson) =>
      _$FeedbackPanelDetailFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeedbackPanelDetailToJson(this);
}

@JsonSerializable()
class SecondaryPanel extends Object {
  String text;
  @JsonKey(name: "reason_id")
  int reasonId;

  SecondaryPanel({this.text, this.reasonId});

  factory SecondaryPanel.fromJson(Map<String, dynamic> srcJson) =>
      _$SecondaryPanelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SecondaryPanelToJson(this);
}

@JsonSerializable()
class ShareInfo extends Object {
  String title;
  String subtitle;
  @JsonKey(name: "image_url")
  String imageUrl;

  ShareInfo({this.title, this.subtitle, this.imageUrl});

  factory ShareInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$ShareInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShareInfoToJson(this);
}

@JsonSerializable()
class TextAttributes extends Object implements TextAttributesDefinitions {
  @JsonKey(name: "text_color_night")
  String darkModeTextColor;

  @JsonKey(name: "bg_color")
  String backgroundColor;

  @JsonKey(name: "bg_color_night")
  String darkModeBackgroundColor;

  @JsonKey(name: "text_color")
  String textColor;

  @JsonKey(name: "border_color")
  String borderColor;

  @JsonKey(name: "border_color_night")
  String darkModeBorderColor;

  @JsonKey(name: "bg_style")
  int bgStyle;
  String text;

  TextAttributes(
      {this.text,
      this.textColor,
      this.darkModeTextColor,
      this.backgroundColor,
      this.darkModeBackgroundColor,
      this.borderColor,
      this.darkModeBorderColor,
      this.bgStyle});

  factory TextAttributes.fromJson(Map<String, dynamic> srcJson) =>
      _$TextAttributesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TextAttributesToJson(this);
}

class TextAttributesDefinitions {
  String text;
  String textColor;
  String darkModeTextColor;
  String backgroundColor;
  String darkModeBackgroundColor;
  String borderColor;
  String darkModeBorderColor;
}
