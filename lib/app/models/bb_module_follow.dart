import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_module_follow.g.dart';

abstract class ModuleFollow
    implements Built<ModuleFollow, ModuleFollowBuilder> {
  // Fields
  @nullable
  int get count;
  @nullable
  int get type;
  @nullable
  @BuiltValueField(wireName: "update")
  int get upgrade;

  ModuleFollow._();

  factory ModuleFollow([void Function(ModuleFollowBuilder) updates]) =
      _$ModuleFollow;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ModuleFollow.serializer, this));
  }

  static ModuleFollow fromJson(String jsonString) {
    return serializers.deserializeWith(
        ModuleFollow.serializer, json.decode(jsonString));
  }

  static Serializer<ModuleFollow> get serializer => _$moduleFollowSerializer;
}
