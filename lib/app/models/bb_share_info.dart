import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_share_info.g.dart';

abstract class ShareInfo implements Built<ShareInfo, ShareInfoBuilder> {
  // Fields
  @nullable
  String get title;
  @nullable
  String get subtitle;
  @nullable
  @BuiltValueField(wireName: "image_url")
  String get imageUrl;

  ShareInfo._();

  factory ShareInfo([void Function(ShareInfoBuilder) updates]) = _$ShareInfo;

  String toJson() {
    return json.encode(serializers.serializeWith(ShareInfo.serializer, this));
  }

  static ShareInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        ShareInfo.serializer, json.decode(jsonString));
  }

  static Serializer<ShareInfo> get serializer => _$shareInfoSerializer;
}
