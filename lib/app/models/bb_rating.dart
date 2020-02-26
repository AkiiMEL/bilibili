import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_rating.g.dart';

abstract class Rating implements Built<Rating, RatingBuilder> {
  // Fields
  @nullable
  int get count;
  @nullable
  double get score;

  Rating._();

  factory Rating([void Function(RatingBuilder) updates]) = _$Rating;

  String toJson() {
    return json.encode(serializers.serializeWith(Rating.serializer, this));
  }

  static Rating fromJson(String jsonString) {
    return serializers.deserializeWith(
        Rating.serializer, json.decode(jsonString));
  }

  static Serializer<Rating> get serializer => _$ratingSerializer;
}
