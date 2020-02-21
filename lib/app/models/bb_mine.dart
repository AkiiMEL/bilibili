import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_classified_services.dart';
import 'bb_official_verify.dart';
import 'bb_serializers.dart';
import 'bb_vip.dart';
import 'bb_pendent.dart';

export 'bb_classified_services.dart';
export 'bb_official_verify.dart';
export 'bb_vip.dart';
export 'bb_pendent.dart';

part 'bb_mine.g.dart';

abstract class Mine implements Built<Mine, MineBuilder> {
  // Fields
  @nullable
  int get rank;
  @nullable
  int get follower;
  @nullable
  @BuiltValueField(wireName: "official_verify")
  OfficialVerify get officialVerify;
  @nullable
  Pendant get pendant;
  @nullable
  int get bcoin;
  @nullable
  int get mid;
  @nullable
  int get silence;
  @nullable
  @BuiltValueField(wireName: "vip_type")
  int get vipType;
  @nullable
  @BuiltValueField(wireName: "new_followers")
  int get newFollowers;
  @nullable
  int get sex;
  @nullable
  @BuiltValueField(wireName: "vip_section_v2")
  ClassifiedServices get vipSectionV2;
  @nullable
  BuiltList<ClassifiedServices> get sections;
  @nullable
  @BuiltValueField(wireName: "show_videoup")
  int get showVideoup;
  @nullable
  String get name;
  @BuiltValueField(wireName: "show_creative")
  @nullable
  int get showCreative;
  @nullable
  @BuiltValueField(wireName: "dynamic")
  int get dynamics;
  @BuiltValueField(wireName: "vip_section")
  @nullable
  ClassifiedServices get vipSection;
  @nullable
  int get level;
  @nullable
  double get coin;
  @nullable
  @BuiltValueField(wireName: "audio_type")
  int get audioType;
  @nullable
  int get following;
  @nullable
  String get face;
  @nullable
  Vip get vip;

  Mine._();

  factory Mine([void Function(MineBuilder) updates]) = _$Mine;

  String toJson() {
    return json.encode(serializers.serializeWith(Mine.serializer, this));
  }

  static Mine fromJson(String jsonString) {
    return serializers.deserializeWith(
        Mine.serializer, json.decode(jsonString));
  }

  static Serializer<Mine> get serializer => _$mineSerializer;
}
