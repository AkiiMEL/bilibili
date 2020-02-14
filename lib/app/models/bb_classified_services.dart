import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';
import 'bb_service.dart';

part 'bb_classified_services.g.dart';

abstract class ClassifiedServices implements Built<ClassifiedServices, ClassifiedServicesBuilder> {
  // Fields
  @nullable
  String get title;
  @nullable
  String get subtitle;
  @nullable
  String get url;
  @nullable
  int get type;
  @nullable
  BuiltList<Service> get items;

  ClassifiedServices._();

  factory ClassifiedServices([void Function(ClassifiedServicesBuilder) updates]) = _$ClassifiedServices;

  String toJson() {
    return json.encode(serializers.serializeWith(ClassifiedServices.serializer, this));
  }

  static ClassifiedServices fromJson(String jsonString) {
    return serializers.deserializeWith(ClassifiedServices.serializer, json.decode(jsonString));
  }

  static Serializer<ClassifiedServices> get serializer => _$classifiedServicesSerializer;
}
