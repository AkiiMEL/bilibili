import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_serializers.dart';

part 'bb_quality_description.g.dart';

abstract class QualityDescription
    implements Built<QualityDescription, QualityDescriptionBuilder> {
  // Fields
  @nullable
  String get desc;
  @nullable
  int get qn;

  QualityDescription._();

  factory QualityDescription(
          [void Function(QualityDescriptionBuilder) updates]) =
      _$QualityDescription;

  String toJson() {
    return json
        .encode(serializers.serializeWith(QualityDescription.serializer, this));
  }

  static QualityDescription fromJson(String jsonString) {
    return serializers.deserializeWith(
        QualityDescription.serializer, json.decode(jsonString));
  }

  static Serializer<QualityDescription> get serializer =>
      _$qualityDescriptionSerializer;
}
