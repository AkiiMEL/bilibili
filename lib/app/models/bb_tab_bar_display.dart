import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_tab_bar_item.dart';

export 'bb_tab_bar_item.dart';

part 'bb_tab_bar_display.g.dart';

abstract class TabBarDisplay
    implements Built<TabBarDisplay, TabBarDisplayBuilder> {
  // Fields
  @nullable
  BuiltList<TabBarItem> get bottom;
  @nullable
  BuiltList<TabBarItem> get tab;
  @nullable
  BuiltList<TabBarItem> get top;

  TabBarDisplay._();

  factory TabBarDisplay([void Function(TabBarDisplayBuilder) updates]) =
      _$TabBarDisplay;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TabBarDisplay.serializer, this));
  }

  static TabBarDisplay fromJson(String jsonString) {
    return serializers.deserializeWith(
        TabBarDisplay.serializer, json.decode(jsonString));
  }

  static Serializer<TabBarDisplay> get serializer => _$tabBarDisplaySerializer;
}
