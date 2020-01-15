// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_featured_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturedHttpBody _$FeaturedHttpBodyFromJson(Map<String, dynamic> json) {
  return FeaturedHttpBody(
    code: json['code'] as int,
    message: json['message'] as String,
    ttl: json['ttl'] as int,
    data: json['data'] == null
        ? null
        : FeaturedBody.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeaturedHttpBodyToJson(FeaturedHttpBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

FeaturedBody _$FeaturedBodyFromJson(Map<String, dynamic> json) {
  return FeaturedBody(
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Media.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    config: json['config'] == null
        ? null
        : Config.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeaturedBodyToJson(FeaturedBody instance) =>
    <String, dynamic>{
      'items': instance.items,
      'config': instance.config,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    column: json['column'] as int,
    autoplayCard: json['autoplay_card'] as int,
    feedCleanAbtest: json['feed_clean_abtest'] as int,
    homeTransferTest: json['home_transfer_test'] as int,
    autoRefreshTime: json['auto_refresh_time'] as int,
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'column': instance.column,
      'autoplay_card': instance.autoplayCard,
      'feed_clean_abtest': instance.feedCleanAbtest,
      'home_transfer_test': instance.homeTransferTest,
      'auto_refresh_time': instance.autoRefreshTime,
    };

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
    cardType: json['card_type'] as String,
    cardGoto: json['card_goto'] as String,
    goto: json['goto'] as String,
    param: json['param'] as String,
    cover: json['cover'] as String,
    title: json['title'] as String,
    uri: json['uri'] as String,
    threePoint: json['three_point'] == null
        ? null
        : ThreePoint.fromJson(json['three_point'] as Map<String, dynamic>),
    args: json['args'] == null
        ? null
        : Arguments.fromJson(json['args'] as Map<String, dynamic>),
    playerArgs: json['player_args'] == null
        ? null
        : PlayerArguments.fromJson(json['player_args'] as Map<String, dynamic>),
    idx: json['idx'] as int,
    threePointV2: (json['three_point_v2'] as List)
        ?.map((e) =>
            e == null ? null : ThreePointV2.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coverLeftText1: json['cover_left_text_1'] as String,
    coverLeftIcon1: json['cover_left_icon_1'] as int,
    coverLeftText2: json['cover_left_text_2'] as String,
    coverLeftIcon2: json['cover_left_icon_2'] as int,
    coverRightText: json['cover_right_text'] as String,
    descButton: json['desc_button'] == null
        ? null
        : DescButton.fromJson(json['desc_button'] as Map<String, dynamic>),
    canPlay: json['can_play'] as int,
    officialIcon: json['official_icon'] as int,
    rcmdReason: json['rcmd_reason'] as String,
    rcmdReasonStyle: json['rcmd_reason_style'] == null
        ? null
        : TextAttributes.fromJson(
            json['rcmd_reason_style'] as Map<String, dynamic>),
    adInfo: json['ad_info'] == null
        ? null
        : AdInfo.fromJson(json['ad_info'] as Map<String, dynamic>),
  )
    ..badge = json['badge'] as String
    ..badgeStyle = json['badge_style'] == null
        ? null
        : TextAttributes.fromJson(json['badge_style'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'card_type': instance.cardType,
      'card_goto': instance.cardGoto,
      'goto': instance.goto,
      'param': instance.param,
      'cover': instance.cover,
      'title': instance.title,
      'uri': instance.uri,
      'three_point': instance.threePoint,
      'args': instance.args,
      'player_args': instance.playerArgs,
      'idx': instance.idx,
      'three_point_v2': instance.threePointV2,
      'cover_left_text_1': instance.coverLeftText1,
      'badge': instance.badge,
      'badge_style': instance.badgeStyle,
      'cover_left_icon_1': instance.coverLeftIcon1,
      'cover_left_text_2': instance.coverLeftText2,
      'cover_left_icon_2': instance.coverLeftIcon2,
      'cover_right_text': instance.coverRightText,
      'desc_button': instance.descButton,
      'can_play': instance.canPlay,
      'official_icon': instance.officialIcon,
      'rcmd_reason': instance.rcmdReason,
      'rcmd_reason_style': instance.rcmdReasonStyle,
      'ad_info': instance.adInfo,
    };

ThreePoint _$ThreePointFromJson(Map<String, dynamic> json) {
  return ThreePoint(
    dislikeReasons: (json['dislike_reasons'] as List)
        ?.map((e) =>
            e == null ? null : Reason.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    feedbacks: (json['feedbacks'] as List)
        ?.map((e) =>
            e == null ? null : Reason.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    watchLater: json['watch_later'] as int,
  );
}

Map<String, dynamic> _$ThreePointToJson(ThreePoint instance) =>
    <String, dynamic>{
      'dislike_reasons': instance.dislikeReasons,
      'feedbacks': instance.feedbacks,
      'watch_later': instance.watchLater,
    };

Reason _$ReasonFromJson(Map<String, dynamic> json) {
  return Reason(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ReasonToJson(Reason instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Arguments _$ArgumentsFromJson(Map<String, dynamic> json) {
  return Arguments(
    upId: json['up_id'] as int,
    upName: json['up_name'] as String,
    rid: json['rid'] as int,
    rname: json['rname'] as String,
    tid: json['tid'] as int,
    tname: json['tname'] as String,
    aid: json['aid'] as int,
  );
}

Map<String, dynamic> _$ArgumentsToJson(Arguments instance) => <String, dynamic>{
      'up_id': instance.upId,
      'up_name': instance.upName,
      'rid': instance.rid,
      'rname': instance.rname,
      'tid': instance.tid,
      'tname': instance.tname,
      'aid': instance.aid,
    };

PlayerArguments _$PlayerArgumentsFromJson(Map<String, dynamic> json) {
  return PlayerArguments(
    aid: json['aid'] as int,
    cid: json['cid'] as int,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PlayerArgumentsToJson(PlayerArguments instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'cid': instance.cid,
      'type': instance.type,
    };

ThreePointV2 _$ThreePointV2FromJson(Map<String, dynamic> json) {
  return ThreePointV2(
    title: json['title'] as String,
    type: json['type'] as String,
    subtitle: json['subtitle'] as String,
    reasons: (json['reasons'] as List)
        ?.map((e) =>
            e == null ? null : Reason.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$ThreePointV2ToJson(ThreePointV2 instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'subtitle': instance.subtitle,
      'reasons': instance.reasons,
      'id': instance.id,
    };

DescButton _$DescButtonFromJson(Map<String, dynamic> json) {
  return DescButton(
    text: json['text'] as String,
    uri: json['uri'] as String,
    event: json['event'] as String,
    type: json['type'] as int,
    eventV2: json['event_v2'] as String,
  );
}

Map<String, dynamic> _$DescButtonToJson(DescButton instance) =>
    <String, dynamic>{
      'text': instance.text,
      'uri': instance.uri,
      'event': instance.event,
      'type': instance.type,
      'event_v2': instance.eventV2,
    };

AdInfo _$AdInfoFromJson(Map<String, dynamic> json) {
  return AdInfo(
    creativeId: json['creative_id'] as int,
    creativeType: json['creative_type'] as int,
    cardType: json['card_type'] as int,
    creativeContent: json['creative_content'] == null
        ? null
        : CreativeContent.fromJson(
            json['creative_content'] as Map<String, dynamic>),
    adCb: json['ad_cb'] as String,
    resource: json['resource'] as int,
    source: json['source'] as int,
    requestId: json['request_id'] as String,
    isAd: json['is_ad'] as bool,
    cmMark: json['cm_mark'] as int,
    index: json['index'] as int,
    isAdLoc: json['is_ad_loc'] as bool,
    cardIndex: json['card_index'] as int,
    clientIp: json['client_ip'] as String,
    extra: json['extra'] == null
        ? null
        : Extra.fromJson(json['extra'] as Map<String, dynamic>),
    creativeStyle: json['creative_style'] as int,
  );
}

Map<String, dynamic> _$AdInfoToJson(AdInfo instance) => <String, dynamic>{
      'creative_id': instance.creativeId,
      'creative_type': instance.creativeType,
      'card_type': instance.cardType,
      'creative_content': instance.creativeContent,
      'ad_cb': instance.adCb,
      'resource': instance.resource,
      'source': instance.source,
      'request_id': instance.requestId,
      'is_ad': instance.isAd,
      'cm_mark': instance.cmMark,
      'index': instance.index,
      'is_ad_loc': instance.isAdLoc,
      'card_index': instance.cardIndex,
      'client_ip': instance.clientIp,
      'extra': instance.extra,
      'creative_style': instance.creativeStyle,
    };

CreativeContent _$CreativeContentFromJson(Map<String, dynamic> json) {
  return CreativeContent(
    title: json['title'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    imageMd5: json['image_md5'] as String,
    url: json['url'] as String,
    clickUrl: json['click_url'] as String,
    showUrl: json['show_url'] as String,
  );
}

Map<String, dynamic> _$CreativeContentToJson(CreativeContent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'image_md5': instance.imageMd5,
      'url': instance.url,
      'click_url': instance.clickUrl,
      'show_url': instance.showUrl,
    };

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return Extra(
    useAdWebV2: json['use_ad_web_v2'] as bool,
    showUrls: (json['show_urls'] as List)?.map((e) => e as String)?.toList(),
    clickUrls: (json['click_urls'] as List)?.map((e) => e as String)?.toList(),
    downloadWhitelist: (json['download_whitelist'] as List)
        ?.map((e) => e == null
            ? null
            : DownloadWhitelist.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    openWhitelist: json['open_whitelist'] as List,
    card: json['card'] == null
        ? null
        : Card.fromJson(json['card'] as Map<String, dynamic>),
    reportTime: json['report_time'] as int,
    appstorePriority: json['appstore_priority'] as int,
    salesType: json['sales_type'] as int,
    specialIndustry: json['special_industry'] as bool,
    specialIndustryTips: json['special_industry_tips'] as String,
    preloadLandingpage: json['preload_landingpage'] as int,
    enableShare: json['enable_share'] as bool,
    shareInfo: json['share_info'] == null
        ? null
        : ShareInfo.fromJson(json['share_info'] as Map<String, dynamic>),
    upzoneEntranceType: json['upzone_entrance_type'] as int,
    upzoneEntranceReportId: json['upzone_entrance_report_id'] as int,
  );
}

Map<String, dynamic> _$ExtraToJson(Extra instance) => <String, dynamic>{
      'use_ad_web_v2': instance.useAdWebV2,
      'show_urls': instance.showUrls,
      'click_urls': instance.clickUrls,
      'download_whitelist': instance.downloadWhitelist,
      'open_whitelist': instance.openWhitelist,
      'card': instance.card,
      'report_time': instance.reportTime,
      'appstore_priority': instance.appstorePriority,
      'sales_type': instance.salesType,
      'special_industry': instance.specialIndustry,
      'special_industry_tips': instance.specialIndustryTips,
      'preload_landingpage': instance.preloadLandingpage,
      'enable_share': instance.enableShare,
      'share_info': instance.shareInfo,
      'upzone_entrance_type': instance.upzoneEntranceType,
      'upzone_entrance_report_id': instance.upzoneEntranceReportId,
    };

DownloadWhitelist _$DownloadWhitelistFromJson(Map<String, dynamic> json) {
  return DownloadWhitelist(
    size: json['size'] as int,
    displayName: json['display_name'] as String,
    apkName: json['apk_name'] as String,
    url: json['url'] as String,
    md5: json['md5'] as String,
    icon: json['icon'] as String,
    biliUrl: json['bili_url'] as String,
  );
}

Map<String, dynamic> _$DownloadWhitelistToJson(DownloadWhitelist instance) =>
    <String, dynamic>{
      'size': instance.size,
      'display_name': instance.displayName,
      'apk_name': instance.apkName,
      'url': instance.url,
      'md5': instance.md5,
      'icon': instance.icon,
      'bili_url': instance.biliUrl,
    };

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    cardType: json['card_type'] as int,
    title: json['title'] as String,
    covers: (json['covers'] as List)
        ?.map(
            (e) => e == null ? null : Cover.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jumpUrl: json['jump_url'] as String,
    desc: json['desc'] as String,
    callupUrl: json['callup_url'] as String,
    longDesc: json['long_desc'] as String,
    adTag: json['ad_tag'] as String,
    extraDesc: json['extra_desc'] as String,
    adTagStyle: json['ad_tag_style'] == null
        ? null
        : AdTagStyle.fromJson(json['ad_tag_style'] as Map<String, dynamic>),
    feedbackPanel: json['feedback_panel'] == null
        ? null
        : FeedbackPanel.fromJson(
            json['feedback_panel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'card_type': instance.cardType,
      'title': instance.title,
      'covers': instance.covers,
      'jump_url': instance.jumpUrl,
      'desc': instance.desc,
      'callup_url': instance.callupUrl,
      'long_desc': instance.longDesc,
      'ad_tag': instance.adTag,
      'extra_desc': instance.extraDesc,
      'ad_tag_style': instance.adTagStyle,
      'feedback_panel': instance.feedbackPanel,
    };

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return Cover(
    url: json['url'] as String,
    loop: json['loop'] as int,
    imageHeight: json['image_height'] as int,
    imageWidth: json['image_width'] as int,
  );
}

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
      'url': instance.url,
      'loop': instance.loop,
      'image_height': instance.imageHeight,
      'image_width': instance.imageWidth,
    };

AdTagStyle _$AdTagStyleFromJson(Map<String, dynamic> json) {
  return AdTagStyle(
    type: json['type'] as int,
    text: json['text'] as String,
    textColor: json['text_color'] as String,
    bgBorderColor: json['bg_border_color'] as String,
  );
}

Map<String, dynamic> _$AdTagStyleToJson(AdTagStyle instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'text_color': instance.textColor,
      'bg_border_color': instance.bgBorderColor,
    };

FeedbackPanel _$FeedbackPanelFromJson(Map<String, dynamic> json) {
  return FeedbackPanel(
    panelTypeText: json['pannel_type_text'] as String,
    feedbackPanelDetail: (json['feedback_pannel_detail'] as List)
        ?.map((e) => e == null
            ? null
            : FeedbackPanelDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FeedbackPanelToJson(FeedbackPanel instance) =>
    <String, dynamic>{
      'pannel_type_text': instance.panelTypeText,
      'feedback_pannel_detail': instance.feedbackPanelDetail,
    };

FeedbackPanelDetail _$FeedbackPanelDetailFromJson(Map<String, dynamic> json) {
  return FeedbackPanelDetail(
    text: json['text'] as String,
    moduleId: json['module_id'] as int,
    jumpType: json['jump_type'] as int,
    iconUrl: json['icon_url'] as String,
    jumpUrl: json['jump_url'] as String,
    secondaryPanel: (json['secondary_panel'] as List)
        ?.map((e) => e == null
            ? null
            : SecondaryPanel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FeedbackPanelDetailToJson(
        FeedbackPanelDetail instance) =>
    <String, dynamic>{
      'text': instance.text,
      'module_id': instance.moduleId,
      'jump_type': instance.jumpType,
      'icon_url': instance.iconUrl,
      'jump_url': instance.jumpUrl,
      'secondary_panel': instance.secondaryPanel,
    };

SecondaryPanel _$SecondaryPanelFromJson(Map<String, dynamic> json) {
  return SecondaryPanel(
    text: json['text'] as String,
    reasonId: json['reason_id'] as int,
  );
}

Map<String, dynamic> _$SecondaryPanelToJson(SecondaryPanel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'reason_id': instance.reasonId,
    };

ShareInfo _$ShareInfoFromJson(Map<String, dynamic> json) {
  return ShareInfo(
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    imageUrl: json['image_url'] as String,
  );
}

Map<String, dynamic> _$ShareInfoToJson(ShareInfo instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image_url': instance.imageUrl,
    };

TextAttributes _$TextAttributesFromJson(Map<String, dynamic> json) {
  return TextAttributes(
    text: json['text'] as String,
    textColor: json['text_color'] as String,
    bgColor: json['bg_color'] as String,
    borderColor: json['border_color'] as String,
    textColorNight: json['text_color_night'] as String,
    bgColorNight: json['bg_color_night'] as String,
    borderColorNight: json['border_color_night'] as String,
    bgStyle: json['bg_style'] as int,
  );
}

Map<String, dynamic> _$TextAttributesToJson(TextAttributes instance) =>
    <String, dynamic>{
      'text_color_night': instance.textColorNight,
      'bg_color': instance.bgColor,
      'bg_color_night': instance.bgColorNight,
      'text_color': instance.textColor,
      'border_color': instance.borderColor,
      'border_color_night': instance.borderColorNight,
      'bg_style': instance.bgStyle,
      'text': instance.text,
    };
