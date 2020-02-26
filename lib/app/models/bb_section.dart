import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_n_episode.dart';
import 'bb_serializers.dart';

part 'bb_section.g.dart';

abstract class Section implements Built<Section, SectionBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "episode_id")
  String get episodeId;
  @nullable
  BuiltList<Episode> get episodes;
  @nullable
  int get id;
  @nullable
  String get more;
  @nullable
  String get title;
  @nullable
  int get type;

  Section._();

  factory Section([void Function(SectionBuilder) updates]) = _$Section;

  String toJson() {
    return json.encode(serializers.serializeWith(Section.serializer, this));
  }

  static Section fromJson(String jsonString) {
    return serializers.deserializeWith(
        Section.serializer, json.decode(jsonString));
  }

  static Serializer<Section> get serializer => _$sectionSerializer;
}
