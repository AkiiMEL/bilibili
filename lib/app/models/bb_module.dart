import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_attr.dart';
import 'bb_bangumi_list_item.dart';
import 'bb_module_follow.dart';
import 'bb_region.dart';
import 'bb_report.dart';
import 'bb_serializers.dart';

export 'bb_attr.dart';
export 'bb_bangumi_list_item.dart';
export 'bb_module_follow.dart';
export 'bb_region.dart';
export 'bb_report.dart';

part 'bb_module.g.dart';

abstract class Module implements Built<Module, ModuleBuilder> {
  // Fields
  @nullable
  Attr get attr;
  @nullable
  BuiltList<Region> get headers;
  @nullable
  BuiltList<BangumiListItem> get items;
  @nullable
  @BuiltValueField(wireName: "module_id")
  int get moduleId;
  @nullable
  Report get report;
  @nullable
  int get size;
  @nullable
  String get style;
  @nullable
  String get title;
  @nullable
  int get type;
  @nullable
  BuiltList<int> get wid;
  @nullable
  ModuleFollow get follow;

  Module._();

  factory Module([void Function(ModuleBuilder) updates]) = _$Module;

  String toJson() {
    return json.encode(serializers.serializeWith(Module.serializer, this));
  }

  static Module fromJson(String jsonString) {
    return serializers.deserializeWith(
        Module.serializer, json.decode(jsonString));
  }

  static Serializer<Module> get serializer => _$moduleSerializer;
}
