import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_pendent.g.dart';

abstract class Pendant implements Built<Pendant, PendantBuilder> {
  // Fields
  @nullable
  String get image;

  Pendant._();

  factory Pendant([void Function(PendantBuilder) updates]) = _$Pendant;

  String toJson() {
    return json.encode(serializers.serializeWith(Pendant.serializer, this));
  }

  static Pendant fromJson(String jsonString) {
    return serializers.deserializeWith(Pendant.serializer, json.decode(jsonString));
  }

  static Serializer<Pendant> get serializer => _$pendantSerializer;
}