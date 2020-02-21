import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_bangumi_body_popular.dart';
import 'bb_module.dart';
import 'bb_region.dart';
import 'bb_serializers.dart';

export 'bb_bangumi_body_popular.dart';
export 'bb_module.dart';
export 'bb_region.dart';

part 'bb_bangumi_body.g.dart';

abstract class BangumiBody implements Built<BangumiBody, BangumiBodyBuilder> {
  // Fields
  @nullable
  BangumiBodyPopular get hot;
  @nullable
  BuiltList<Module> get modules;
  @nullable
  BuiltList<Region> get regions;

  BangumiBody._();

  factory BangumiBody([void Function(BangumiBodyBuilder) updates]) =
      _$BangumiBody;

  String toJson() {
    return json.encode(serializers.serializeWith(BangumiBody.serializer, this));
  }

  static BangumiBody fromJson(String jsonString) {
    return serializers.deserializeWith(
        BangumiBody.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiBody> get serializer => _$bangumiBodySerializer;
}
