import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_watch_progress.g.dart';

abstract class WatchProgress
    implements Built<WatchProgress, WatchProgressBuilder> {
  // Fields
  @nullable
  int get bar;
  @nullable
  @BuiltValueField(wireName: "last_ep_desc")
  String get lastEpDesc;
  @nullable
  @BuiltValueField(wireName: "last_ep_id")
  int get lastEpId;
  @nullable
  @BuiltValueField(wireName: "last_ep_index")
  String get lastEpIndex;
  @nullable
  @BuiltValueField(wireName: "last_time")
  int get lastTime;

  WatchProgress._();

  factory WatchProgress([void Function(WatchProgressBuilder) updates]) =
      _$WatchProgress;

  String toJson() {
    return json
        .encode(serializers.serializeWith(WatchProgress.serializer, this));
  }

  static WatchProgress fromJson(String jsonString) {
    return serializers.deserializeWith(
        WatchProgress.serializer, json.decode(jsonString));
  }

  static Serializer<WatchProgress> get serializer => _$watchProgressSerializer;
}
