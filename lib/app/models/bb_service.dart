import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_service.g.dart';

abstract class Service implements Built<Service, ServiceBuilder> {
  // Fields
  @nullable
  int get display;
  @nullable
  String get title;
  @nullable
  String get icon;
  @nullable
  @BuiltValueField(wireName: "need_login")
  int get needLogin;
  @nullable
  String get uri;
  @nullable
  @BuiltValueField(wireName: "global_red_dot")
  int get globalRedDot;
  @nullable
  @BuiltValueField(wireName: "red_dot")
  int get redDot;
  @nullable
  int get id;

  Service._();

  factory Service([void Function(ServiceBuilder) updates]) = _$Service;

  String toJson() {
    return json.encode(serializers.serializeWith(Service.serializer, this));
  }

  static Service fromJson(String jsonString) {
    return serializers.deserializeWith(
        Service.serializer, json.decode(jsonString));
  }

  static Serializer<Service> get serializer => _$serviceSerializer;
}
