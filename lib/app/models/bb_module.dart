import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_attr.dart';
import 'bb_bangumi_list_item.dart';
import 'bb_module_follow.dart';
import 'bb_module_style.dart';
import 'bb_region.dart';
import 'bb_report.dart';
import 'bb_serializers.dart';

export 'bb_attr.dart';
export 'bb_bangumi_list_item.dart';
export 'bb_module_follow.dart';
export 'bb_region.dart';
export 'bb_report.dart';

part 'bb_module.g.dart';

abstract class Module<Element>
    implements Built<Module<Element>, ModuleBuilder<Element>> {
  // Fields
  @nullable
  Attr get attr;
  @nullable
  BuiltList<Region> get headers;
  @nullable
  BuiltList<Element> get items;
  @nullable
  @BuiltValueField(wireName: "module_id")
  int get moduleId;
  @nullable
  Report get report;
  @nullable
  int get size;
  @nullable
  ModuleStyle get style;
  @nullable
  String get title;
  @nullable
  String get subtitle;
  @nullable
  String get url;
  @nullable
  int get type;
  @nullable
  BuiltList<int> get wid;
  @nullable
  ModuleFollow get follow;

  Module._();

  factory Module([void Function(ModuleBuilder<Element>) updates]) =
      _$Module<Element>;

  String toJson() {
    return json.encode(serializers.serialize(this,
        specifiedType: FullType(Module, [FullType(Element)])));
  }

  static Module<Element> fromJson<Element>(String jsonString) {
    return serializers.deserialize(
      json.decode(jsonString),
      specifiedType: FullType(Module, [FullType(Element)]),
    );
  }

  static Serializer<Module> get serializer => _$moduleSerializer;
}
