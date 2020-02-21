import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_live_activity.g.dart';

abstract class LiveActivity
    implements Built<LiveActivity, LiveActivityBuilder> {
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

  LiveActivity._();

  factory LiveActivity([void Function(LiveActivityBuilder) updates]) =
      _$LiveActivity;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LiveActivity.serializer, this));
  }

  static LiveActivity fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveActivity.serializer, json.decode(jsonString));
  }

  static Serializer<LiveActivity> get serializer => _$liveActivitySerializer;
}
