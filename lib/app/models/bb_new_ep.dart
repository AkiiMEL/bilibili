import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_new_ep.g.dart';

abstract class NewEp implements Built<NewEp, NewEpBuilder> {
  // Fields
  @nullable
  String get cover;
  @nullable
  int get id;
  @nullable
  @BuiltValueField(wireName: "index_show")
  String get indexShow;

  NewEp._();

  factory NewEp([void Function(NewEpBuilder) updates]) = _$NewEp;

  String toJson() {
    return json.encode(serializers.serializeWith(NewEp.serializer, this));
  }

  static NewEp fromJson(String jsonString) {
    return serializers.deserializeWith(
        NewEp.serializer, json.decode(jsonString));
  }

  static Serializer<NewEp> get serializer => _$newEpSerializer;
}
