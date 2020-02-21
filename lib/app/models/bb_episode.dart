import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_episode.g.dart';

abstract class Episode implements Built<Episode, EpisodeBuilder> {
  // Fields
  @nullable
  String get cover;
  @nullable
  int get delay;
  @nullable
  @BuiltValueField(wireName: "delay_id")
  int get delayId;
  @nullable
  @BuiltValueField(wireName: "delay_index")
  String get delayIndex;
  @nullable
  @BuiltValueField(wireName: "delay_reason")
  String get delayReason;
  @nullable
  @BuiltValueField(wireName: "episode_id")
  int get episodeId;
  @nullable
  String get link;
  @nullable
  @BuiltValueField(wireName: "pub_index")
  String get pubIndex;
  @nullable
  @BuiltValueField(wireName: "pub_time")
  String get pubTime;
  @nullable
  @BuiltValueField(wireName: "pub_ts")
  int get pubTs;
  @nullable
  int get published;
  @nullable
  @BuiltValueField(wireName: "season_id")
  int get seasonId;
  @nullable
  @BuiltValueField(wireName: "season_type")
  int get seasonType;
  @nullable
  @BuiltValueField(wireName: "square_cover")
  String get squareCover;
  @nullable
  String get title;

  Episode._();

  factory Episode([void Function(EpisodeBuilder) updates]) = _$Episode;

  String toJson() {
    return json.encode(serializers.serializeWith(Episode.serializer, this));
  }

  static Episode fromJson(String jsonString) {
    return serializers.deserializeWith(
        Episode.serializer, json.decode(jsonString));
  }

  static Serializer<Episode> get serializer => _$episodeSerializer;
}
