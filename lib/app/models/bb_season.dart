import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_season.g.dart';

abstract class Season implements Built<Season, SeasonBuilder> {
  // Fields
  @nullable
  String get badge;
  @nullable
  int get badgeType;
  @nullable
  String get cover;
  @nullable
  int get isNew;
  @nullable
  String get link;
  @nullable
  String get resource;
  @nullable
  int get seasonId;
  @nullable
  String get seasonTitle;
  @nullable
  String get title;

  Season._();

  factory Season([void Function(SeasonBuilder) updates]) = _$Season;

  String toJson() {
    return json.encode(serializers.serializeWith(Season.serializer, this));
  }

  static Season fromJson(String jsonString) {
    return serializers.deserializeWith(
        Season.serializer, json.decode(jsonString));
  }

  static Serializer<Season> get serializer => _$seasonSerializer;
}
