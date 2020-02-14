library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'bb_http_body.dart';
import 'bb_partation.dart';
import 'bb_mine.dart';
import 'bb_classified_services.dart';
import 'bb_pendent.dart';
import 'bb_official_verify.dart';
import 'bb_service.dart';
import 'bb_vip.dart';

part 'bb_serializers.g.dart';

@SerializersFor([
  HttpBody,
  HttpListBody,
  Partation,
  Mine,
  OfficialVerify,
  Pendant,
  ClassifiedServices,
  Service,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(FullType(HttpListBody, [FullType(Partation)]),
          () => HttpListBodyBuilder<Partation>())
      ..addBuilderFactory(FullType(HttpBody, [FullType(Mine)]),
          () => HttpBodyBuilder<Mine>())
      ..addBuilderFactory(FullType(BuiltList, [FullType(Partation)]),
          () => ListBuilder<Partation>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
