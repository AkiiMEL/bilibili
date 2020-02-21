import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_bangumi_stat.g.dart';

abstract class BangumiStat implements Built<BangumiStat, BangumiStatBuilder> {
  // Fields
  @nullable
  int get danmaku;
  @nullable
  int get follow;
  @nullable
  @BuiltValueField(wireName: "follow_view")
  String get followView;
  @nullable
  int get view;

  BangumiStat._();

  factory BangumiStat([void Function(BangumiStatBuilder) updates]) =
      _$BangumiStat;

  String toJson() {
    return json.encode(serializers.serializeWith(BangumiStat.serializer, this));
  }

  static BangumiStat fromJson(String jsonString) {
    return serializers.deserializeWith(
        BangumiStat.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiStat> get serializer => _$bangumiStatSerializer;
}
