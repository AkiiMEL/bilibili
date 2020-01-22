import 'package:json_annotation/json_annotation.dart';
part 'bili_live_models.g.dart';

@JsonSerializable(createToJson: false)
class LiveStreamBody extends Object {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'ttl')
  int ttl;

  @JsonKey(name: 'data')
  LiveStreamData data;

  LiveStreamBody(
    this.code,
    this.message,
    this.ttl,
    this.data,
  );

  factory LiveStreamBody.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamBodyFromJson(srcJson);

  // Map<String, dynamic> toJson() => _$LiveStreamBodyToJson(this);
}

@JsonSerializable(createToJson: false)
class LiveStreamData extends Object {

  @JsonKey(name: 'hour_rank', fromJson: _rankFromJson)
  List<LiveSection<LiveRank>> hourRank;

  @JsonKey(name: 'sea_patrol')
  List<dynamic> seaPatrol;

  @JsonKey(name: 'my_tag')
  List<dynamic> myTag;

  @JsonKey(name: 'my_idol', fromJson: _idolFromJson)
  List<LiveSection<LiveIdol>> myIdol;

  @JsonKey(name: 'room_list', fromJson: _roomFromJson)
  List<LiveSection<LiveRoom>> roomList;

  @JsonKey(name: 'activity_card')
  List<dynamic> activityCard;

  @JsonKey(name: 'interval')
  int interval;

  @JsonKey(name: 'area_entrance_v2', fromJson: _areaFromJson)
  List<LiveSection<LiveAreaEntrance>> areaEntranceV2;

  @JsonKey(name: 'area_entrance')
  List<dynamic> areaEntrance;

  @JsonKey(name: 'banner', fromJson: _adFromJson)
  List<LiveSection<LiveAd>> banner;

  @JsonKey(name: 'activity_card_v2', fromJson: _activityFromJson)
  List<LiveSection<LiveActivity>> activityCardV2;

  @JsonKey(name: 'is_sky_horse_gray')
  int isSkyHorseGray;

  LiveStreamData(
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
  );

  factory LiveStreamData.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveStreamDataFromJson(srcJson);

  // Map<String, dynamic> toJson() => _$LiveStreamDataToJson(this);

  static List<LiveSection<LiveAd>> _adFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveAd.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveSection<LiveRank>> _rankFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                ExtraInfo.fromJson(e["extra_info"] as Map<String, dynamic>),
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveRank.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveSection<LiveRoom>> _roomFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveRoom.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveSection<LiveAreaEntrance>> _areaFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveAreaEntrance.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

  static List<LiveSection<LiveIdol>> _idolFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveIdol.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }

    static List<LiveSection<LiveActivity>> _activityFromJson(List json) {
    return json
        ?.map((e) => e == null
            ? null
            : LiveSection(
                ModuleInfo.fromJson(e["module_info"] as Map<String, dynamic>),
                null,
                (e["list"] as List)
                    ?.map((f) => f == null
                        ? null
                        : LiveActivity.fromJson(f as Map<String, dynamic>))
                    ?.toList(),
              ))
        ?.toList();
  }
  
}

// @JsonSerializable()
class LiveSection<E> {
  // @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  // @JsonKey(name: "extra_info")
  ExtraInfo extraInfo;

  // @JsonKey(name: "list")
  // @_Converter()
  List<E> list;

  LiveSection(this.moduleInfo, this.extraInfo, this.list);

  // factory LiveSection.fromJson(Map<String, dynamic> json) =>
  //     _$LiveSectionFromJson<E>(json);

  // Map<String, dynamic> toJson() => _$LiveSectionToJson(this);
}

/*
@JsonSerializable()
class LiveAreaEntranceSection extends Object {
  @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  @JsonKey(name: 'extra_info')
  ExtraInfo extraInfo;

  @JsonKey(name: 'list')
  List<LiveAreaEntrance> list;

  LiveAreaEntranceSection(
    this.moduleInfo,
    this.extraInfo,
    this.list,
  );

  factory LiveAreaEntranceSection.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveAreaEntranceSectionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveAreaEntranceSectionToJson(this);
}
*/

@JsonSerializable()
class LiveAreaEntrance {
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

  LiveAreaEntrance(
    this.id,
    this.link,
    this.pic,
    this.title,
    this.areaV2Id,
    this.areaV2ParentId,
    this.tagType,
  );

  factory LiveAreaEntrance.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveAreaEntranceFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveAreaEntranceToJson(this);
}

