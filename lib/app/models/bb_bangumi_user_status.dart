import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_review.dart';
import 'bb_serializers.dart';
import 'bb_watch_progress.dart';

part 'bb_bangumi_user_status.g.dart';

abstract class BangumiUserStatus
    implements Built<BangumiUserStatus, BangumiUserStatusBuilder> {
  // Fields
  @nullable
  int get follow;
  @nullable
  @BuiltValueField(wireName: "follow_status")
  int get followStatus;
  @nullable
  @BuiltValueField(wireName: "follow_bubble")
  int get followBubble;
  @nullable
  int get pay;
  @nullable
  WatchProgress get progress;
  @nullable
  Review get review;
  @nullable
  int get sponsor;
  @nullable
  int get vip;
  @nullable
  @BuiltValueField(wireName: "vip_frozen")
  int get vipFrozen;

  BangumiUserStatus._();

  factory BangumiUserStatus([void Function(BangumiUserStatusBuilder) updates]) =
      _$BangumiUserStatus;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BangumiUserStatus.serializer, this));
  }

  static BangumiUserStatus fromJson(String jsonString) {
    return serializers.deserializeWith(
        BangumiUserStatus.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiUserStatus> get serializer =>
      _$bangumiUserStatusSerializer;
}
