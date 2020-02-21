import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_bangumi_body_popular.g.dart';

abstract class BangumiBodyPopular
    implements Built<BangumiBodyPopular, BangumiBodyPopularBuilder> {
  // Fields
  @nullable
  String get desc;
  @nullable
  BuiltList<dynamic> get items;
  @nullable
  String get title;
  @nullable
  int get wid;

  BangumiBodyPopular._();

  factory BangumiBodyPopular(
          [void Function(BangumiBodyPopularBuilder) updates]) =
      _$BangumiBodyPopular;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BangumiBodyPopular.serializer, this));
  }

  static BangumiBodyPopular fromJson(String jsonString) {
    return serializers.deserializeWith(
        BangumiBodyPopular.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiBodyPopular> get serializer =>
      _$bangumiBodyPopularSerializer;
}
