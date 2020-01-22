import 'package:json_annotation/json_annotation.dart';

part 'bb_tab_models.g.dart';

@JsonSerializable()
class BBTabHttpBody extends Object {
  int code;
  String message;
  BBTabConf config;
  BBTabBody data;

  BBTabHttpBody({this.code, this.message, this.data});

  factory BBTabHttpBody.fromJson(Map<String, dynamic> srcJson) =>
      _$BBTabHttpBodyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BBTabHttpBodyToJson(this);
}

@JsonSerializable()
class BBTabConf extends Object {
  @JsonKey(name: "no_login_avatar_type")
  int noLoginAvatarType;

  @JsonKey(name: "popup_style")
  int popupStyle;

  @JsonKey(name: "no_login_avatar")
  String noLoginAvatar;

  BBTabConf({this.noLoginAvatarType, this.popupStyle, this.noLoginAvatar});

  factory BBTabConf.fromJson(Map<String, dynamic> srcJson) =>
      _$BBTabConfFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BBTabConfToJson(this);
}

@JsonSerializable()
class BBTabBody extends Object {
  List<BBTabBarItem> bottom;
  List<BBTabBarItem> tab;
  List<BBTabBarItem> top;

  BBTabBody({this.bottom, this.tab, this.top});

  factory BBTabBody.fromJson(Map<String, dynamic> srcJson) =>
      _$BBTabBodyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BBTabBodyToJson(this);
}

@JsonSerializable()
class BBTabBarItem extends Object {
  int id;
  String name;
  String uri;
  @JsonKey(name: "tab_id")
  String tabId;
  int pos;
  @JsonKey(name: "icon")
  String image;
  @JsonKey(name: "icon_selected")
  String selectedImage;
  @JsonKey(name: "default_selected")
  int selected;
  @JsonKey(name: "extension")
  BBTabBarItemExtension ext;

  BBTabBarItem(
      {this.id,
      this.name,
      this.uri,
      this.tabId,
      this.pos,
      this.selected,
      this.ext});

  factory BBTabBarItem.fromJson(Map<String, dynamic> srcJson) =>
      _$BBTabBarItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BBTabBarItemToJson(this);
}

@JsonSerializable()
class BBTabBarItemExtension extends Object {
  @JsonKey(name: "inactive_icon")
  String inactiveIcon;

  @JsonKey(name: "active_icon")
  String activeIcon;

  BBTabBarItemExtension({this.inactiveIcon, this.activeIcon});

  factory BBTabBarItemExtension.fromJson(Map<String, dynamic> srcJson) =>
      _$BBTabBarItemExtensionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BBTabBarItemExtensionToJson(this);
}
