import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_attr.g.dart';

abstract class Attr implements Built<Attr, AttrBuilder> {
  // Fields
  @nullable
  int get follow;
  @nullable
  int get header;
  @nullable
  int get random;

  Attr._();

  factory Attr([void Function(AttrBuilder) updates]) = _$Attr;

  String toJson() {
    return json.encode(serializers.serializeWith(Attr.serializer, this));
  }

  static Attr fromJson(String jsonString) {
    return serializers.deserializeWith(
        Attr.serializer, json.decode(jsonString));
  }

  static Serializer<Attr> get serializer => _$attrSerializer;
}
