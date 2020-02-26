import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_threshold.g.dart';

abstract class Threshold implements Built<Threshold, ThresholdBuilder> {
  // Fields
  @nullable
  int get bp;
  @nullable
  int get days;
  @nullable
  @BuiltValueField(wireName: "days_text")
  String get daysText;

  Threshold._();

  factory Threshold([void Function(ThresholdBuilder) updates]) = _$Threshold;

  String toJson() {
    return json.encode(serializers.serializeWith(Threshold.serializer, this));
  }

  static Threshold fromJson(String jsonString) {
    return serializers.deserializeWith(
        Threshold.serializer, json.decode(jsonString));
  }

  static Serializer<Threshold> get serializer => _$thresholdSerializer;
}
