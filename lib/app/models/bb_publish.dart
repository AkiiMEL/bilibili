import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_publish.g.dart';

abstract class Publish implements Built<Publish, PublishBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "is_finish")
  int get isFinish;
  @nullable
  @BuiltValueField(wireName: "is_started")
  int get isStarted;
  @nullable
  @BuiltValueField(wireName: "pub_time")
  String get pubTime;
  @nullable
  @BuiltValueField(wireName: "pub_time_show")
  String get pubTimeShow;
  @nullable
  @BuiltValueField(wireName: "release_date_show")
  String get releaseDateShow;
  @nullable
  @BuiltValueField(wireName: "time_length_show")
  String get timeLengthShow;
  @nullable
  @BuiltValueField(wireName: "unknow_pub_date")
  int get unknowPubDate;
  @nullable
  int get weekday;

  Publish._();

  factory Publish([void Function(PublishBuilder) updates]) = _$Publish;

  String toJson() {
    return json.encode(serializers.serializeWith(Publish.serializer, this));
  }

  static Publish fromJson(String jsonString) {
    return serializers.deserializeWith(
        Publish.serializer, json.decode(jsonString));
  }

  static Serializer<Publish> get serializer => _$publishSerializer;
}
