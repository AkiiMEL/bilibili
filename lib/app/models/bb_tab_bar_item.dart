import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_tab_bar_item.g.dart';

abstract class TabBarItem implements Built<TabBarItem, TabBarItemBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  String get uri;
  @nullable
  @BuiltValueField(wireName: "tab_id")
  String get tabId;
  @nullable
  int get pos;
  @nullable
  @BuiltValueField(wireName: "icon")
  String get image;
  @nullable
  @BuiltValueField(wireName: "icon_selected")
  String get selectedImage;
  @nullable
  @BuiltValueField(wireName: "default_selected")
  int get selected;
  @nullable
  @BuiltValueField(wireName: "extension")
  ExtTabBarItem get ext;

  TabBarItem._();

  factory TabBarItem([void Function(TabBarItemBuilder) updates]) = _$TabBarItem;

  String toJson() {
    return json.encode(serializers.serializeWith(TabBarItem.serializer, this));
  }

  static TabBarItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        TabBarItem.serializer, json.decode(jsonString));
  }

  static Serializer<TabBarItem> get serializer => _$tabBarItemSerializer;
}

abstract class ExtTabBarItem
    implements Built<ExtTabBarItem, ExtTabBarItemBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "inactive_icon")
  String get inactiveIcon;
  @nullable
  @BuiltValueField(wireName: "active_icon")
  String get activeIcon;

  ExtTabBarItem._();

  factory ExtTabBarItem([void Function(ExtTabBarItemBuilder) updates]) =
      _$ExtTabBarItem;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ExtTabBarItem.serializer, this));
  }

  static ExtTabBarItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        ExtTabBarItem.serializer, json.decode(jsonString));
  }

  static Serializer<ExtTabBarItem> get serializer => _$extTabBarItemSerializer;
}