/*
@JsonSerializable()
class LiveActivitySection extends Object {
  @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  @JsonKey(name: 'list')
  List<LiveActivity> list;

  LiveActivitySection(
    this.moduleInfo,
    this.list,
  );

  factory LiveActivitySection.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveActivitySectionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveActivitySectionToJson(this);
}
*/

@JsonSerializable()
class LiveActivity {
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

  LiveActivity(
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
  );

  factory LiveActivity.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveActivityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveActivityToJson(this);
}

/*
@JsonSerializable()
class LiveIdolSection extends Object {
  @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  @JsonKey(name: 'extra_info')
  ExtraInfo extraInfo;

  @JsonKey(name: 'list')
  List<dynamic> list;

  LiveIdolSection(
    this.moduleInfo,
    this.extraInfo,
    this.list,
  );

  factory LiveIdolSection.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveIdolSectionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveIdolSectionToJson(this);
}
*/

@JsonSerializable()
class LiveIdol {
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

  LiveIdol(
    this.totalCount,
    this.timeDesc,
    this.unameDesc,
    this.tagsDesc,
    this.cardType,
    this.relationPage,
    this.showType,
  );

  factory LiveIdol.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveIdolFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveIdolToJson(this);
}

/*
@JsonSerializable()
class LiveRoomSection extends Object {
  @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  @JsonKey(name: 'list')
  List<ListRoom> list;

  LiveRoomSection(
    this.moduleInfo,
    this.list,
  );

  factory LiveRoomSection.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveRoomSectionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveRoomSectionToJson(this);
}
*/

@JsonSerializable()
class LiveRoom {
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
  List<LivePendent> pendentList;

  LiveRoom(
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
  );

  factory LiveRoom.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveRoomFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveRoomToJson(this);
}

/*
@JsonSerializable()
class LiveRankSection extends Object {
  @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  @JsonKey(name: 'extra_info')
  ExtraInfo extraInfo;

  @JsonKey(name: 'list')
  List<LiveRank> list;

  LiveRankSection(
    this.moduleInfo,
    this.extraInfo,
    this.list,
  );

  factory LiveRankSection.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveRankSectionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveRankSectionToJson(this);
}
*/

@JsonSerializable()
class LiveRank {
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

  LiveRank(
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
  );

  factory LiveRank.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveRankFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveRankToJson(this);
}

@JsonSerializable()
class QualityDescription {
  @JsonKey(name: 'qn')
  int qn;

  @JsonKey(name: 'desc')
  String desc;

  QualityDescription(
    this.qn,
    this.desc,
  );

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

  ExtraInfo(
      this.totalCount,
      this.timeDesc,
      this.unameDesc,
      this.tagsDesc,
      this.cardType,
      this.relationPage,
      this.showType,
      this.offline,
      this.subtitle);

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

  ModuleInfo(
    this.id,
    this.link,
    this.pic,
    this.title,
    this.type,
    this.sort,
    this.count,
  );

  factory ModuleInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$ModuleInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ModuleInfoToJson(this);
}

@JsonSerializable()
class LiveAd {
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

  LiveAd(
    this.id,
    this.link,
    this.pic,
    this.title,
    this.content,
    this.sourceContent,
  );

  factory LiveAd.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveAdFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveAdToJson(this);
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

  SourceContent(
    this.requestId,
    this.sourceId,
    this.resourceId,
    this.isAdLoc,
    this.serverType,
    this.clientIp,
    this.cardIndex,
    this.index,
  );

  factory SourceContent.fromJson(Map<String, dynamic> srcJson) =>
      _$SourceContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SourceContentToJson(this);
}

/*
@JsonSerializable()
class LiveHourRankSection {
  @JsonKey(name: 'extra_info')
  ExtraInfo extraInfo;

  @JsonKey(name: 'list')
  List<List> list;

  @JsonKey(name: 'module_info')
  ModuleInfo moduleInfo;

  LiveHourRankSection(
    this.extraInfo,
    this.list,
    this.moduleInfo,
  );

  factory LiveHourRankSection.fromJson(Map<String, dynamic> srcJson) =>
      _$LiveHourRankSectionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LiveHourRankSectionToJson(this);
}
*/

@JsonSerializable()
class LivePendent {
  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'position')
  int position;

  @JsonKey(name: 'color')
  String color;

  @JsonKey(name: 'pic')
  String pic;

  LivePendent(
    this.content,
    this.position,
    this.color,
    this.pic,
  );

  factory LivePendent.fromJson(Map<String, dynamic> srcJson) =>
      _$LivePendentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LivePendentToJson(this);
}
