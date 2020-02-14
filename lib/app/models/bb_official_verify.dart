import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_official_verify.g.dart';

abstract class OfficialVerify
    implements Built<OfficialVerify, OfficialVerifyBuilder> {
  // Fields
  @nullable
  int get type;
  @nullable
  @BuiltValueField(wireName: "desc")
  String get description;

  OfficialVerify._();

  factory OfficialVerify([void Function(OfficialVerifyBuilder) updates]) =
      _$OfficialVerify;

  String toJson() {
    return json
        .encode(serializers.serializeWith(OfficialVerify.serializer, this));
  }

  static OfficialVerify fromJson(String jsonString) {
    return serializers.deserializeWith(
        OfficialVerify.serializer, json.decode(jsonString));
  }

  static Serializer<OfficialVerify> get serializer =>
      _$officialVerifySerializer;
}
