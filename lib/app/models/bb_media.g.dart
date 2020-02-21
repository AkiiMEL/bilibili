// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Media extends Media {
  @override
  final String cardType;
  @override
  final String cardGoto;
  @override
  final String goto;
  @override
  final String param;
  @override
  final String cover;
  @override
  final String title;
  @override
  final String uri;
  @override
  final ThreePoint threePoint;
  @override
  final Argument args;
  @override
  final Argument playerArgs;
  @override
  final int idx;
  @override
  final BuiltList<ThreePointV2> threePointV2;
  @override
  final String coverLeftText1;
  @override
  final int coverLeftIcon1;
  @override
  final String coverLeftText2;
  @override
  final int coverLeftIcon2;
  @override
  final String coverLeftText3;
  @override
  final String coverRightText;
  @override
  final Badge badge;
  @override
  final String badgeString;
  @override
  final TextAttributes badgeStyle;
  @override
  final ButtonDescription descButton;
  @override
  final int canPlay;
  @override
  final int officialIcon;
  @override
  final String rcmdReason;
  @override
  final TextAttributes rcmdReasonStyle;
  @override
  final Advertisement adInfo;
  @override
  final int position;

  factory _$Media([void Function(MediaBuilder) updates]) =>
      (new MediaBuilder()..update(updates)).build();

  _$Media._(
      {this.cardType,
      this.cardGoto,
      this.goto,
      this.param,
      this.cover,
      this.title,
      this.uri,
      this.threePoint,
      this.args,
      this.playerArgs,
      this.idx,
      this.threePointV2,
      this.coverLeftText1,
      this.coverLeftIcon1,
      this.coverLeftText2,
      this.coverLeftIcon2,
      this.coverLeftText3,
      this.coverRightText,
      this.badge,
      this.badgeString,
      this.badgeStyle,
      this.descButton,
      this.canPlay,
      this.officialIcon,
      this.rcmdReason,
      this.rcmdReasonStyle,
      this.adInfo,
      this.position})
      : super._();

  @override
  Media rebuild(void Function(MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaBuilder toBuilder() => new MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
        cardType == other.cardType &&
        cardGoto == other.cardGoto &&
        goto == other.goto &&
        param == other.param &&
        cover == other.cover &&
        title == other.title &&
        uri == other.uri &&
        threePoint == other.threePoint &&
        args == other.args &&
        playerArgs == other.playerArgs &&
        idx == other.idx &&
        threePointV2 == other.threePointV2 &&
        coverLeftText1 == other.coverLeftText1 &&
        coverLeftIcon1 == other.coverLeftIcon1 &&
        coverLeftText2 == other.coverLeftText2 &&
        coverLeftIcon2 == other.coverLeftIcon2 &&
        coverLeftText3 == other.coverLeftText3 &&
        coverRightText == other.coverRightText &&
        badge == other.badge &&
        badgeString == other.badgeString &&
        badgeStyle == other.badgeStyle &&
        descButton == other.descButton &&
        canPlay == other.canPlay &&
        officialIcon == other.officialIcon &&
        rcmdReason == other.rcmdReason &&
        rcmdReasonStyle == other.rcmdReasonStyle &&
        adInfo == other.adInfo &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, cardType.hashCode), cardGoto.hashCode), goto.hashCode), param.hashCode), cover.hashCode), title.hashCode), uri.hashCode), threePoint.hashCode), args.hashCode),
                                                                                playerArgs.hashCode),
                                                                            idx.hashCode),
                                                                        threePointV2.hashCode),
                                                                    coverLeftText1.hashCode),
                                                                coverLeftIcon1.hashCode),
                                                            coverLeftText2.hashCode),
                                                        coverLeftIcon2.hashCode),
                                                    coverLeftText3.hashCode),
                                                coverRightText.hashCode),
                                            badge.hashCode),
                                        badgeString.hashCode),
                                    badgeStyle.hashCode),
                                descButton.hashCode),
                            canPlay.hashCode),
                        officialIcon.hashCode),
                    rcmdReason.hashCode),
                rcmdReasonStyle.hashCode),
            adInfo.hashCode),
        position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Media')
          ..add('cardType', cardType)
          ..add('cardGoto', cardGoto)
          ..add('goto', goto)
          ..add('param', param)
          ..add('cover', cover)
          ..add('title', title)
          ..add('uri', uri)
          ..add('threePoint', threePoint)
          ..add('args', args)
          ..add('playerArgs', playerArgs)
          ..add('idx', idx)
          ..add('threePointV2', threePointV2)
          ..add('coverLeftText1', coverLeftText1)
          ..add('coverLeftIcon1', coverLeftIcon1)
          ..add('coverLeftText2', coverLeftText2)
          ..add('coverLeftIcon2', coverLeftIcon2)
          ..add('coverLeftText3', coverLeftText3)
          ..add('coverRightText', coverRightText)
          ..add('badge', badge)
          ..add('badgeString', badgeString)
          ..add('badgeStyle', badgeStyle)
          ..add('descButton', descButton)
          ..add('canPlay', canPlay)
          ..add('officialIcon', officialIcon)
          ..add('rcmdReason', rcmdReason)
          ..add('rcmdReasonStyle', rcmdReasonStyle)
          ..add('adInfo', adInfo)
          ..add('position', position))
        .toString();
  }
}

