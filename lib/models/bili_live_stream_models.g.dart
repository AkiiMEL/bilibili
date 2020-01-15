// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_live_stream_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveStreamHttpBody _$LiveStreamHttpBodyFromJson(Map<String, dynamic> json) {
  return LiveStreamHttpBody(
    code: json['code'] as int,
    message: json['message'] as String,
    ttl: json['ttl'] as int,
    data: json['data'] == null
        ? null
        : LiveStreamBody.fromJson(json['data'] as Map<String, dynamic>),
  );
}

LiveStreamBody _$LiveStreamBodyFromJson(Map<String, dynamic> json) {
  return LiveStreamBody(
    hourRank: LiveStreamBody._rankFromJson(json['hour_rank'] as List),
    seaPatrol: json['sea_patrol'] as List,
    myTag: json['my_tag'] as List,
    myIdol: LiveStreamBody._idolFromJson(json['my_idol'] as List),
    roomList: LiveStreamBody._roomFromJson(json['room_list'] as List),
    activityCard: json['activity_card'] as List,
    interval: json['interval'] as int,
    areaEntranceV2:
        LiveStreamBody._areaFromJson(json['area_entrance_v2'] as List),
    areaEntrance: json['area_entrance'] as List,
    banner: LiveStreamBody._adFromJson(json['banner'] as List),
    activityCardV2:
        LiveStreamBody._activityFromJson(json['activity_card_v2'] as List),
    isSkyHorseGray: json['is_sky_horse_gray'] as int,
  );
}

LiveStreamAreaEntrance _$LiveStreamAreaEntranceFromJson(
    Map<String, dynamic> json) {
  return LiveStreamAreaEntrance(
    id: json['id'] as int,
    link: json['link'] as String,
    pic: json['pic'] as String,
    title: json['title'] as String,
    areaV2Id: json['area_v2_id'] as int,
    areaV2ParentId: json['area_v2_parent_id'] as int,
    tagType: json['tag_type'] as int,
  );
}

Map<String, dynamic> _$LiveStreamAreaEntranceToJson(
        LiveStreamAreaEntrance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'pic': instance.pic,
      'title': instance.title,
      'area_v2_id': instance.areaV2Id,
      'area_v2_parent_id': instance.areaV2ParentId,
      'tag_type': instance.tagType,
    };

LiveStreamActivity _$LiveStreamActivityFromJson(Map<String, dynamic> json) {
  return LiveStreamActivity(
    aid: json['aid'] as int,
    type: json['type'] as int,
    title: json['title'] as String,
    logoUrl: json['logo_url'] as String,
    startAt: json['start_at'] as int,
    endAt: json['end_at'] as int,
    timeText: json['time_text'] as String,
    buttonUrl: json['button_url'] as String,
    buttonText: json['button_text'] as String,
    activityUrl: json['activity_url'] as String,
    status: json['status'] as int,
    onLive: json['on_live'] as int,
  );
}

Map<String, dynamic> _$LiveStreamActivityToJson(LiveStreamActivity instance) =>
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

LiveStreamIdol _$LiveStreamIdolFromJson(Map<String, dynamic> json) {
  return LiveStreamIdol(
    totalCount: json['total_count'] as int,
    timeDesc: json['time_desc'] as String,
    unameDesc: json['uname_desc'] as String,
    tagsDesc: json['tags_desc'] as String,
    cardType: json['card_type'] as int,
    relationPage: json['relation_page'] as int,
    showType: json['show_type'] as int,
  );
}

Map<String, dynamic> _$LiveStreamIdolToJson(LiveStreamIdol instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'time_desc': instance.timeDesc,
      'uname_desc': instance.unameDesc,
      'tags_desc': instance.tagsDesc,
      'card_type': instance.cardType,
      'relation_page': instance.relationPage,
      'show_type': instance.showType,
    };

