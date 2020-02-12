// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_channel_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelHomeHttpBody _$ChannelHomeHttpBodyFromJson(Map<String, dynamic> json) {
  return ChannelHomeHttpBody(
    code: json['code'] as int,
    message: json['message'] as String,
    ttl: json['ttl'] as int,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ChannelGroup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChannelHomeHttpBodyToJson(
        ChannelHomeHttpBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return Channel(
    id: json['id'] as int,
    param: json['param'] as String,
    uri: json['uri'] as String,
    position: json['position'] as int,
    sType: json['s_type'] as int,
    goto: json['goto'] as String,
    title: json['title'] as String,
    background: json['background'] as String,
    desc: json['desc'] as String,
    cardType: json['card_type'] as String,
    cardGoto: json['card_goto'] as String,
    cover: json['cover'] as String,
    alpha: json['alpha'] as int,
    themeColor: json['theme_color'] as String,
    idx: json['idx'] as int,
    button: json['button'] == null
        ? null
        : ButtonDescription.fromJson(json['button'] as Map<String, dynamic>),
    officialVerify: json['official_verify'] as int,
    name: json['name'] as String,
    descButton: json['desc_button'] == null
        ? null
        : ButtonDescription.fromJson(
            json['desc_button'] as Map<String, dynamic>),
    args: json['args'] as Map<String, dynamic>,
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : MediaCard.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    desc1: json['desc_1'] as String,
    descButton2: json['desc_button_2'] == null
        ? null
        : ButtonDescription.fromJson(
            json['desc_button_2'] as Map<String, dynamic>),
  )
    ..coverLabel = json['cover_label'] as String
    ..coverLabel2 = json['cover_label2'] as String;
}

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'id': instance.id,
      'param': instance.param,
      'uri': instance.uri,
      'position': instance.position,
      's_type': instance.sType,
      'goto': instance.goto,
      'title': instance.title,
      'background': instance.background,
      'desc': instance.desc,
      'card_type': instance.cardType,
      'card_goto': instance.cardGoto,
      'cover': instance.cover,
      'cover_label': instance.coverLabel,
      'cover_label2': instance.coverLabel2,
      'alpha': instance.alpha,
      'theme_color': instance.themeColor,
      'idx': instance.idx,
      'button': instance.button,
      'official_verify': instance.officialVerify,
      'name': instance.name,
      'desc_button': instance.descButton,
      'args': instance.args,
      'items': instance.items,
      'desc_1': instance.desc1,
      'desc_button_2': instance.descButton2,
    };

ButtonDescription _$ButtonDescriptionFromJson(Map<String, dynamic> json) {
  return ButtonDescription(
    uri: json['uri'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ButtonDescriptionToJson(ButtonDescription instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'text': instance.text,
    };

MediaCard _$MediaCardFromJson(Map<String, dynamic> json) {
  return MediaCard(
    coverLeftIcon2: json['cover_left_icon_2'] as int,
    param: json['param'] as String,
    coverLeftText1: json['cover_left_text_1'] as String,
    coverLeftIcon1: json['cover_left_icon_1'] as int,
    position: json['position'] as int,
    badge: json['badge'] == null
        ? null
        : MediaCardBadge.fromJson(json['badge'] as Map<String, dynamic>),
    goto: json['goto'] as String,
    title: json['title'] as String,
    cover: json['cover'] as String,
    coverRightText1: json['cover_left_text_3'] as String,
    coverLeftText2: json['cover_left_text_2'] as String,
    uri: json['uri'] as String,
  );
}

Map<String, dynamic> _$MediaCardToJson(MediaCard instance) => <String, dynamic>{
      'cover_left_icon_2': instance.coverLeftIcon2,
      'param': instance.param,
      'cover_left_text_1': instance.coverLeftText1,
      'cover_left_icon_1': instance.coverLeftIcon1,
      'position': instance.position,
      'badge': instance.badge,
      'goto': instance.goto,
      'title': instance.title,
      'cover': instance.cover,
      'cover_left_text_3': instance.coverRightText1,
      'cover_left_text_2': instance.coverLeftText2,
      'uri': instance.uri,
    };

MediaCardBadge _$MediaCardBadgeFromJson(Map<String, dynamic> json) {
  return MediaCardBadge(
    text: json['text'] as String,
    iconBgUrl: json['icon_bg_url'] as String,
  );
}

Map<String, dynamic> _$MediaCardBadgeToJson(MediaCardBadge instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon_bg_url': instance.iconBgUrl,
    };
