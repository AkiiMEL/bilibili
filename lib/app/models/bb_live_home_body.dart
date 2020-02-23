import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_live_home_activity.dart';
import 'bb_live_home_ad.dart';
import 'bb_live_tag.dart';
import 'bb_live_group.dart';
import 'bb_room.dart';
import 'bb_serializers.dart';

export 'bb_live_home_activity.dart';
export 'bb_live_home_ad.dart';
export 'bb_live_tag.dart';
export 'bb_live_group.dart';
export 'bb_room.dart';

part 'bb_live_home_body.g.dart';

abstract class LiveHomeBody
    implements Built<LiveHomeBody, LiveHomeBodyBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: 'hour_rank')
  BuiltList<LiveGroup<Room>> get hourRank;
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
  BuiltList<LiveGroup<LiveTag>> get areaEntranceV2;
  @nullable
  @BuiltValueField(wireName: 'area_entrance')
  BuiltList<dynamic> get areaEntrance;
  @nullable
  @BuiltValueField(wireName: 'banner')
  BuiltList<LiveGroup<LiveHomeAd>> get banner;
  @nullable
  @BuiltValueField(wireName: 'activity_card_v2')
  BuiltList<LiveGroup<LiveHomeActivity>> get activityCardV2;
  @nullable
  @BuiltValueField(wireName: 'is_sky_horse_gray')
  int get isSkyHorseGray;

  LiveHomeBody._();

  factory LiveHomeBody([void Function(LiveHomeBodyBuilder) updates]) =
      _$LiveHomeBody;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LiveHomeBody.serializer, this));
  }

  static LiveHomeBody fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveHomeBody.serializer, json.decode(jsonString));
  }

  static Serializer<LiveHomeBody> get serializer => _$liveHomeBodySerializer;
}
