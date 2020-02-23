import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_source_content.dart';

export 'bb_source_content.dart';

part 'bb_live_home_ad.g.dart';

abstract class LiveHomeAd implements Built<LiveHomeAd, LiveHomeAdBuilder> {
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

  LiveHomeAd._();

  factory LiveHomeAd([void Function(LiveHomeAdBuilder) updates]) = _$LiveHomeAd;

  String toJson() {
    return json.encode(serializers.serializeWith(LiveHomeAd.serializer, this));
  }

  static LiveHomeAd fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveHomeAd.serializer, json.decode(jsonString));
  }

  static Serializer<LiveHomeAd> get serializer => _$liveHomeAdSerializer;
}