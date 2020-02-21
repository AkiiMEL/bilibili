import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_reason.dart';
import 'bb_serializers.dart';

export 'bb_reason.dart';

part 'bb_three_point.g.dart';

abstract class ThreePoint implements Built<ThreePoint, ThreePointBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "dislike_reasons")
  BuiltList<Reason> get dislikeReasons;
  @nullable
  @BuiltValueField(wireName: "feedbacks")
  BuiltList<Reason> get feedbacks;
  @nullable
  @BuiltValueField(wireName: "watch_later")
  int get watchLater;

  ThreePoint._();

  factory ThreePoint([void Function(ThreePointBuilder) updates]) = _$ThreePoint;

  String toJson() {
    return json.encode(serializers.serializeWith(ThreePoint.serializer, this));
  }

  static ThreePoint fromJson(String jsonString) {
    return serializers.deserializeWith(
        ThreePoint.serializer, json.decode(jsonString));
  }

  static Serializer<ThreePoint> get serializer => _$threePointSerializer;
}


abstract class ThreePointV2
    implements Built<ThreePointV2, ThreePointV2Builder> {
  // Fields
  @nullable
  String get title;
  @nullable
  String get type;
  @nullable
  String get subtitle;
  @nullable
  BuiltList<Reason> get reasons;
  @nullable
  int get id;

  ThreePointV2._();

  factory ThreePointV2([void Function(ThreePointV2Builder) updates]) =
      _$ThreePointV2;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ThreePointV2.serializer, this));
  }

  static ThreePointV2 fromJson(String jsonString) {
    return serializers.deserializeWith(
        ThreePointV2.serializer, json.decode(jsonString));
  }

  static Serializer<ThreePointV2> get serializer => _$threePointV2Serializer;
}
