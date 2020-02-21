import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_tab_bar_config.dart';
import 'bb_tab_bar_display.dart';

export 'bb_tab_bar_config.dart';
export 'bb_tab_bar_display.dart';

part 'bb_tab_bar_http_body.g.dart';

abstract class TabBarHttpBody
    implements Built<TabBarHttpBody, TabBarHttpBodyBuilder> {
  // Fields
  @nullable
  int get code;
  @nullable
  String get message;
  @nullable
  TabBarConfig get config;
  @nullable
  TabBarDisplay get data;

  TabBarHttpBody._();

  factory TabBarHttpBody([void Function(TabBarHttpBodyBuilder) updates]) =
      _$TabBarHttpBody;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TabBarHttpBody.serializer, this));
  }

  static TabBarHttpBody fromJson(String jsonString) {
    return serializers.deserializeWith(
        TabBarHttpBody.serializer, json.decode(jsonString));
  }

  static Serializer<TabBarHttpBody> get serializer =>
      _$tabBarHttpBodySerializer;
}
