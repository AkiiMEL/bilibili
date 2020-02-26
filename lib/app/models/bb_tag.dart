import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_tag.g.dart';

abstract class Tag implements Built<Tag, TagBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  String get url;

  Tag._();

  factory Tag([void Function(TagBuilder) updates]) = _$Tag;

  String toJson() {
    return json.encode(serializers.serializeWith(Tag.serializer, this));
  }

  static Tag fromJson(String jsonString) {
    return serializers.deserializeWith(Tag.serializer, json.decode(jsonString));
  }

  static Serializer<Tag> get serializer => _$tagSerializer;
}
