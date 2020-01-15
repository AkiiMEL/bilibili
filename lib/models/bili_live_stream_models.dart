import 'package:json_annotation/json_annotation.dart';
part 'bili_live_stream_models.g.dart';

@JsonSerializable(createToJson: false)
class LiveStreamHttpBody extends Object {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'ttl')
  int ttl;

  @JsonKey(name: 'data')
  LiveStreamBody data;

  LiveStreamHttpBody({
    this.code,
    this.message,
    this.ttl,
    this.data,
  });

  factory LiveStreamHttpBody.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamHttpBodyFromJson(srcJson);

  // Map<String, dynamic> toJson() => _$LiveStreamHttpBodyToJson(this);
}

@JsonSerializable(createToJson: false)
class LiveStreamBody extends Object {
  @JsonKey(name: 'hour_rank', fromJson: _rankFromJson)
  List<LiveStreamSection<LiveStreamRank>> hourRank;

  @JsonKey(name: 'sea_patrol')
  List<dynamic> seaPatrol;

  @JsonKey(name: 'my_tag')
  List<dynamic> myTag;

  @JsonKey(name: 'my_idol', fromJson: _idolFromJson)
  List<LiveStreamSection<LiveStreamIdol>> myIdol;

  @JsonKey(name: 'room_list', fromJson: _roomFromJson)
  List<LiveStreamSection<LiveStreamRoom>> roomList;

  @JsonKey(name: 'activity_card')
  List<dynamic> activityCard;

  int interval;

  @JsonKey(name: 'area_entrance_v2', fromJson: _areaFromJson)
  List<LiveStreamSection<LiveStreamAreaEntrance>> areaEntranceV2;

  @JsonKey(name: 'area_entrance')
  List<dynamic> areaEntrance;

  @JsonKey(name: 'banner', fromJson: _adFromJson)
  List<LiveStreamSection<LiveStreamAd>> banner;

  @JsonKey(name: 'activity_card_v2', fromJson: _activityFromJson)
  List<LiveStreamSection<LiveStreamActivity>> activityCardV2;

  @JsonKey(name: 'is_sky_horse_gray')
  int isSkyHorseGray;

  LiveStreamBody({
    this.hourRank,
    this.seaPatrol,
    this.myTag,
    this.myIdol,
    this.roomList,
    this.activityCard,
    this.interval,
    this.areaEntranceV2,
    this.areaEntrance,
    this.banner,
    this.activityCardV2,
    this.isSkyHorseGray,
  });

  factory LiveStreamBody.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamBodyFromJson(srcJson);

  // Map<String, dynamic> toJson() => _$LiveStreamBodyToJson(this);

  static List<LiveStreamSection<LiveStreamAd>> _adFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveStreamSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveStreamAd.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveStreamSection<LiveStreamRank>> _rankFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveStreamSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                ExtraInfo.fromJson(e["extra_info"] as Map<String, dynamic>),
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveStreamRank.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveStreamSection<LiveStreamRoom>> _roomFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveStreamSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveStreamRoom.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveStreamSection<LiveStreamAreaEntrance>> _areaFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveStreamSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveStreamAreaEntrance.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveStreamSection<LiveStreamIdol>> _idolFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveStreamSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveStreamIdol.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveStreamSection<LiveStreamActivity>> _activityFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveStreamSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveStreamActivity.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }
}

// @JsonSerializable()
class LiveStreamSection<E> {
  // @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  // @JsonKey(name: "extra_info")
  ExtraInfo extraInfo;

  // @JsonKey(name: "list")
  // @_Converter()
  List<E> list;

  LiveStreamSection(this.moduleInfo, this.extraInfo, this.list);

  // factory LiveStreamSection.fromJson(Map<String, dynamic> json) =>
  //     _$LiveStreamSectionFromJson<E>(json);

  // Map<String, dynamic> toJson() => _$LiveStreamSectionToJson(this);
}

@JsonSerializable()
class LiveStreamAreaEntrance {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'area_v2_id')
  int areaV2Id;

  @JsonKey(name: 'area_v2_parent_id')
  int areaV2ParentId;

  @JsonKey(name: 'tag_type')
  int tagType;

  LiveStreamAreaEntrance({
    this.id,
    this.link,
    this.pic,
    this.title,
    this.areaV2Id,
    this.areaV2ParentId,
    this.tagType,
  });

  factory LiveStreamAreaEntrance.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamAreaEntranceFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamAreaEntranceToJson(this);
}

