import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_live_extra.g.dart';

abstract class LiveExtra implements Built<LiveExtra, LiveExtraBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: 'total_count')
  int get totalCount;
  @nullable
  @BuiltValueField(wireName: 'time_desc')
  String get timeDesc;
  @nullable
  @BuiltValueField(wireName: 'uwireName_desc')
  String get uwireNameDesc;
  @nullable
  @BuiltValueField(wireName: 'tags_desc')
  String get tagsDesc;
  @nullable
  @BuiltValueField(wireName: 'card_type')
  int get cardType;
  @nullable
  @BuiltValueField(wireName: 'relation_page')
  int get relationPage;
  @nullable
  @BuiltValueField(wireName: 'show_type')
  int get showType;
  @nullable
  BuiltList get offline;
  @nullable
  @BuiltValueField(wireName: "sub_title")
  String get subtitle;

  LiveExtra._();

  factory LiveExtra([void Function(LiveExtraBuilder) updates]) = _$LiveExtra;

  String toJson() {
    return json.encode(serializers.serializeWith(LiveExtra.serializer, this));
  }

  static LiveExtra fromJson(String jsonString) {
    return serializers.deserializeWith(
        LiveExtra.serializer, json.decode(jsonString));
  }

  static Serializer<LiveExtra> get serializer => _$liveExtraSerializer;
}
