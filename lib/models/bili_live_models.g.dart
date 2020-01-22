// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_live_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveStreamBody _$LiveStreamBodyFromJson(Map<String, dynamic> json) {
  return LiveStreamBody(
    json['code'] as int,
    json['message'] as String,
    json['ttl'] as int,
    json['data'] == null
        ? null
        : LiveStreamData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

LiveStreamData _$LiveStreamDataFromJson(Map<String, dynamic> json) {
  return LiveStreamData(
    LiveStreamData._rankFromJson(json['hour_rank'] as List),
    json['sea_patrol'] as List,
    json['my_tag'] as List,
    LiveStreamData._idolFromJson(json['my_idol'] as List),
    LiveStreamData._roomFromJson(json['room_list'] as List),
    json['activity_card'] as List,
    json['interval'] as int,
    LiveStreamData._areaFromJson(json['area_entrance_v2'] as List),
    json['area_entrance'] as List,
    LiveStreamData._adFromJson(json['banner'] as List),
    LiveStreamData._activityFromJson(json['activity_card_v2'] as List),
    json['is_sky_horse_gray'] as int,
  );
}

LiveAreaEntrance _$LiveAreaEntranceFromJson(Map<String, dynamic> json) {
  return LiveAreaEntrance(
    json['id'] as int,
    json['link'] as String,
    json['pic'] as String,
    json['title'] as String,
    json['area_v2_id'] as int,
    json['area_v2_parent_id'] as int,
    json['tag_type'] as int,
  );
}

Map<String, dynamic> _$LiveAreaEntranceToJson(LiveAreaEntrance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'pic': instance.pic,
      'title': instance.title,
      'area_v2_id': instance.areaV2Id,
      'area_v2_parent_id': instance.areaV2ParentId,
      'tag_type': instance.tagType,
    };

LiveActivity _$LiveActivityFromJson(Map<String, dynamic> json) {
  return LiveActivity(
    json['aid'] as int,
    json['type'] as int,
    json['title'] as String,
    json['logo_url'] as String,
    json['start_at'] as int,
    json['end_at'] as int,
    json['time_text'] as String,
    json['button_url'] as String,
    json['button_text'] as String,
    json['activity_url'] as String,
    json['status'] as int,
    json['on_live'] as int,
  );
}

Map<String, dynamic> _$LiveActivityToJson(LiveActivity instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'type': instance.type,
      'title': instance.title,
      'logo_url': instance.logoUrl,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
      'time_text': instance.timeText,
      'button_url': instance.buttonUrl,
      'button_text': instance.buttonText,
      'activity_url': instance.activityUrl,
      'status': instance.status,
      'on_live': instance.onLive,
    };

LiveIdol _$LiveIdolFromJson(Map<String, dynamic> json) {
  return LiveIdol(
    json['total_count'] as int,
    json['time_desc'] as String,
    json['uname_desc'] as String,
    json['tags_desc'] as String,
    json['card_type'] as int,
    json['relation_page'] as int,
    json['show_type'] as int,
  );
}

Map<String, dynamic> _$LiveIdolToJson(LiveIdol instance) => <String, dynamic>{
      'total_count': instance.totalCount,
      'time_desc': instance.timeDesc,
      'uname_desc': instance.unameDesc,
      'tags_desc': instance.tagsDesc,
      'card_type': instance.cardType,
      'relation_page': instance.relationPage,
      'show_type': instance.showType,
    };

LiveRoom _$LiveRoomFromJson(Map<String, dynamic> json) {
  return LiveRoom(
    (json['accept_quality'] as List)?.map((e) => e as int)?.toList(),
    json['area_v2_id'] as int,
    json['area_v2_parent_id'] as int,
    json['area_v2_name'] as String,
    json['area_v2_parent_name'] as String,
    json['broadcast_type'] as int,
    json['cover'] as String,
    json['current_quality'] as int,
    json['face'] as String,
    json['link'] as String,
    json['online'] as int,
    json['pendent_ru'] as String,
    json['pendent_ru_color'] as String,
    json['pendent_ru_pic'] as String,
    json['pk_id'] as int,
    json['play_url'] as String,
    json['rec_type'] as int,
    json['roomid'] as int,
    json['title'] as String,
    json['uname'] as String,
    json['play_url_h265'] as String,
    json['session_id'] as String,
    json['group_id'] as int,
    json['show_callback'] as String,
    json['click_callback'] as String,
    json['current_qn'] as int,
    (json['quality_description'] as List)
        ?.map((e) => e == null
            ? null
            : QualityDescription.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['play_url_card'] as String,
    json['uid'] as int,
    json['flag'] as int,
    (json['pendent_list'] as List)
        ?.map((e) =>
            e == null ? null : LivePendent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LiveRoomToJson(LiveRoom instance) => <String, dynamic>{
      'accept_quality': instance.acceptQuality,
      'area_v2_id': instance.areaV2Id,
      'area_v2_parent_id': instance.areaV2ParentId,
      'area_v2_name': instance.areaV2Name,
      'area_v2_parent_name': instance.areaV2ParentName,
      'broadcast_type': instance.broadcastType,
      'cover': instance.cover,
      'current_quality': instance.currentQuality,
      'face': instance.face,
      'link': instance.link,
      'online': instance.online,
      'pendent_ru': instance.pendentRu,
      'pendent_ru_color': instance.pendentRuColor,
      'pendent_ru_pic': instance.pendentRuPic,
      'pk_id': instance.pkId,
      'play_url': instance.playUrl,
      'rec_type': instance.recType,
      'roomid': instance.roomid,
      'title': instance.title,
      'uname': instance.uname,
      'play_url_h265': instance.playUrlH265,
      'session_id': instance.sessionId,
      'group_id': instance.groupId,
      'show_callback': instance.showCallback,
      'click_callback': instance.clickCallback,
      'current_qn': instance.currentQn,
      'quality_description': instance.qualityDescription,
      'play_url_card': instance.playUrlCard,
      'uid': instance.uid,
      'flag': instance.flag,
      'pendent_list': instance.pendentList,
    };

LiveRank _$LiveRankFromJson(Map<String, dynamic> json) {
  return LiveRank(
    json['rank'] as int,
    json['uid'] as int,
    json['roomid'] as int,
    json['uname'] as String,
    json['face'] as String,
    json['live_status'] as int,
    json['area_v2_parent_id'] as int,
    json['area_v2_parent_name'] as String,
    json['area_v2_id'] as int,
    json['area_v2_name'] as String,
  );
}

Map<String, dynamic> _$LiveRankToJson(LiveRank instance) => <String, dynamic>{
      'rank': instance.rank,
      'uid': instance.uid,
      'roomid': instance.roomid,
      'uname': instance.uname,
      'face': instance.face,
      'live_status': instance.liveStatus,
      'area_v2_parent_id': instance.areaV2ParentId,
      'area_v2_parent_name': instance.areaV2ParentName,
      'area_v2_id': instance.areaV2Id,
      'area_v2_name': instance.areaV2Name,
    };

QualityDescription _$QualityDescriptionFromJson(Map<String, dynamic> json) {
  return QualityDescription(
    json['qn'] as int,
    json['desc'] as String,
  );
}

Map<String, dynamic> _$QualityDescriptionToJson(QualityDescription instance) =>
    <String, dynamic>{
      'qn': instance.qn,
      'desc': instance.desc,
    };

ExtraInfo _$ExtraInfoFromJson(Map<String, dynamic> json) {
  return ExtraInfo(
    json['total_count'] as int,
    json['time_desc'] as String,
    json['uname_desc'] as String,
    json['tags_desc'] as String,
    json['card_type'] as int,
    json['relation_page'] as int,
    json['show_type'] as int,
    json['offline'] as List,
    json['sub_title'] as String,
  );
}

Map<String, dynamic> _$ExtraInfoToJson(ExtraInfo instance) => <String, dynamic>{
      'total_count': instance.totalCount,
      'time_desc': instance.timeDesc,
      'uname_desc': instance.unameDesc,
      'tags_desc': instance.tagsDesc,
      'card_type': instance.cardType,
      'relation_page': instance.relationPage,
      'show_type': instance.showType,
      'offline': instance.offline,
      'sub_title': instance.subtitle,
    };

ModuleInfo _$ModuleInfoFromJson(Map<String, dynamic> json) {
  return ModuleInfo(
    json['id'] as int,
    json['link'] as String,
    json['pic'] as String,
    json['title'] as String,
    json['type'] as int,
    json['sort'] as int,
    json['count'] as int,
  );
}

Map<String, dynamic> _$ModuleInfoToJson(ModuleInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'pic': instance.pic,
      'title': instance.title,
      'type': instance.type,
      'sort': instance.sort,
      'count': instance.count,
    };

LiveAd _$LiveAdFromJson(Map<String, dynamic> json) {
  return LiveAd(
    json['id'] as int,
    json['link'] as String,
    json['pic'] as String,
    json['title'] as String,
    json['content'] as String,
    json['source_content'] == null
        ? null
        : SourceContent.fromJson(
            json['source_content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LiveAdToJson(LiveAd instance) => <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'pic': instance.pic,
      'title': instance.title,
      'content': instance.content,
      'source_content': instance.sourceContent,
    };

SourceContent _$SourceContentFromJson(Map<String, dynamic> json) {
  return SourceContent(
    json['request_id'] as String,
    json['source_id'] as int,
    json['resource_id'] as int,
    json['is_ad_loc'] as bool,
    json['server_type'] as int,
    json['client_ip'] as String,
    json['card_index'] as int,
    json['index'] as int,
  );
}

Map<String, dynamic> _$SourceContentToJson(SourceContent instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'source_id': instance.sourceId,
      'resource_id': instance.resourceId,
      'is_ad_loc': instance.isAdLoc,
      'server_type': instance.serverType,
      'client_ip': instance.clientIp,
      'card_index': instance.cardIndex,
      'index': instance.index,
    };

LivePendent _$LivePendentFromJson(Map<String, dynamic> json) {
  return LivePendent(
    json['content'] as String,
    json['position'] as int,
    json['color'] as String,
    json['pic'] as String,
  );
}

Map<String, dynamic> _$LivePendentToJson(LivePendent instance) =>
    <String, dynamic>{
      'content': instance.content,
      'position': instance.position,
      'color': instance.color,
      'pic': instance.pic,
    };
