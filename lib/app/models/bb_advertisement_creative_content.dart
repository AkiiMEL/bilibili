import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_advertisement_creative_content.g.dart';

abstract class AdvertisementCreativeContent implements Built<AdvertisementCreativeContent, AdvertisementCreativeContentBuilder> {
  // Fields
  @nullable
  String get title;
  @nullable
  String get description;
  @nullable
  @BuiltValueField(wireName: "image_url")
  String get imageUrl;
  @nullable
  @BuiltValueField(wireName: "image_md5")
  String get imageMd5;
  @nullable
  String get url;
  @nullable
  @BuiltValueField(wireName: "click_url")
  String get clickUrl;
  @nullable
  @BuiltValueField(wireName: "show_url")
  String get showUrl;

  AdvertisementCreativeContent._();

  factory AdvertisementCreativeContent([void Function(AdvertisementCreativeContentBuilder) updates]) = _$AdvertisementCreativeContent;

  String toJson() {
    return json.encode(serializers.serializeWith(AdvertisementCreativeContent.serializer, this));
  }

  static AdvertisementCreativeContent fromJson(String jsonString) {
    return serializers.deserializeWith(AdvertisementCreativeContent.serializer, json.decode(jsonString));
  }

  static Serializer<AdvertisementCreativeContent> get serializer => _$advertisementCreativeContentSerializer;
}