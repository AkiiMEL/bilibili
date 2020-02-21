import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_live_area_entrance.g.dart';

abstract class LiveAreaEntrance implements Built<LiveAreaEntrance, LiveAreaEntranceBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get link;
  @nullable
  String get pic;
  @nullable
  String get title;
  @nullable
  @BuiltValueField(wireName: 'area_v2_id')
  int get areaV2Id;
  @nullable
  @BuiltValueField(wireName: 'area_v2_parent_id')
  int get areaV2ParentId;
  @nullable
  @BuiltValueField(wireName: 'tag_type')
  int get tagType;

  LiveAreaEntrance._();

  factory LiveAreaEntrance([void Function(LiveAreaEntranceBuilder) updates]) = _$LiveAreaEntrance;

  String toJson() {
    return json.encode(serializers.serializeWith(LiveAreaEntrance.serializer, this));
  }

  static LiveAreaEntrance fromJson(String jsonString) {
    return serializers.deserializeWith(LiveAreaEntrance.serializer, json.decode(jsonString));
  }

  static Serializer<LiveAreaEntrance> get serializer => _$liveAreaEntranceSerializer;
}