class MediaBuilder implements Builder<Media, MediaBuilder> {
  _$Media _$v;

  String _cardType;
  String get cardType => _$this._cardType;
  set cardType(String cardType) => _$this._cardType = cardType;

  String _cardGoto;
  String get cardGoto => _$this._cardGoto;
  set cardGoto(String cardGoto) => _$this._cardGoto = cardGoto;

  String _goto;
  String get goto => _$this._goto;
  set goto(String goto) => _$this._goto = goto;

  String _param;
  String get param => _$this._param;
  set param(String param) => _$this._param = param;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  ThreePointBuilder _threePoint;
  ThreePointBuilder get threePoint =>
      _$this._threePoint ??= new ThreePointBuilder();
  set threePoint(ThreePointBuilder threePoint) =>
      _$this._threePoint = threePoint;

  ArgumentBuilder _args;
  ArgumentBuilder get args => _$this._args ??= new ArgumentBuilder();
  set args(ArgumentBuilder args) => _$this._args = args;

  ArgumentBuilder _playerArgs;
  ArgumentBuilder get playerArgs =>
      _$this._playerArgs ??= new ArgumentBuilder();
  set playerArgs(ArgumentBuilder playerArgs) => _$this._playerArgs = playerArgs;

  int _idx;
  int get idx => _$this._idx;
  set idx(int idx) => _$this._idx = idx;

  ListBuilder<ThreePointV2> _threePointV2;
  ListBuilder<ThreePointV2> get threePointV2 =>
      _$this._threePointV2 ??= new ListBuilder<ThreePointV2>();
  set threePointV2(ListBuilder<ThreePointV2> threePointV2) =>
      _$this._threePointV2 = threePointV2;

  String _coverLeftText1;
  String get coverLeftText1 => _$this._coverLeftText1;
  set coverLeftText1(String coverLeftText1) =>
      _$this._coverLeftText1 = coverLeftText1;

  int _coverLeftIcon1;
  int get coverLeftIcon1 => _$this._coverLeftIcon1;
  set coverLeftIcon1(int coverLeftIcon1) =>
      _$this._coverLeftIcon1 = coverLeftIcon1;

  String _coverLeftText2;
  String get coverLeftText2 => _$this._coverLeftText2;
  set coverLeftText2(String coverLeftText2) =>
      _$this._coverLeftText2 = coverLeftText2;

  int _coverLeftIcon2;
  int get coverLeftIcon2 => _$this._coverLeftIcon2;
  set coverLeftIcon2(int coverLeftIcon2) =>
      _$this._coverLeftIcon2 = coverLeftIcon2;

  String _coverLeftText3;
  String get coverLeftText3 => _$this._coverLeftText3;
  set coverLeftText3(String coverLeftText3) =>
      _$this._coverLeftText3 = coverLeftText3;

  String _coverRightText;
  String get coverRightText => _$this._coverRightText;
  set coverRightText(String coverRightText) =>
      _$this._coverRightText = coverRightText;

  BadgeBuilder _badge;
  BadgeBuilder get badge => _$this._badge ??= new BadgeBuilder();
  set badge(BadgeBuilder badge) => _$this._badge = badge;

  String _badgeString;
  String get badgeString => _$this._badgeString;
  set badgeString(String badgeString) => _$this._badgeString = badgeString;

  TextAttributesBuilder _badgeStyle;
  TextAttributesBuilder get badgeStyle =>
      _$this._badgeStyle ??= new TextAttributesBuilder();
  set badgeStyle(TextAttributesBuilder badgeStyle) =>
      _$this._badgeStyle = badgeStyle;

