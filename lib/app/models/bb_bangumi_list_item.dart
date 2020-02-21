import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_bangumi_follow.dart';
import 'bb_bangumi_report.dart';
import 'bb_bangumi_stat.dart';
import 'bb_bangumi_status.dart';
import 'bb_episode.dart';
import 'bb_serializers.dart';
import 'bb_source_content.dart';
import 'bb_watch_progress.dart';

part 'bb_bangumi_list_item.g.dart';

abstract class BangumiListItem implements Built<BangumiListItem, BangumiListItemBuilder> {
  // Fields
  @nullable
  String get cover;
  @nullable
  @BuiltValueField(wireName: "is_preview")
  int get isPreview;
  @nullable
  @BuiltValueField(wireName: "item_id")
  int get itemId;
  @nullable
  String get link;
  @nullable
  Report get report;
  @nullable
  @BuiltValueField(wireName: "source_content")
  SourceContent get sourceContent;
  @nullable
  String get title;
  @nullable
  int get wid;
  @nullable
  String get badge;
  @nullable
  @BuiltValueField(wireName: "badge_type")
  int get badgeType;
  @nullable
  String get desc;
  @nullable
  @BuiltValueField(wireName: "desc_type")
  int get descType;
  @nullable
  BangumiFollow get follow;
  @nullable
  WatchProgress get progress;
  @nullable
  @BuiltValueField(wireName: "season_id")
  int get seasonId;
  @nullable
  @BuiltValueField(wireName: "season_type")
  int get seasonType;
  @nullable
  String get desc2;
  @nullable
  @BuiltValueField(wireName: "can_watch")
  int get canWatch;
  @nullable
  @BuiltValueField(wireName: "is_auto")
  int get isAuto;
  @nullable
  int get oid;
  @nullable
  BangumiStat get stat;
  @nullable
  BangumiStatus get status;
  @nullable
  String get type;
  @nullable
  String get date;
  @nullable
  @BuiltValueField(wireName: "date_ts")
  int get dateTs;
  @nullable
  @BuiltValueField(wireName: "day_of_week")
  int get dayOfWeek;
  @nullable
  BuiltList<Episode> get episodes;
  @nullable
  @BuiltValueField(wireName: "is_today")
  int get isToday;
  @nullable
  BuiltList<BangumiListItem> get cards;
  @nullable
  String get pts;

  BangumiListItem._();

  factory BangumiListItem([void Function(BangumiListItemBuilder) updates]) = _$BangumiListItem;

  String toJson() {
    return json.encode(serializers.serializeWith(BangumiListItem.serializer, this));
  }

  static BangumiListItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        BangumiListItem.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiListItem> get serializer => _$bangumiListItemSerializer;
}
