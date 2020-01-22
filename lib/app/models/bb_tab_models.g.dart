// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_tab_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BBTabHttpBody _$BBTabHttpBodyFromJson(Map<String, dynamic> json) {
  return BBTabHttpBody(
    code: json['code'] as int,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : BBTabBody.fromJson(json['data'] as Map<String, dynamic>),
  )..config = json['config'] == null
      ? null
      : BBTabConf.fromJson(json['config'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BBTabHttpBodyToJson(BBTabHttpBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'config': instance.config,
      'data': instance.data,
    };

BBTabConf _$BBTabConfFromJson(Map<String, dynamic> json) {
  return BBTabConf(
    noLoginAvatarType: json['no_login_avatar_type'] as int,
    popupStyle: json['popup_style'] as int,
    noLoginAvatar: json['no_login_avatar'] as String,
  );
}

Map<String, dynamic> _$BBTabConfToJson(BBTabConf instance) => <String, dynamic>{
      'no_login_avatar_type': instance.noLoginAvatarType,
      'popup_style': instance.popupStyle,
      'no_login_avatar': instance.noLoginAvatar,
    };

BBTabBody _$BBTabBodyFromJson(Map<String, dynamic> json) {
  return BBTabBody(
    bottom: (json['bottom'] as List)
        ?.map((e) =>
            e == null ? null : BBTabBarItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tab: (json['tab'] as List)
        ?.map((e) =>
            e == null ? null : BBTabBarItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    top: (json['top'] as List)
        ?.map((e) =>
            e == null ? null : BBTabBarItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BBTabBodyToJson(BBTabBody instance) => <String, dynamic>{
      'bottom': instance.bottom,
      'tab': instance.tab,
      'top': instance.top,
    };

BBTabBarItem _$BBTabBarItemFromJson(Map<String, dynamic> json) {
  return BBTabBarItem(
    id: json['id'] as int,
    name: json['name'] as String,
    uri: json['uri'] as String,
    tabId: json['tab_id'] as String,
    pos: json['pos'] as int,
    selected: json['default_selected'] as int,
    ext: json['extension'] == null
        ? null
        : BBTabBarItemExtension.fromJson(
            json['extension'] as Map<String, dynamic>),
  )
    ..image = json['icon'] as String
    ..selectedImage = json['icon_selected'] as String;
}

Map<String, dynamic> _$BBTabBarItemToJson(BBTabBarItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uri': instance.uri,
      'tab_id': instance.tabId,
      'pos': instance.pos,
      'icon': instance.image,
      'icon_selected': instance.selectedImage,
      'default_selected': instance.selected,
      'extension': instance.ext,
    };

BBTabBarItemExtension _$BBTabBarItemExtensionFromJson(
    Map<String, dynamic> json) {
  return BBTabBarItemExtension(
    inactiveIcon: json['inactive_icon'] as String,
    activeIcon: json['active_icon'] as String,
  );
}

Map<String, dynamic> _$BBTabBarItemExtensionToJson(
        BBTabBarItemExtension instance) =>
    <String, dynamic>{
      'inactive_icon': instance.inactiveIcon,
      'active_icon': instance.activeIcon,
    };
