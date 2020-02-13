library serializers;

import 'package:bilibili/app/models/bb_partation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'bb_http_body.dart';

part 'bb_serializers.g.dart';

@SerializersFor([HttpBody, HttpListBody, Partation])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(HttpListBody.serializer)
      ..add(Partation.serializer)
      ..addBuilderFactory(FullType(HttpListBody, [FullType(Partation)]),
          () => HttpListBodyBuilder<Partation>())
      ..addBuilderFactory(FullType(BuiltList, [FullType(Partation)]),
          () => ListBuilder<Partation>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
