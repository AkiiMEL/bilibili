import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_source_content.dart';

export 'bb_source_content.dart';

part 'bb_live_ad.g.dart';

abstract class LiveAd implements Built<LiveAd, LiveAdBuilder> {
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
  String get content;
  @nullable
  @BuiltValueField(wireName: 'source_content')
  SourceContent get sourceContent;

  LiveAd._();

  factory LiveAd([void Function(LiveAdBuilder) updates]) = _$LiveAd;

  String toJson() {
    return json.encode(serializers.serializeWith(LiveAd.serializer, this));
  }

  static LiveAd fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveAd.serializer, json.decode(jsonString));
  }

  static Serializer<LiveAd> get serializer => _$liveAdSerializer;
}
