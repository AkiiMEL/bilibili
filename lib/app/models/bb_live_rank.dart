import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_live_rank.g.dart';

abstract class LiveRank implements Built<LiveRank, LiveRankBuilder> {
  // Fields
  @nullable
  int get rank;
  @nullable
  int get uid;
  @nullable
  int get roomid;
  @nullable
  String get uname;
  @nullable
  String get face;
  @nullable
  @BuiltValueField(wireName: 'live_status')
  int get liveStatus;
  @nullable
  @BuiltValueField(wireName: 'area_v2_parent_id')
  int get areaV2ParentId;
  @nullable
  @BuiltValueField(wireName: 'area_v2_parent_wireName')
  String get areaV2ParentName;
  @nullable
  @BuiltValueField(wireName: 'area_v2_id')
  int get areaV2Id;

  @nullable
  @BuiltValueField(wireName: 'area_v2_wireName')
  String get areaV2Name;

  LiveRank._();

  factory LiveRank([void Function(LiveRankBuilder) updates]) = _$LiveRank;

  String toJson() {
    return json.encode(serializers.serializeWith(LiveRank.serializer, this));
  }

  static LiveRank fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveRank.serializer, json.decode(jsonString));
  }

  static Serializer<LiveRank> get serializer => _$liveRankSerializer;
}
