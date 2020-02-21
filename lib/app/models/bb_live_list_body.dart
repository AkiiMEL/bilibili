import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_live_activity.dart';
import 'bb_live_ad.dart';
import 'bb_live_area_entrance.dart';
import 'bb_live_group.dart';
import 'bb_live_rank.dart';
import 'bb_room.dart';
import 'bb_serializers.dart';

export 'bb_live_activity.dart';
export 'bb_live_ad.dart';
export 'bb_live_area_entrance.dart';
export 'bb_live_group.dart';
export 'bb_live_rank.dart';
export 'bb_room.dart';

part 'bb_live_list_body.g.dart';

abstract class LiveListBody
    implements Built<LiveListBody, LiveListBodyBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: 'hour_rank')
  BuiltList<LiveGroup<LiveRank>> get hourRank;
  @nullable
  @BuiltValueField(wireName: 'sea_patrol')
  BuiltList<dynamic> get seaPatrol;
  @nullable
  @BuiltValueField(wireName: 'my_tag')
  BuiltList<dynamic> get myTag;
  @nullable
  @BuiltValueField(wireName: 'my_idol')
  BuiltList<LiveGroup<Room>> get myIdol;
  @nullable
  @BuiltValueField(wireName: 'room_list')
  BuiltList<LiveGroup<Room>> get roomList;
  @nullable
  @BuiltValueField(wireName: 'activity_card')
  BuiltList<dynamic> get activityCard;
  @nullable
  int get interval;
  @nullable
  @BuiltValueField(wireName: 'area_entrance_v2')
  BuiltList<LiveGroup<LiveAreaEntrance>> get areaEntranceV2;
  @nullable
  @BuiltValueField(wireName: 'area_entrance')
  BuiltList<dynamic> get areaEntrance;
  @nullable
  @BuiltValueField(wireName: 'banner')
  BuiltList<LiveGroup<LiveAd>> get banner;
  @nullable
  @BuiltValueField(wireName: 'activity_card_v2')
  BuiltList<LiveGroup<LiveActivity>> get activityCardV2;
  @nullable
  @BuiltValueField(wireName: 'is_sky_horse_gray')
  int get isSkyHorseGray;

  LiveListBody._();

  factory LiveListBody([void Function(LiveListBodyBuilder) updates]) =
      _$LiveListBody;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LiveListBody.serializer, this));
  }

  static LiveListBody fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveListBody.serializer, json.decode(jsonString));
  }

  static Serializer<LiveListBody> get serializer => _$liveListBodySerializer;
}
