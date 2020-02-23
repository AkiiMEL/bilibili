import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_live_pendent.dart';
import 'bb_quality_description.dart';
import 'bb_serializers.dart';

export 'bb_live_pendent.dart';
export 'bb_quality_description.dart';

part 'bb_room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  // Fields
  @nullable
  int get rank;
  @nullable
  @BuiltValueField(wireName: 'live_status')
  int get liveStatus;
  @nullable
  @BuiltValueField(wireName: 'accept_quality')
  BuiltList<int> get acceptQuality;
  @nullable
  @BuiltValueField(wireName: "official_verify")
  int get officialVerify;
  @nullable
  @BuiltValueField(wireName: 'area_v2_id')
  int get areaV2Id;
  @nullable
  @BuiltValueField(wireName: 'area_v2_parent_id')
  int get areaV2ParentId;
  @nullable
  @BuiltValueField(wireName: 'area_v2_name')
  String get areaV2Name;
  @nullable
  @BuiltValueField(wireName: 'area_v2_parent_name')
  String get areaV2ParentName;
  @nullable
  @BuiltValueField(wireName: 'broadcast_type')
  int get broadcastType;
  @nullable
  String get cover;
  @nullable
  @BuiltValueField(wireName: 'current_quality')
  int get currentQuality;
  @nullable
  String get face;
  @nullable
  String get link;
  @nullable
  int get online;
  @nullable
  @BuiltValueField(wireName: 'pendent_ru')
  String get pendentRu;
  @nullable
  @BuiltValueField(wireName: 'pendent_ru_color')
  String get pendentRuColor;
  @nullable
  @BuiltValueField(wireName: 'pendent_ru_pic')
  String get pendentRuPic;
  @nullable
  @BuiltValueField(wireName: 'pk_id')
  int get pkId;
  @nullable
  @BuiltValueField(wireName: 'play_url')
  String get playUrl;
  @nullable
  @BuiltValueField(wireName: 'rec_type')
  int get recType;
  @nullable
  int get roomid;
  @nullable
  String get title;
  @nullable
  String get uname;
  @nullable
  @BuiltValueField(wireName: 'play_url_h265')
  String get playUrlH265;
  @nullable
  @BuiltValueField(wireName: 'session_id')
  String get sessionId;
  @nullable
  @BuiltValueField(wireName: 'group_id')
  int get groupId;
  @nullable
  @BuiltValueField(wireName: 'show_callback')
  String get showCallback;
  @nullable
  @BuiltValueField(wireName: 'click_callback')
  String get clickCallback;
  @nullable
  @BuiltValueField(wireName: 'current_qn')
  int get currentQn;
  @nullable
  @BuiltValueField(wireName: 'quality_description')
  BuiltList<QualityDescription> get qualityDescription;
  @nullable
  @BuiltValueField(wireName: 'play_url_card')
  String get playUrlCard;
  @nullable
  int get uid;
  @nullable
  int get flag;
  @nullable
  @BuiltValueField(wireName: 'pendent_list')
  BuiltList<LivePendent> get pendentList;

  Room._();

  factory Room([void Function(RoomBuilder) updates]) = _$Room;

  String toJson() {
    return json.encode(serializers.serializeWith(Room.serializer, this));
  }

  static Room fromJson(String jsonString) {
    return serializers.deserializeWith(
        Room.serializer, json.decode(jsonString));
  }

  static Serializer<Room> get serializer => _$roomSerializer;
}
