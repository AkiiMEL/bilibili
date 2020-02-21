import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_live_extra.dart';
import 'bb_live_module.dart';
import 'bb_serializers.dart';

export 'bb_live_extra.dart';
export 'bb_live_module.dart';

part 'bb_live_group.g.dart';

abstract class LiveGroup<Element> implements Built<LiveGroup<Element>, LiveGroupBuilder<Element>> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "module_info")
  LiveModule get module;
  @nullable
  @BuiltValueField(wireName: "extra_info")
  LiveExtra get extra;
  @nullable
  BuiltList<Element> get list;

  LiveGroup._();

  factory LiveGroup([void Function(LiveGroupBuilder) updates]) = _$LiveGroup<Element>;

  String toJson() {
    return json.encode(serializers.serialize(this,
        specifiedType: FullType(LiveGroup, [FullType(Element)])));
  }

  static LiveGroup<Element> fromJson<Element>(String jsonString) {
    return serializers.deserialize(
      json.decode(jsonString),
      specifiedType: FullType(LiveGroup, [FullType(Element)]),
    );
  }

  static Serializer<LiveGroup> get serializer => _$liveGroupSerializer;
}
