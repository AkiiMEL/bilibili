import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_advertisement_creative_content.dart';
import 'bb_extra.dart';

export 'bb_serializers.dart';
export 'bb_advertisement_creative_content.dart';
export 'bb_extra.dart';

part 'bb_advertisement.g.dart';

abstract class Advertisement
    implements Built<Advertisement, AdvertisementBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "creative_id")
  int get creativeId;
  @nullable
  @BuiltValueField(wireName: "creative_type")
  int get creativeType;
  @nullable
  @BuiltValueField(wireName: "card_type")
  int get cardType;
  @nullable
  @BuiltValueField(wireName: "creative_content")
  AdvertisementCreativeContent get creativeContent;
  @nullable
  @BuiltValueField(wireName: "ad_cb")
  String get adCb;
  @nullable
  int get resource;
  @nullable
  int get source;
  @nullable
  @BuiltValueField(wireName: "request_id")
  String get requestId;
  @nullable
  @BuiltValueField(wireName: "is_ad")
  bool get isAd;
  @nullable
  @BuiltValueField(wireName: "cm_mark")
  int get cmMark;
  @nullable
  int get index;
  @nullable
  @BuiltValueField(wireName: "is_ad_loc")
  bool get isAdLoc;
  @nullable
  @BuiltValueField(wireName: "card_index")
  int get cardIndex;
  @nullable
  @BuiltValueField(wireName: "client_ip")
  String get clientIp;
  @nullable
  Extra get extra;
  @nullable
  @BuiltValueField(wireName: "creative_style")
  int get creativeStyle;

  Advertisement._();

  factory Advertisement([void Function(AdvertisementBuilder) updates]) =
      _$Advertisement;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Advertisement.serializer, this));
  }

  static Advertisement fromJson(String jsonString) {
    return serializers.deserializeWith(
        Advertisement.serializer, json.decode(jsonString));
  }

  static Serializer<Advertisement> get serializer => _$advertisementSerializer;
}
