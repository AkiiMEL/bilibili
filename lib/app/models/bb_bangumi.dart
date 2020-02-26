import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_activity.dart';
import 'bb_actor.dart';
import 'bb_area.dart';
import 'bb_bangumi_status.dart';
import 'bb_bangumi_user_status.dart';
import 'bb_copyright.dart';
import 'bb_n_episode.dart';
import 'bb_new_ep.dart';
import 'bb_paster.dart';
import 'bb_payment.dart';
import 'bb_publish.dart';
import 'bb_rating.dart';
import 'bb_season.dart';
import 'bb_section.dart';
import 'bb_serial.dart';
import 'bb_serializers.dart';
import 'bb_tag.dart';

part 'bb_bangumi.g.dart';

abstract class Bangumi implements Built<Bangumi, BangumiBuilder> {
  // Fields
  @nullable
  Activity get activity;
  @nullable
  Actor get actor;
  @nullable
  String get alias;
  @nullable
  BuiltList<Area> get areas;
  @nullable
  String get badge;
  @BuiltValueField(wireName: "badge_type")
  @nullable
  int get badgeType;
  @nullable
  BuiltList<dynamic> get celebrity;
  @nullable
  String get cover;
  @nullable
  String get detail;
  @nullable
  @BuiltValueField(wireName: "dynamic_subtitle")
  String get dynamicSubtitle;
  @nullable
  BuiltList<Episode> get episodes;
  @nullable
  String get evaluate;
  @nullable
  String get link;
  @nullable
  @BuiltValueField(wireName: "media_id")
  int get mediaId;
  @nullable
  int get mode;
  @BuiltValueField(wireName: "new_ep")
  @nullable
  NewEp get newEp;
  @nullable
  @BuiltValueField(wireName: "origin_name")
  String get originName;
  @nullable
  Paster get paster;
  @nullable
  Payment get payment;
  @nullable
  BuiltList<Episode> get playlist;
  @nullable
  Publish get publish;
  @nullable
  Rating get rating;
  @nullable
  String get record;
  @nullable
  @BuiltValueField(wireName: "relate_section")
  BuiltList<dynamic> get relateSection;
  @nullable
  Copyright get rights;
  @nullable
  @BuiltValueField(wireName: "season_id")
  int get seasonId;
  @nullable
  @BuiltValueField(wireName: "seaon_title")
  String get seasonTitle;
  @nullable
  BuiltList<Season> get seasons;
  @nullable
  BuiltList<Section> get section;
  @nullable
  Serial get series;
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
  @BuiltValueField(wireName: "square_cover")
  String get squareCover;
  @nullable
  Actor get staff;
  @nullable
  BangumiStatus get stat;
  @nullable
  int get status;
  @nullable
  BuiltList<Tag> get styles;
  @nullable
  String get subtitle;
  @nullable
  String get title;
  @nullable
  int get total;
  @nullable
  int get type;
  @nullable
  @BuiltValueField(wireName: "type_name")
  String get typeName;
  @nullable
  @BuiltValueField(wireName: "user_status")
  BangumiUserStatus get userStatus;

  Bangumi._();

  factory Bangumi([void Function(BangumiBuilder) updates]) = _$Bangumi;

  String toJson() {
    return json.encode(serializers.serializeWith(Bangumi.serializer, this));
  }

  static Bangumi fromJson(String jsonString) {
    return serializers.deserializeWith(
        Bangumi.serializer, json.decode(jsonString));
  }

  static Serializer<Bangumi> get serializer => _$bangumiSerializer;
}
