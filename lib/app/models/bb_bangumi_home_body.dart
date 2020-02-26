import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_bangumi_home_body_popular.dart';
import 'bb_module.dart';
import 'bb_region.dart';
import 'bb_serializers.dart';

export 'bb_bangumi_home_body_popular.dart';
export 'bb_module.dart';
export 'bb_region.dart';

part 'bb_bangumi_home_body.g.dart';

abstract class BangumiHomeBody implements Built<BangumiHomeBody, BangumiHomeBodyBuilder> {
  // Fields
@nullable
  BangumiHomeBodyPopular get hot;
  @nullable
  BuiltList<Module<BangumiListItem>> get modules;
  @nullable
  BuiltList<Region> get regions;

  BangumiHomeBody._();

  factory BangumiHomeBody([void Function(BangumiHomeBodyBuilder) updates]) = _$BangumiHomeBody;

  String toJson() {
    return json.encode(serializers.serializeWith(BangumiHomeBody.serializer, this));
  }

  static BangumiHomeBody fromJson(String jsonString) {
    return serializers.deserializeWith(BangumiHomeBody.serializer, json.decode(jsonString));
  }

  static Serializer<BangumiHomeBody> get serializer => _$bangumiHomeBodySerializer;
}