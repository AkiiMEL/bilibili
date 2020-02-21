import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_live_pendent.g.dart';

abstract class LivePendent implements Built<LivePendent, LivePendentBuilder> {
  // Fields
  @nullable
  String get content;
  @nullable
  int get position;
  @nullable
  String get color;
  @nullable
  String get pic;

  LivePendent._();

  factory LivePendent([void Function(LivePendentBuilder) updates]) =
      _$LivePendent;

  String toJson() {
    return json.encode(serializers.serializeWith(LivePendent.serializer, this));
  }

  static LivePendent fromJson(String jsonString) {
    return serializers.deserializeWith(
        LivePendent.serializer, json.decode(jsonString));
  }

  static Serializer<LivePendent> get serializer => _$livePendentSerializer;
}
