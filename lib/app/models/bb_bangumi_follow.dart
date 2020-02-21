import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_button_description.dart';
import 'bb_new_ep.dart';
import 'bb_serializers.dart';

export 'bb_button_description.dart';
export 'bb_new_ep.dart';

part 'bb_bangumi_follow.g.dart';

abstract class BangumiFollow
    implements Built<BangumiFollow, BangumiFollowBuilder> {
  // Fields
  @nullable
  ButtonDescription get desc;
  @nullable
  @BuiltValueField(wireName: "is_finish")
  int get isFinish;
  @nullable
  @BuiltValueField(wireName: "is_started")
  int get isStarted;
  @nullable
  @BuiltValueField(wireName: "new_ep")
  NewEp get newEp;
  @nullable
  @BuiltValueField(wireName: "total_count")
  int get totalCount;

  BangumiFollow._();

  factory BangumiFollow([void Function(BangumiFollowBuilder) updates]) =
      _$BangumiFollow;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BangumiFollow.serializer, this));
  }

  static BangumiFollow fromJson(String jsonString) {
    return serializers.deserializeWith(
        BangumiFollow.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiFollow> get serializer => _$bangumiFollowSerializer;
}
