import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_config.dart';
import 'bb_media.dart';
import 'bb_serializers.dart';

export 'bb_config.dart';
export 'bb_media.dart';

part 'bb_featured_body.g.dart';

abstract class FeaturedBody
    implements Built<FeaturedBody, FeaturedBodyBuilder> {
  // Fields
  @nullable
  BuiltList<Media> get items;
  @nullable
  Config get config;

  FeaturedBody._();

  factory FeaturedBody([void Function(FeaturedBodyBuilder) updates]) =
      _$FeaturedBody;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeaturedBody.serializer, this));
  }

  static FeaturedBody fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeaturedBody.serializer, json.decode(jsonString));
  }

  static Serializer<FeaturedBody> get serializer => _$featuredBodySerializer;
}
