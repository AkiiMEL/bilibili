import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_copyright.g.dart';

abstract class Copyright implements Built<Copyright, CopyrightBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "allow_bp")
  int get allowBp;
  @nullable
  @BuiltValueField(wireName: "allow_bp_rank")
  int get allowBpRank;
  @nullable
  @BuiltValueField(wireName: "allow_download")
  int get allowDownload;
  @nullable
  @BuiltValueField(wireName: "allow_dm")
  int get allowDm;
  @nullable
  @BuiltValueField(wireName: "allow_review")
  int get allowReview;
  @nullable
  @BuiltValueField(wireName: "area_limit")
  int get areaLimit;
  @nullable
  @BuiltValueField(wireName: "ban_area_show")
  int get banAreaShow;
  @nullable
  @BuiltValueField(wireName: "can_watch")
  int get canWatch;
  @nullable
  String get copyright;
  @nullable
  @BuiltValueField(wireName: "copyright_name")
  String get copyrightName;
  @nullable
  @BuiltValueField(wireName: "forbid_pre")
  int get forbidPre;
  @nullable
  @BuiltValueField(wireName: "is_cover_show")
  int get isCoverShow;
  @nullable
  @BuiltValueField(wireName: "is_preview")
  int get isPreview;
  @nullable
  String get resource;
  @nullable
  @BuiltValueField(wireName: "watch_platform")
  int get watchPlatform;

  Copyright._();

  factory Copyright([void Function(CopyrightBuilder) updates]) = _$Copyright;

  String toJson() {
    return json.encode(serializers.serializeWith(Copyright.serializer, this));
  }

  static Copyright fromJson(String jsonString) {
    return serializers.deserializeWith(
        Copyright.serializer, json.decode(jsonString));
  }

  static Serializer<Copyright> get serializer => _$copyrightSerializer;
}
