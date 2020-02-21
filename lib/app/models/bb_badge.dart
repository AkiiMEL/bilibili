import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_badge.g.dart';

abstract class Badge implements Built<Badge, BadgeBuilder> {
  // Fields
  @nullable
  String get text;
  @nullable
  @BuiltValueField(wireName: "icon_bg_url")
  String get imageUrl;

  Badge._();

  factory Badge([void Function(BadgeBuilder) updates]) = _$Badge;

  String toJson() {
    return json.encode(serializers.serializeWith(Badge.serializer, this));
  }

  static Badge fromJson(String jsonString) {
    return serializers.deserializeWith(Badge.serializer, json.decode(jsonString));
  }

  static Serializer<Badge> get serializer => _$badgeSerializer;
}