import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_dimension.g.dart';

abstract class Dimension implements Built<Dimension, DimensionBuilder> {
  // Fields
  @nullable
  int get height;
  @nullable
  int get rotate;
  @nullable
  int get width;

  Dimension._();

  factory Dimension([void Function(DimensionBuilder) updates]) = _$Dimension;

  String toJson() {
    return json.encode(serializers.serializeWith(Dimension.serializer, this));
  }

  static Dimension fromJson(String jsonString) {
    return serializers.deserializeWith(
        Dimension.serializer, json.decode(jsonString));
  }

  static Serializer<Dimension> get serializer => _$dimensionSerializer;
}