LiveStreamRoom _$LiveStreamRoomFromJson(Map<String, dynamic> json) {
  return LiveStreamRoom(
    acceptQuality:
        (json['accept_quality'] as List)?.map((e) => e as int)?.toList(),
    areaV2Id: json['area_v2_id'] as int,
    areaV2ParentId: json['area_v2_parent_id'] as int,
    areaV2Name: json['area_v2_name'] as String,
    areaV2ParentName: json['area_v2_parent_name'] as String,
    broadcastType: json['broadcast_type'] as int,
    cover: json['cover'] as String,
    currentQuality: json['current_quality'] as int,
    face: json['face'] as String,
    link: json['link'] as String,
    online: json['online'] as int,
    pendentRu: json['pendent_ru'] as String,
    pendentRuColor: json['pendent_ru_color'] as String,
    pendentRuPic: json['pendent_ru_pic'] as String,
    pkId: json['pk_id'] as int,
    playUrl: json['play_url'] as String,
    recType: json['rec_type'] as int,
    roomid: json['roomid'] as int,
    title: json['title'] as String,
    uname: json['uname'] as String,
    playUrlH265: json['play_url_h265'] as String,
    sessionId: json['session_id'] as String,
    groupId: json['group_id'] as int,
    showCallback: json['show_callback'] as String,
    clickCallback: json['click_callback'] as String,
    currentQn: json['current_qn'] as int,
    qualityDescription: (json['quality_description'] as List)
        ?.map((e) => e == null
            ? null
            : QualityDescription.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    playUrlCard: json['play_url_card'] as String,
    uid: json['uid'] as int,
    flag: json['flag'] as int,
    pendentList: (json['pendent_list'] as List)
        ?.map((e) => e == null
            ? null
            : LiveStreamPendent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LiveStreamRoomToJson(LiveStreamRoom instance) =>
    <String, dynamic>{
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

LiveStreamRank _$LiveStreamRankFromJson(Map<String, dynamic> json) {
  return LiveStreamRank(
    rank: json['rank'] as int,
    uid: json['uid'] as int,
    roomid: json['roomid'] as int,
    uname: json['uname'] as String,
    face: json['face'] as String,
    liveStatus: json['live_status'] as int,
    areaV2ParentId: json['area_v2_parent_id'] as int,
    areaV2ParentName: json['area_v2_parent_name'] as String,
    areaV2Id: json['area_v2_id'] as int,
    areaV2Name: json['area_v2_name'] as String,
  );
}

Map<String, dynamic> _$LiveStreamRankToJson(LiveStreamRank instance) =>
    <String, dynamic>{
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
    qn: json['qn'] as int,
    desc: json['desc'] as String,
  );
}

Map<String, dynamic> _$QualityDescriptionToJson(QualityDescription instance) =>
    <String, dynamic>{
      'qn': instance.qn,
      'desc': instance.desc,
    };

ExtraInfo _$ExtraInfoFromJson(Map<String, dynamic> json) {
  return ExtraInfo(
    totalCount: json['total_count'] as int,
    timeDesc: json['time_desc'] as String,
    unameDesc: json['uname_desc'] as String,
    tagsDesc: json['tags_desc'] as String,
    cardType: json['card_type'] as int,
    relationPage: json['relation_page'] as int,
    showType: json['show_type'] as int,
    offline: json['offline'] as List,
    subtitle: json['sub_title'] as String,
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
    id: json['id'] as int,
    link: json['link'] as String,
    pic: json['pic'] as String,
    title: json['title'] as String,
    type: json['type'] as int,
    sort: json['sort'] as int,
    count: json['count'] as int,
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

LiveStreamAd _$LiveStreamAdFromJson(Map<String, dynamic> json) {
  return LiveStreamAd(
    id: json['id'] as int,
    link: json['link'] as String,
    pic: json['pic'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    sourceContent: json['source_content'] == null
        ? null
        : SourceContent.fromJson(
            json['source_content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LiveStreamAdToJson(LiveStreamAd instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'pic': instance.pic,
      'title': instance.title,
      'content': instance.content,
      'source_content': instance.sourceContent,
    };

SourceContent _$SourceContentFromJson(Map<String, dynamic> json) {
  return SourceContent(
    requestId: json['request_id'] as String,
    sourceId: json['source_id'] as int,
    resourceId: json['resource_id'] as int,
    isAdLoc: json['is_ad_loc'] as bool,
    serverType: json['server_type'] as int,
    clientIp: json['client_ip'] as String,
    cardIndex: json['card_index'] as int,
    index: json['index'] as int,
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

LiveStreamPendent _$LiveStreamPendentFromJson(Map<String, dynamic> json) {
  return LiveStreamPendent(
    content: json['content'] as String,
    position: json['position'] as int,
    color: json['color'] as String,
    pic: json['pic'] as String,
  );
}

Map<String, dynamic> _$LiveStreamPendentToJson(LiveStreamPendent instance) =>
    <String, dynamic>{
      'content': instance.content,
      'position': instance.position,
      'color': instance.color,
      'pic': instance.pic,
    };