@JsonSerializable()
class LiveStreamActivity {
  @JsonKey(name: 'aid')
  int aid;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'logo_url')
  String logoUrl;

  @JsonKey(name: 'start_at')
  int startAt;

  @JsonKey(name: 'end_at')
  int endAt;

  @JsonKey(name: 'time_text')
  String timeText;

  @JsonKey(name: 'button_url')
  String buttonUrl;

  @JsonKey(name: 'button_text')
  String buttonText;

  @JsonKey(name: 'activity_url')
  String activityUrl;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'on_live')
  int onLive;

  LiveStreamActivity({
    this.aid,
    this.type,
    this.title,
    this.logoUrl,
    this.startAt,
    this.endAt,
    this.timeText,
    this.buttonUrl,
    this.buttonText,
    this.activityUrl,
    this.status,
    this.onLive,
  });

  factory LiveStreamActivity.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamActivityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamActivityToJson(this);
}

@JsonSerializable()
class LiveStreamIdol {
  @JsonKey(name: 'total_count')
  int totalCount;

  @JsonKey(name: 'time_desc')
  String timeDesc;

  @JsonKey(name: 'uname_desc')
  String unameDesc;

  @JsonKey(name: 'tags_desc')
  String tagsDesc;

  @JsonKey(name: 'card_type')
  int cardType;

  @JsonKey(name: 'relation_page')
  int relationPage;

  @JsonKey(name: 'show_type')
  int showType;

  LiveStreamIdol({
    this.totalCount,
    this.timeDesc,
    this.unameDesc,
    this.tagsDesc,
    this.cardType,
    this.relationPage,
    this.showType,
  });

  factory LiveStreamIdol.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamIdolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamIdolToJson(this);
}

@JsonSerializable()
class LiveStreamRoom {
  @JsonKey(name: 'accept_quality')
  List<int> acceptQuality;

  @JsonKey(name: 'area_v2_id')
  int areaV2Id;

  @JsonKey(name: 'area_v2_parent_id')
  int areaV2ParentId;

  @JsonKey(name: 'area_v2_name')
  String areaV2Name;

  @JsonKey(name: 'area_v2_parent_name')
  String areaV2ParentName;

  @JsonKey(name: 'broadcast_type')
  int broadcastType;

  @JsonKey(name: 'cover')
  String cover;

  @JsonKey(name: 'current_quality')
  int currentQuality;

  @JsonKey(name: 'face')
  String face;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'online')
  int online;

  @JsonKey(name: 'pendent_ru')
  String pendentRu;

  @JsonKey(name: 'pendent_ru_color')
  String pendentRuColor;

  @JsonKey(name: 'pendent_ru_pic')
  String pendentRuPic;

  @JsonKey(name: 'pk_id')
  int pkId;

  @JsonKey(name: 'play_url')
  String playUrl;

  @JsonKey(name: 'rec_type')
  int recType;

  @JsonKey(name: 'roomid')
  int roomid;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'uname')
  String uname;

  @JsonKey(name: 'play_url_h265')
  String playUrlH265;

  @JsonKey(name: 'session_id')
  String sessionId;

  @JsonKey(name: 'group_id')
  int groupId;

  @JsonKey(name: 'show_callback')
  String showCallback;

  @JsonKey(name: 'click_callback')
  String clickCallback;

  @JsonKey(name: 'current_qn')
  int currentQn;

  @JsonKey(name: 'quality_description')
  List<QualityDescription> qualityDescription;

  @JsonKey(name: 'play_url_card')
  String playUrlCard;

  @JsonKey(name: 'uid')
  int uid;

  @JsonKey(name: 'flag')
  int flag;

  @JsonKey(name: 'pendent_list')
  List<LiveStreamPendent> pendentList;

  LiveStreamRoom({
    this.acceptQuality,
    this.areaV2Id,
    this.areaV2ParentId,
    this.areaV2Name,
    this.areaV2ParentName,
    this.broadcastType,
    this.cover,
    this.currentQuality,
    this.face,
    this.link,
    this.online,
    this.pendentRu,
    this.pendentRuColor,
    this.pendentRuPic,
    this.pkId,
    this.playUrl,
    this.recType,
    this.roomid,
    this.title,
    this.uname,
    this.playUrlH265,
    this.sessionId,
    this.groupId,
    this.showCallback,
    this.clickCallback,
    this.currentQn,
    this.qualityDescription,
    this.playUrlCard,
    this.uid,
    this.flag,
    this.pendentList,
  });

  factory LiveStreamRoom.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamRoomFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamRoomToJson(this);
}

