import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_reason.g.dart';

abstract class Reason implements Built<Reason, ReasonBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get name;

  Reason._();

  factory Reason([void Function(ReasonBuilder) updates]) = _$Reason;

  String toJson() {
    return json.encode(serializers.serializeWith(Reason.serializer, this));
  }

  static Reason fromJson(String jsonString) {
    return serializers.deserializeWith(
        Reason.serializer, json.decode(jsonString));
  }

  static Serializer<Reason> get serializer => _$reasonSerializer;
}
