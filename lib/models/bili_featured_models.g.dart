// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_featured_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturedBody _$FeaturedBodyFromJson(Map<String, dynamic> json) {
  return FeaturedBody(
    json['code'] as int,
    json['message'] as String,
    json['ttl'] as int,
    json['data'] == null
        ? null
        : FeaturedData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeaturedBodyToJson(FeaturedBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

FeaturedData _$FeaturedDataFromJson(Map<String, dynamic> json) {
  return FeaturedData(
    (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Items.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['config'] == null
        ? null
        : Config.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeaturedDataToJson(FeaturedData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'config': instance.config,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    json['cover_left_icon_2'] as int,
    json['rcmd_reason_style'] == null
        ? null
        : Rcmd_reason_style.fromJson(
            json['rcmd_reason_style'] as Map<String, dynamic>),
    json['title'] as String,
    json['cover_left_icon_1'] as int,
    json['param'] as String,
    json['can_play'] as int,
    json['idx'] as int,
    json['rcmd_reason'] as String,
    json['cover_left_text_2'] as String,
    json['args'] == null
        ? null
        : Args.fromJson(json['args'] as Map<String, dynamic>),
    json['cover'] as String,
    json['cover_left_text_1'] as String,
    json['official_icon'] as int,
    json['uri'] as String,
    json['card_type'] as String,
    json['player_args'] == null
        ? null
        : Player_args.fromJson(json['player_args'] as Map<String, dynamic>),
    (json['three_point_v2'] as List)
        ?.map((e) => e == null
            ? null
            : Three_point_v2.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['cover_right_text'] as String,
    json['goto'] as String,
    json['card_goto'] as String,
    json['three_point'] == null
        ? null
        : Three_point.fromJson(json['three_point'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'cover_left_icon_2': instance.coverLeftIcon2,
      'rcmd_reason_style': instance.rcmdReasonStyle,
      'title': instance.title,
      'cover_left_icon_1': instance.coverLeftIcon1,
      'param': instance.param,
      'can_play': instance.canPlay,
      'idx': instance.idx,
      'rcmd_reason': instance.rcmdReason,
      'cover_left_text_2': instance.coverLeftText2,
      'args': instance.args,
      'cover': instance.cover,
      'cover_left_text_1': instance.coverLeftText1,
      'official_icon': instance.officialIcon,
      'uri': instance.uri,
      'card_type': instance.cardType,
      'player_args': instance.playerArgs,
      'three_point_v2': instance.threePointV2,
      'cover_right_text': instance.coverRightText,
      'goto': instance.goto,
      'card_goto': instance.cardGoto,
      'three_point': instance.threePoint,
    };

Rcmd_reason_style _$Rcmd_reason_styleFromJson(Map<String, dynamic> json) {
  return Rcmd_reason_style(
    json['border_color_night'] as String,
    json['bg_color'] as String,
    json['text_color_night'] as String,
    json['bg_color_night'] as String,
    json['border_color'] as String,
    json['text'] as String,
    json['bg_style'] as int,
    json['text_color'] as String,
  );
}

Map<String, dynamic> _$Rcmd_reason_styleToJson(Rcmd_reason_style instance) =>
    <String, dynamic>{
      'border_color_night': instance.borderColorNight,
      'bg_color': instance.bgColor,
      'text_color_night': instance.textColorNight,
      'bg_color_night': instance.bgColorNight,
      'border_color': instance.borderColor,
      'text': instance.text,
      'bg_style': instance.bgStyle,
      'text_color': instance.textColor,
    };

Args _$ArgsFromJson(Map<String, dynamic> json) {
  return Args(
    json['tname'] as String,
    json['up_name'] as String,
    json['rid'] as int,
    json['aid'] as int,
    json['up_id'] as int,
    json['rname'] as String,
    json['tid'] as int,
  );
}

Map<String, dynamic> _$ArgsToJson(Args instance) => <String, dynamic>{
      'tname': instance.tname,
      'up_name': instance.upName,
      'rid': instance.rid,
      'aid': instance.aid,
      'up_id': instance.upId,
      'rname': instance.rname,
      'tid': instance.tid,
    };

Player_args _$Player_argsFromJson(Map<String, dynamic> json) {
  return Player_args(
    json['aid'] as int,
    json['cid'] as int,
    json['type'] as String,
  );
}

Map<String, dynamic> _$Player_argsToJson(Player_args instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'cid': instance.cid,
      'type': instance.type,
    };

Three_point_v2 _$Three_point_v2FromJson(Map<String, dynamic> json) {
  return Three_point_v2(
    json['title'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$Three_point_v2ToJson(Three_point_v2 instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
    };

Three_point _$Three_pointFromJson(Map<String, dynamic> json) {
  return Three_point(
    (json['feedbacks'] as List)
        ?.map((e) =>
            e == null ? null : Feedbacks.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['watch_later'] as int,
    (json['dislike_reasons'] as List)
        ?.map((e) => e == null
            ? null
            : Dislike_reasons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Three_pointToJson(Three_point instance) =>
    <String, dynamic>{
      'feedbacks': instance.feedbacks,
      'watch_later': instance.watchLater,
      'dislike_reasons': instance.dislikeReasons,
    };

Feedbacks _$FeedbacksFromJson(Map<String, dynamic> json) {
  return Feedbacks(
    json['id'] as int,
    json['name'] as String,
  );
}

Map<String, dynamic> _$FeedbacksToJson(Feedbacks instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Dislike_reasons _$Dislike_reasonsFromJson(Map<String, dynamic> json) {
  return Dislike_reasons(
    json['id'] as int,
    json['name'] as String,
  );
}

Map<String, dynamic> _$Dislike_reasonsToJson(Dislike_reasons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    json['auto_refresh_time'] as int,
    json['autoplay_card'] as int,
    json['column'] as int,
    json['feed_clean_abtest'] as int,
    json['home_transfer_test'] as int,
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'auto_refresh_time': instance.autoRefreshTime,
      'autoplay_card': instance.autoplayCard,
      'column': instance.column,
      'feed_clean_abtest': instance.feedCleanAbtest,
      'home_transfer_test': instance.homeTransferTest,
    };
