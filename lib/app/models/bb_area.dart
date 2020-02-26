import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_area.g.dart';

abstract class Area implements Built<Area, AreaBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get name;

  Area._();

  factory Area([void Function(AreaBuilder) updates]) = _$Area;

  String toJson() {
    return json.encode(serializers.serializeWith(Area.serializer, this));
  }

  static Area fromJson(String jsonString) {
    return serializers.deserializeWith(
        Area.serializer, json.decode(jsonString));
  }

  static Serializer<Area> get serializer => _$areaSerializer;
}
