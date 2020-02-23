import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_live_home_activity.g.dart';

abstract class LiveHomeActivity
    implements Built<LiveHomeActivity, LiveHomeActivityBuilder> {
  // Fields
  @nullable
  int get aid;
  @nullable
  int get type;
  @nullable
  String get title;
  @nullable
  @BuiltValueField(wireName: 'logo_url')
  String get logoUrl;
  @nullable
  @BuiltValueField(wireName: 'start_at')
  int get startAt;
  @nullable
  @BuiltValueField(wireName: 'end_at')
  int get endAt;
  @nullable
  @BuiltValueField(wireName: 'time_text')
  String get timeText;
  @nullable
  @BuiltValueField(wireName: 'button_url')
  String get buttonUrl;
  @nullable
  @BuiltValueField(wireName: 'button_text')
  String get buttonText;
  @nullable
  @BuiltValueField(wireName: 'activity_url')
  String get activityUrl;
  @nullable
  int get status;
  @nullable
  @BuiltValueField(wireName: 'on_live')
  int get onLive;

  LiveHomeActivity._();

  factory LiveHomeActivity([void Function(LiveHomeActivityBuilder) updates]) =
      _$LiveHomeActivity;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LiveHomeActivity.serializer, this));
  }

  static LiveHomeActivity fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveHomeActivity.serializer, json.decode(jsonString));
  }

  static Serializer<LiveHomeActivity> get serializer =>
      _$liveHomeActivitySerializer;
}