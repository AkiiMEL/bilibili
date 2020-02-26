import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_actor.g.dart';

abstract class Actor implements Built<Actor, ActorBuilder> {
  // Fields
  @nullable
  String get info;
  @nullable
  String get title;

  Actor._();

  factory Actor([void Function(ActorBuilder) updates]) = _$Actor;

  String toJson() {
    return json.encode(serializers.serializeWith(Actor.serializer, this));
  }

  static Actor fromJson(String jsonString) {
    return serializers.deserializeWith(
        Actor.serializer, json.decode(jsonString));
  }

  static Serializer<Actor> get serializer => _$actorSerializer;
}
