import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_bangumi_status.dart';
import 'bb_copyright.dart';
import 'bb_dimension.dart';
import 'bb_serializers.dart';

part 'bb_episode.g.dart';

abstract class Episode implements Built<Episode, EpisodeBuilder> {
  // Fields
  @nullable
  int get aid;
  @nullable
  String get badge;
  @BuiltValueField(wireName: "badge_type")
  int get badgeType;
  @nullable
  String get bvid;
  @nullable
  int get cid;
  @nullable
  String get cover;
  @nullable
  Dimension get dimension;
  @nullable
  String get from;
  @nullable
  int get id;
  @nullable
  String get link;
  @nullable
  @BuiltValueField(wireName: "long_title")
  String get longTitle;
  @nullable
  @BuiltValueField(wireName: "movie_title")
  String get movieTitle;
  @nullable
  @BuiltValueField(wireName: "release_date")
  String get releaseDate;
  @nullable
  Copyright get rights;
  @nullable
  @BuiltValueField(wireName: "share_copy")
  String get shareCopy;
  @nullable
  @BuiltValueField(wireName: "share_url")
  String get shareUrl;
  @nullable
  @BuiltValueField(wireName: "short_link")
  String get shortLink;
  @nullable
  BangumiStatus get stat;
  @nullable
  int get status;
  @nullable
  String get subtitle;
  @nullable
  String get title;
  @nullable
  String get vid;

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
