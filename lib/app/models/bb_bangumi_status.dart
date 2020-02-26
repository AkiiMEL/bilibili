import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_bangumi_status.g.dart';

abstract class BangumiStatus implements Built<BangumiStatus, BangumiStatusBuilder> {
  // Fields
@nullable
  int get coins;
  @nullable
  int get favorites;
  @nullable
  int get danmaku;
  @nullable
  String get followers;
  @nullable
  String get play;
  @nullable
  int get reply;
  @nullable
  int get share;
  @nullable
  int get views;
  @nullable
  int get follow;
  @nullable
  @BuiltValueField(wireName: "follow_view")
  String get followView;
  @nullable
  int get view;

  BangumiStatus._();

  factory BangumiStatus([void Function(BangumiStatusBuilder) updates]) = _$BangumiStatus;

  String toJson() {
    return json.encode(serializers.serializeWith(BangumiStatus.serializer, this));
  }

  static BangumiStatus fromJson(String jsonString) {
    return serializers.deserializeWith(BangumiStatus.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiStatus> get serializer => _$bangumiStatusSerializer;
}