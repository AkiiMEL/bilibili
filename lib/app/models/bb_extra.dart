import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'bb_serializers.dart';
import 'bb_share_info.dart';
import 'bb_whitelist.dart';
import 'bb_card.dart';

part 'bb_extra.g.dart';

abstract class Extra implements Built<Extra, ExtraBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "sales_type")
  int get salesType;
  @nullable
  @BuiltValueField(wireName: "share_info")
  ShareInfo get shareInfo;
  @nullable
  @BuiltValueField(wireName: "use_ad_web_v2")
  bool get useAdWebV2;
  @nullable
  @BuiltValueField(wireName: "show_urls")
  BuiltList<String> get showUrls;
  @nullable
  @BuiltValueField(wireName: "click_urls")
  BuiltList<String> get clickUrls;
  @nullable
  @BuiltValueField(wireName: "upzone_entrance_report_id")
  int get upzoneEntranceReportId;
  @nullable
  @BuiltValueField(wireName: "special_industry")
  bool get specialIndustry;
  @nullable
  @BuiltValueField(wireName: "appstore_priority")
  int get appstorePriority;
  @nullable
  @BuiltValueField(wireName: "upzone_entrance_type")
  int get upzoneEntranceType;
  @nullable
  @BuiltValueField(wireName: "report_time")
  int get reportTime;
  @nullable
  @BuiltValueField(wireName: "preload_landingpage")
  int get preloadLandingpage;
  @nullable
  @BuiltValueField(wireName: "open_white_list")
  BuiltList<dynamic> get openWhitelist;
  @nullable
  @BuiltValueField(wireName: "special_industry_tips")
  String get specialIndustryTips;
  @nullable
  @BuiltValueField(wireName: "download_whitelist")
  BuiltList<Whitelist> get downloadWhitelist;
  @nullable
  @BuiltValueField(wireName: "enable_share")
  bool get enableShare;
  @nullable
  Card get card;

  Extra._();

  factory Extra([void Function(ExtraBuilder) updates]) = _$Extra;

  String toJson() {
    return json.encode(serializers.serializeWith(Extra.serializer, this));
  }

  static Extra fromJson(String jsonString) {
    return serializers.deserializeWith(
        Extra.serializer, json.decode(jsonString));
  }

  static Serializer<Extra> get serializer => _$extraSerializer;
}