@JsonSerializable()
class LiveStreamRank {
  @JsonKey(name: 'rank')
  int rank;

  @JsonKey(name: 'uid')
  int uid;

  @JsonKey(name: 'roomid')
  int roomid;

  @JsonKey(name: 'uname')
  String uname;

  @JsonKey(name: 'face')
  String face;

  @JsonKey(name: 'live_status')
  int liveStatus;

  @JsonKey(name: 'area_v2_parent_id')
  int areaV2ParentId;

  @JsonKey(name: 'area_v2_parent_name')
  String areaV2ParentName;

  @JsonKey(name: 'area_v2_id')
  int areaV2Id;

  @JsonKey(name: 'area_v2_name')
  String areaV2Name;

  LiveStreamRank({
    this.rank,
    this.uid,
    this.roomid,
    this.uname,
    this.face,
    this.liveStatus,
    this.areaV2ParentId,
    this.areaV2ParentName,
    this.areaV2Id,
    this.areaV2Name,
  });

  factory LiveStreamRank.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamRankFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamRankToJson(this);
}

@JsonSerializable()
class QualityDescription {
  @JsonKey(name: 'qn')
  int qn;

  @JsonKey(name: 'desc')
  String desc;

  QualityDescription({
    this.qn,
    this.desc,
  });

  factory QualityDescription.fromJson(Map<String, dynamic> srcJson) =>
      _$QualityDescriptionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$QualityDescriptionToJson(this);
}

@JsonSerializable()
class ExtraInfo {
  @JsonKey(name: 'total_count')
  int totalCount;

  @JsonKey(name: 'time_desc')
  String timeDesc;

  @JsonKey(name: 'uname_desc')
  String unameDesc;

  @JsonKey(name: 'tags_desc')
  String tagsDesc;

  @JsonKey(name: 'card_type')
  int cardType;

  @JsonKey(name: 'relation_page')
  int relationPage;

  @JsonKey(name: 'show_type')
  int showType;

  @JsonKey(name: 'offline')
  List<dynamic> offline;

  @JsonKey(name: "sub_title")
  String subtitle;

  ExtraInfo({
    this.totalCount,
    this.timeDesc,
    this.unameDesc,
    this.tagsDesc,
    this.cardType,
    this.relationPage,
    this.showType,
    this.offline,
    this.subtitle,
  });

  factory ExtraInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$ExtraInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ExtraInfoToJson(this);
}

@JsonSerializable()
class ModuleInfo {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'sort')
  int sort;

  @JsonKey(name: 'count')
  int count;

  ModuleInfo({
    this.id,
    this.link,
    this.pic,
    this.title,
    this.type,
    this.sort,
    this.count,
  });

  factory ModuleInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$ModuleInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ModuleInfoToJson(this);
}

@JsonSerializable()
class LiveStreamAd {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'source_content')
  SourceContent sourceContent;

  LiveStreamAd({
    this.id,
    this.link,
    this.pic,
    this.title,
    this.content,
    this.sourceContent,
  });

  factory LiveStreamAd.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamAdFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamAdToJson(this);
}

@JsonSerializable()
class SourceContent {
  @JsonKey(name: 'request_id')
  String requestId;

  @JsonKey(name: 'source_id')
  int sourceId;

  @JsonKey(name: 'resource_id')
  int resourceId;

  @JsonKey(name: 'is_ad_loc')
  bool isAdLoc;

  @JsonKey(name: 'server_type')
  int serverType;

  @JsonKey(name: 'client_ip')
  String clientIp;

  @JsonKey(name: 'card_index')
  int cardIndex;

  @JsonKey(name: 'index')
  int index;

  SourceContent({
    this.requestId,
    this.sourceId,
    this.resourceId,
    this.isAdLoc,
    this.serverType,
    this.clientIp,
    this.cardIndex,
    this.index,
  });

  factory SourceContent.fromJson(Map<String, dynamic> srcJson) =>
      _$SourceContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SourceContentToJson(this);
}

@JsonSerializable()
class LiveStreamPendent {
  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'position')
  int position;

  @JsonKey(name: 'color')
  String color;

  @JsonKey(name: 'pic')
  String pic;

  LiveStreamPendent({
    this.content,
    this.position,
    this.color,
    this.pic,
  });

  factory LiveStreamPendent.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamPendentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveStreamPendentToJson(this);
}
