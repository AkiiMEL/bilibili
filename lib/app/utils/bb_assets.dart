import 'dart:ui';

class Images {
  static const String _path = "assets/images/";
  static const String defaultAvatar = "${_path}ad_avator24x24.png";
  static const String placeholder = "${_path}default_img33x31.png";
  static const String channel = "${_path}new_channel_ic_other50x50.png";
  static const String rightArrow = "${_path}panel_arrow_right16x16.png";
  static const String exchange = "${_path}channel_icon_change_refresh16x16.png";
  static const String mineQR = "${_path}icon_mine_qr22x22.png";
  static const String mineSettings = "${_path}icon_mine_setting22x22.png";
  static const String mineTheme = "${_path}icon_mine_theme22x22.png";
  static const String mineUploadDraft = "${_path}mine_upload_draft16x16.png";
  static const String danmakuOffDisabled =
      "${_path}player_detail_danmaku_close_disable24x24.png";
  static const String danmakuOff =
      "${_path}player_detail_danmaku_close24x24.png";
  static const String danmakuOn = "${_path}player_detail_danmaku_open24x24.png";
  static String bigV(Brightness brightness) {
    return "${_path}mine_member${brightness == Brightness.light ? "" : "_night"}16x16.png";
  }

  static const String officialVerify =
      "${_path}live_Certification_official18x18.png";
  static const String vipTipClose = "${_path}vip_tip_close_ico22x22.png";
  static const String bangumiUnFollow = "${_path}icon_PgcHomeFollow_normal22x22.png";
  static const String bangumiFollowed = "${_path}icon_PgcHomeFollow_selected22x22.png";
  static const String thumbnailLiked = "${_path}pegasus_card_ic_liked16x16.png";
  static const String thumbnailUnLike = "${_path}pegasus_card_ic_like16x16.png";

  static const List<String> thumbnailOverlays = [
    "${_path}pegasus_card_ic_star16x16.png",
    "${_path}pegasus_card_ic_play16x16.png",
    "${_path}pegasus_card_ic_location16x16.png",
    "${_path}pegasus_card_ic_danmaku16x16.png",
    "${_path}pegasus_card_ic_follow16x16.png",
    "${_path}pegasus_card_ic_article16x16.png",
    "${_path}pegasus_card_ic_comment16x16.png",
    thumbnailUnLike,
    thumbnailLiked,
    "${_path}pegasus_card_ic_people16x16.png"
  ];

  static String themeMiscUserLevel(Brightness brightness, int lv) {
    int solvedLevel = lv == null ? 0 : 0 <= lv && lv <= 9 ? lv : 0;
    return "${_path}misc_level_${brightness == Brightness.dark ? "white" : "colorful"}Lv${solvedLevel}28x14.png";
  }

  static String sex(int input) {
    switch (input) {
      case 1:
        return "${_path}misc_sex_female13x13.png";
      case 2:
        return "${_path}misc_sex_male13x13.png";
      default:
        return "${_path}misc_sex_sox13x13.png";
    }
  }
}
