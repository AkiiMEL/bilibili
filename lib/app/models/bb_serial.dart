import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_serial.g.dart';

abstract class Serial implements Built<Serial, SerialBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "movie_title")
  String get movieName;
  @nullable
  @BuiltValueField(wireName: "series_id")
  int get id;
  @nullable
  @BuiltValueField(wireName: "series_title")
  String get serialName;

  Serial._();

  factory Serial([void Function(SerialBuilder) updates]) = _$Serial;

  String toJson() {
    return json.encode(serializers.serializeWith(Serial.serializer, this));
  }

  static Serial fromJson(String jsonString) {
    return serializers.deserializeWith(
        Serial.serializer, json.decode(jsonString));
  }

  static Serializer<Serial> get serializer => _$serialSerializer;
}
