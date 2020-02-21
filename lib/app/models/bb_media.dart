import 'dart:convert';

import 'package:bilibili/app/models/bb_badge.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bb_advertisement.dart';
import 'bb_argument.dart';
import 'bb_button_description.dart';
import 'bb_serializers.dart';
import 'bb_three_point.dart';
import 'bb_text_attributes.dart';

export 'bb_advertisement.dart';
export 'bb_argument.dart';
export 'bb_button_description.dart';
export 'bb_three_point.dart';
export 'bb_text_attributes.dart';

part 'bb_media.g.dart';

abstract class Media implements Built<Media, MediaBuilder> {
  // Fields
  @nullable
  @BuiltValueField(wireName: "card_type")
  String get cardType;
  @nullable
  @BuiltValueField(wireName: "card_goto")
  String get cardGoto;
  @nullable
  String get goto;
  @nullable
  String get param;
  @nullable
  String get cover;
  @nullable
  String get title;
  @nullable
  String get uri;
  @nullable
  @BuiltValueField(wireName: "three_point")
  ThreePoint get threePoint;
  @nullable
  Argument get args;
  @nullable
  @BuiltValueField(wireName: "player_args")
  Argument get playerArgs;
  @nullable
  int get idx;
  @nullable
  @BuiltValueField(wireName: "three_point_v2")
  BuiltList<ThreePointV2> get threePointV2;
  @nullable
  @BuiltValueField(wireName: "cover_left_text_1")
  String get coverLeftText1;
  @nullable
  @BuiltValueField(wireName: "cover_left_icon_1")
  int get coverLeftIcon1;
  @nullable
  @BuiltValueField(wireName: "cover_left_text_2")
  String get coverLeftText2;
  @nullable
  @BuiltValueField(wireName: "cover_left_icon_2")
  int get coverLeftIcon2;
  @nullable
  @BuiltValueField(wireName: "cover_left_text_3")
  String get coverLeftText3;
  @nullable
  @BuiltValueField(wireName: "cover_right_text")
  String get coverRightText;
  @nullable
  Badge get badge;
  @nullable
  @BuiltValueField(wireName: "badge")
  String get badgeString;
  @nullable
  @BuiltValueField(wireName: "badge_style")
  TextAttributes get badgeStyle;
  @nullable
  @BuiltValueField(wireName: "desc_button")
  ButtonDescription get descButton;
  @nullable
  @BuiltValueField(wireName: "can_play")
  int get canPlay;
  @nullable
  @BuiltValueField(wireName: "official_icon")
  int get officialIcon;
  @nullable
  @BuiltValueField(wireName: "rcmd_reason")
  String get rcmdReason;
  @nullable
  @BuiltValueField(wireName: "rcmd_reason_style")
  TextAttributes get rcmdReasonStyle;
  @nullable
  @BuiltValueField(wireName: "ad_info")
  Advertisement get adInfo;
  @nullable
  int get position;

  Media._();

  factory Media([void Function(MediaBuilder) updates]) = _$Media;

  String toJson() {
    return json.encode(serializers.serializeWith(Media.serializer, this));
  }

  static Media fromJson(String jsonString) {
    return serializers.deserializeWith(
        Media.serializer, json.decode(jsonString));
  }

  @BuiltValueSerializer(custom: true)
  static Serializer<Media> get serializer => _$mediaSerializer;
}

Serializer<Media> _$mediaSerializer = new _$MediaSerializer();

class _$MediaSerializer implements StructuredSerializer<Media> {
  @override
  final Iterable<Type> types = const [Media, _$Media];
  @override
  final String wireName = 'Media';

