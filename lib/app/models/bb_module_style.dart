import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bb_module_style.g.dart';

class ModuleStyle extends EnumClass {
  @BuiltValueEnumConst(wireName: "banner")
  static const ModuleStyle BANNER = _$BANNER;
  @BuiltValueEnumConst(wireName: "function")
  static const ModuleStyle FUNCTION = _$FUNCTION;
  @BuiltValueEnumConst(wireName: "follow")
  static const ModuleStyle FOLLOW = _$FOLLOW;
  @BuiltValueEnumConst(wireName: "tip")
  static const ModuleStyle TIP = _$TIP;
  @BuiltValueEnumConst(wireName: "card")
  static const ModuleStyle CARD = _$CARD;
  @BuiltValueEnumConst(wireName: "v_card")
  static const ModuleStyle VCARD = _$VCARD;
  @BuiltValueEnumConst(wireName: "timeline")
  static const ModuleStyle TIMELINE = _$TIMELINE;
  @BuiltValueEnumConst(wireName: "rank")
  static const ModuleStyle RANK = _$RANK;
  @BuiltValueEnumConst(wireName: "flow")
  static const ModuleStyle FLOW = _$FLOW;
  @BuiltValueEnumConst(wireName: "topic")
  static const ModuleStyle TOPIC = _$TOPIC;
  @BuiltValueEnumConst(wireName: "list")
  static const ModuleStyle LIST = _$LIST;
  @BuiltValueEnumConst(wireName: "h_list")
  static const ModuleStyle HLIST = _$HLIST;

  const ModuleStyle._(String name) : super(name);

  static BuiltSet<ModuleStyle> get values => _$values;
  static ModuleStyle valueOf(String name) => _$valueOf(name);

  @BuiltValueSerializer(custom: true)
  static Serializer<ModuleStyle> get serializer => _$moduleStyleSerializer;
}

Serializer<ModuleStyle> _$moduleStyleSerializer = new _$ModuleStyleSerializer();

class _$ModuleStyleSerializer implements PrimitiveSerializer<ModuleStyle> {
  static const Map<String, String> _toWire = const <String, String>{
    'BANNER': 'banner',
    'FUNCTION': 'function',
    'FOLLOW': 'follow',
    'TIP': 'tip',
    'CARD': 'card',
    'VCARD': 'v_card',
    'TIMELINE': 'timeline',
    'RANK': 'rank',
    'FLOW': 'flow',
    'TOPIC': 'topic',
    'LIST' : 'list',
    'HLIST': 'h_list',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'banner': 'BANNER',
    'function': 'FUNCTION',
    'follow': 'FOLLOW',
    'tip': 'TIP',
    'card': 'CARD',
    'v_card': 'VCARD',
    'timeline': 'TIMELINE',
    'rank': 'RANK',
    'flow': 'FLOW',
    'topic': 'TOPIC',
    'list' : 'LIST',
    'h_list': 'HLIST',
  };

  @override
  final Iterable<Type> types = const <Type>[ModuleStyle];
  @override
  final String wireName = 'ModuleStyle';

  @override
  Object serialize(Serializers serializers, ModuleStyle object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ModuleStyle deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    try {
      return ModuleStyle.valueOf(_fromWire[serialized] ?? serialized as String);
    } catch (e) {
      return ModuleStyle._(_fromWire[serialized] ?? serialized as String);
    }
  }
}
