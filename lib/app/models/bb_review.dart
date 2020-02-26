import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_review.g.dart';

abstract class Review implements Built<Review, ReviewBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "article_url")
  String get articleUrl;
  @nullable
  @BuiltValueField(wireName: "is_open")
  int get isOpen;
  @nullable
  int get score;

  Review._();

  factory Review([void Function(ReviewBuilder) updates]) = _$Review;

  String toJson() {
    return json.encode(serializers.serializeWith(Review.serializer, this));
  }

  static Review fromJson(String jsonString) {
    return serializers.deserializeWith(
        Review.serializer, json.decode(jsonString));
  }

  static Serializer<Review> get serializer => _$reviewSerializer;
}