  ButtonDescriptionBuilder _descButton;
  ButtonDescriptionBuilder get descButton =>
      _$this._descButton ??= new ButtonDescriptionBuilder();
  set descButton(ButtonDescriptionBuilder descButton) =>
      _$this._descButton = descButton;

  int _canPlay;
  int get canPlay => _$this._canPlay;
  set canPlay(int canPlay) => _$this._canPlay = canPlay;

  int _officialIcon;
  int get officialIcon => _$this._officialIcon;
  set officialIcon(int officialIcon) => _$this._officialIcon = officialIcon;

  String _rcmdReason;
  String get rcmdReason => _$this._rcmdReason;
  set rcmdReason(String rcmdReason) => _$this._rcmdReason = rcmdReason;

  TextAttributesBuilder _rcmdReasonStyle;
  TextAttributesBuilder get rcmdReasonStyle =>
      _$this._rcmdReasonStyle ??= new TextAttributesBuilder();
  set rcmdReasonStyle(TextAttributesBuilder rcmdReasonStyle) =>
      _$this._rcmdReasonStyle = rcmdReasonStyle;

  AdvertisementBuilder _adInfo;
  AdvertisementBuilder get adInfo =>
      _$this._adInfo ??= new AdvertisementBuilder();
  set adInfo(AdvertisementBuilder adInfo) => _$this._adInfo = adInfo;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  MediaBuilder();

  MediaBuilder get _$this {
    if (_$v != null) {
      _cardType = _$v.cardType;
      _cardGoto = _$v.cardGoto;
      _goto = _$v.goto;
      _param = _$v.param;
      _cover = _$v.cover;
      _title = _$v.title;
      _uri = _$v.uri;
      _threePoint = _$v.threePoint?.toBuilder();
      _args = _$v.args?.toBuilder();
      _playerArgs = _$v.playerArgs?.toBuilder();
      _idx = _$v.idx;
      _threePointV2 = _$v.threePointV2?.toBuilder();
      _coverLeftText1 = _$v.coverLeftText1;
      _coverLeftIcon1 = _$v.coverLeftIcon1;
      _coverLeftText2 = _$v.coverLeftText2;
      _coverLeftIcon2 = _$v.coverLeftIcon2;
      _coverLeftText3 = _$v.coverLeftText3;
      _coverRightText = _$v.coverRightText;
      _badge = _$v.badge?.toBuilder();
      _badgeString = _$v.badgeString;
      _badgeStyle = _$v.badgeStyle?.toBuilder();
      _descButton = _$v.descButton?.toBuilder();
      _canPlay = _$v.canPlay;
      _officialIcon = _$v.officialIcon;
      _rcmdReason = _$v.rcmdReason;
      _rcmdReasonStyle = _$v.rcmdReasonStyle?.toBuilder();
      _adInfo = _$v.adInfo?.toBuilder();
      _position = _$v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Media other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Media;
  }

  @override
  void update(void Function(MediaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Media build() {
    _$Media _$result;
    try {
      _$result = _$v ??
          new _$Media._(
              cardType: cardType,
              cardGoto: cardGoto,
              goto: goto,
              param: param,
              cover: cover,
              title: title,
              uri: uri,
              threePoint: _threePoint?.build(),
              args: _args?.build(),
              playerArgs: _playerArgs?.build(),
              idx: idx,
              threePointV2: _threePointV2?.build(),
              coverLeftText1: coverLeftText1,
              coverLeftIcon1: coverLeftIcon1,
              coverLeftText2: coverLeftText2,
              coverLeftIcon2: coverLeftIcon2,
              coverLeftText3: coverLeftText3,
              coverRightText: coverRightText,
              badge: _badge?.build(),
              badgeString: badgeString,
              badgeStyle: _badgeStyle?.build(),
              descButton: _descButton?.build(),
              canPlay: canPlay,
              officialIcon: officialIcon,
              rcmdReason: rcmdReason,
              rcmdReasonStyle: _rcmdReasonStyle?.build(),
              adInfo: _adInfo?.build(),
              position: position);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'threePoint';
        _threePoint?.build();
        _$failedField = 'args';
        _args?.build();
        _$failedField = 'playerArgs';
        _playerArgs?.build();

        _$failedField = 'threePointV2';
        _threePointV2?.build();

        _$failedField = 'badge';
        _badge?.build();

        _$failedField = 'badgeStyle';
        _badgeStyle?.build();
        _$failedField = 'descButton';
        _descButton?.build();

        _$failedField = 'rcmdReasonStyle';
        _rcmdReasonStyle?.build();
        _$failedField = 'adInfo';
        _adInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