  @override
  Iterable<Object> serialize(Serializers serializers, Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cardType != null) {
      result
        ..add('card_type')
        ..add(serializers.serialize(object.cardType,
            specifiedType: const FullType(String)));
    }
    if (object.cardGoto != null) {
      result
        ..add('card_goto')
        ..add(serializers.serialize(object.cardGoto,
            specifiedType: const FullType(String)));
    }
    if (object.goto != null) {
      result
        ..add('goto')
        ..add(serializers.serialize(object.goto,
            specifiedType: const FullType(String)));
    }
    if (object.param != null) {
      result
        ..add('param')
        ..add(serializers.serialize(object.param,
            specifiedType: const FullType(String)));
    }
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.threePoint != null) {
      result
        ..add('three_point')
        ..add(serializers.serialize(object.threePoint,
            specifiedType: const FullType(ThreePoint)));
    }
    if (object.args != null) {
      result
        ..add('args')
        ..add(serializers.serialize(object.args,
            specifiedType: const FullType(Argument)));
    }
    if (object.playerArgs != null) {
      result
        ..add('player_args')
        ..add(serializers.serialize(object.playerArgs,
            specifiedType: const FullType(Argument)));
    }
    if (object.idx != null) {
      result
        ..add('idx')
        ..add(serializers.serialize(object.idx,
            specifiedType: const FullType(int)));
    }
    if (object.threePointV2 != null) {
      result
        ..add('three_point_v2')
        ..add(serializers.serialize(object.threePointV2,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ThreePointV2)])));
    }
    if (object.coverLeftText1 != null) {
      result
        ..add('cover_left_text_1')
        ..add(serializers.serialize(object.coverLeftText1,
            specifiedType: const FullType(String)));
    }
    if (object.coverLeftIcon1 != null) {
      result
        ..add('cover_left_icon_1')
        ..add(serializers.serialize(object.coverLeftIcon1,
            specifiedType: const FullType(int)));
    }
    if (object.coverLeftText2 != null) {
      result
        ..add('cover_left_text_2')
        ..add(serializers.serialize(object.coverLeftText2,
            specifiedType: const FullType(String)));
    }
    if (object.coverLeftIcon2 != null) {
      result
        ..add('cover_left_icon_2')
        ..add(serializers.serialize(object.coverLeftIcon2,
            specifiedType: const FullType(int)));
    }
    if (object.coverLeftText3 != null) {
      result
        ..add('cover_left_text_3')
        ..add(serializers.serialize(object.coverLeftText3,
            specifiedType: const FullType(String)));
    }
    if (object.coverRightText != null) {
      result
        ..add('cover_right_text')
        ..add(serializers.serialize(object.coverRightText,
            specifiedType: const FullType(String)));
    }
    if (object.badge != null) {
      result
        ..add('badge')
        ..add(serializers.serialize(object.badge,
            specifiedType: const FullType(Badge)));
    }
    if (object.badgeString != null) {
      result
        ..add('badge')
        ..add(serializers.serialize(object.badgeString,
            specifiedType: const FullType(String)));
    }
    if (object.badgeStyle != null) {
      result
        ..add('badge_style')
        ..add(serializers.serialize(object.badgeStyle,
            specifiedType: const FullType(TextAttributes)));
    }
    if (object.descButton != null) {
      result
        ..add('desc_button')
        ..add(serializers.serialize(object.descButton,
            specifiedType: const FullType(ButtonDescription)));
    }
    if (object.canPlay != null) {
      result
        ..add('can_play')
        ..add(serializers.serialize(object.canPlay,
            specifiedType: const FullType(int)));
    }
    if (object.officialIcon != null) {
      result
        ..add('official_icon')
        ..add(serializers.serialize(object.officialIcon,
            specifiedType: const FullType(int)));
    }
    if (object.rcmdReason != null) {
      result
        ..add('rcmd_reason')
        ..add(serializers.serialize(object.rcmdReason,
            specifiedType: const FullType(String)));
    }
    if (object.rcmdReasonStyle != null) {
      result
        ..add('rcmd_reason_style')
        ..add(serializers.serialize(object.rcmdReasonStyle,
            specifiedType: const FullType(TextAttributes)));
    }
    if (object.adInfo != null) {
      result
        ..add('ad_info')
        ..add(serializers.serialize(object.adInfo,
            specifiedType: const FullType(Advertisement)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Media deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_goto':
          result.cardGoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'goto':
          result.goto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'param':
          result.param = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'three_point':
          result.threePoint.replace(serializers.deserialize(value,
              specifiedType: const FullType(ThreePoint)) as ThreePoint);
          break;
        case 'args':
          result.args.replace(serializers.deserialize(value,
              specifiedType: const FullType(Argument)) as Argument);
          break;
        case 'player_args':
          result.playerArgs.replace(serializers.deserialize(value,
              specifiedType: const FullType(Argument)) as Argument);
          break;
        case 'idx':
          result.idx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'three_point_v2':
          result.threePointV2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ThreePointV2)]))
              as BuiltList<Object>);
          break;
        case 'cover_left_text_1':
          result.coverLeftText1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover_left_icon_1':
          result.coverLeftIcon1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cover_left_text_2':
          result.coverLeftText2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover_left_icon_2':
          result.coverLeftIcon2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cover_left_text_3':
          result.coverLeftText3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover_right_text':
          result.coverRightText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badge':
          if (value is String) {
            result.badgeString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          } else if (value is Map<String, dynamic>) {
            result.badge.replace(serializers.deserialize(value,
              specifiedType: const FullType(Badge)) as Badge);
          }
          break;
        case 'badge_style':
          result.badgeStyle.replace(serializers.deserialize(value,
              specifiedType: const FullType(TextAttributes)) as TextAttributes);
          break;
        case 'desc_button':
          result.descButton.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ButtonDescription))
              as ButtonDescription);
          break;
        case 'can_play':
          result.canPlay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'official_icon':
          result.officialIcon = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rcmd_reason':
          result.rcmdReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rcmd_reason_style':
          result.rcmdReasonStyle.replace(serializers.deserialize(value,
              specifiedType: const FullType(TextAttributes)) as TextAttributes);
          break;
        case 'ad_info':
          result.adInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(Advertisement)) as Advertisement);
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}
