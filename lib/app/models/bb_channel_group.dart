import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_channel.dart';

export 'bb_channel.dart';

part 'bb_channel_group.g.dart';

abstract class ChannelGroup
    implements Built<ChannelGroup, ChannelGroupBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "dynamic")
  BuiltList<Channel> get dynamics;
  @nullable
  BuiltList<Channel> get rcmd;
  @nullable
  BuiltList<Channel> get list;

  ChannelGroup._();

  factory ChannelGroup([void Function(ChannelGroupBuilder) updates]) =
      _$ChannelGroup;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ChannelGroup.serializer, this));
  }

  static ChannelGroup fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChannelGroup.serializer, json.decode(jsonString));
  }

  static Serializer<ChannelGroup> get serializer => _$channelGroupSerializer;
}
