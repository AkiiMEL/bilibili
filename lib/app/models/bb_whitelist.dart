import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_whitelist.g.dart';

abstract class Whitelist implements Built<Whitelist, WhitelistBuilder> {
  // Fields
  @nullable
  int get size;
  @nullable
  @BuiltValueField(wireName: "display_name")
  String get displayName;
  @nullable
  @BuiltValueField(wireName: "apk_name")
  String get apkName;
  @nullable
  String get url;
  @nullable
  String get md5;
  @nullable
  String get icon;
  @nullable
  @BuiltValueField(wireName: "bili_url")
  String get biliUrl;

  Whitelist._();

  factory Whitelist([void Function(WhitelistBuilder) updates]) = _$Whitelist;

  String toJson() {
    return json.encode(serializers.serializeWith(Whitelist.serializer, this));
  }

  static Whitelist fromJson(String jsonString) {
    return serializers.deserializeWith(
        Whitelist.serializer, json.decode(jsonString));
  }

  static Serializer<Whitelist> get serializer => _$whitelistSerializer;
}
