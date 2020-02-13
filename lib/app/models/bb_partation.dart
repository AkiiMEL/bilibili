import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_partation.g.dart';

abstract class Partation implements Built<Partation, PartationBuilder> {
  @nullable
  String get logo;
  @nullable
  int get reid;
  @nullable
  String get uri;
  @nullable
  String get goto;
  @nullable
  String get param;
  @nullable
  int get type;
  @nullable
  int get tid;
  @nullable
  String get name;

  Partation._();

  factory Partation([void Function(PartationBuilder) updates]) = _$Partation;

  static Serializer<Partation> get serializer => _$partationSerializer;

  static Partation fromJson(String jsonString) {
    return serializers.deserializeWith(
        Partation.serializer, json.decode(jsonString));
  }
}
