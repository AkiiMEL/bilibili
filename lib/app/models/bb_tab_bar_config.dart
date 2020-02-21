import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_tab_bar_config.g.dart';

abstract class TabBarConfig implements Built<TabBarConfig, TabBarConfigBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "no_login_avatar_type")
  int get noLoginAvatarType;
  @nullable
  @BuiltValueField(wireName: "popup_style")
  int get popupStyle;
  @nullable
  @BuiltValueField(wireName: "no_login_avatar")
  String get noLoginAvatar;

  TabBarConfig._();

  factory TabBarConfig([void Function(TabBarConfigBuilder) updates]) = _$TabBarConfig;

  String toJson() {
    return json.encode(serializers.serializeWith(TabBarConfig.serializer, this));
  }

  static TabBarConfig fromJson(String jsonString) {
    return serializers.deserializeWith(
        TabBarConfig.serializer, json.decode(jsonString));
  }

  static Serializer<TabBarConfig> get serializer => _$tabBarConfigSerializer;
}
