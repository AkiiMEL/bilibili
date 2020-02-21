// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Channel> _$channelSerializer = new _$ChannelSerializer();

class _$ChannelSerializer implements StructuredSerializer<Channel> {
  @override
  final Iterable<Type> types = const [Channel, _$Channel];
  @override
  final String wireName = 'Channel';

  @override
  Iterable<Object> serialize(Serializers serializers, Channel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.param != null) {
      result
        ..add('param')
        ..add(serializers.serialize(object.param,
            specifiedType: const FullType(String)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.sType != null) {
      result
        ..add('s_type')
        ..add(serializers.serialize(object.sType,
            specifiedType: const FullType(int)));
    }
    if (object.goto != null) {
      result
        ..add('goto')
        ..add(serializers.serialize(object.goto,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.background != null) {
      result
        ..add('background')
        ..add(serializers.serialize(object.background,
            specifiedType: const FullType(String)));
    }
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
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
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.coverLabel != null) {
      result
        ..add('cover_label')
        ..add(serializers.serialize(object.coverLabel,
            specifiedType: const FullType(String)));
    }
    if (object.coverLabel2 != null) {
      result
        ..add('cover_label2')
        ..add(serializers.serialize(object.coverLabel2,
            specifiedType: const FullType(String)));
    }
    if (object.alpha != null) {
      result
        ..add('alpha')
        ..add(serializers.serialize(object.alpha,
            specifiedType: const FullType(int)));
    }
    if (object.themeColor != null) {
      result
        ..add('theme_color')
        ..add(serializers.serialize(object.themeColor,
            specifiedType: const FullType(String)));
    }
    if (object.idx != null) {
      result
        ..add('idx')
        ..add(serializers.serialize(object.idx,
            specifiedType: const FullType(int)));
    }
    if (object.button != null) {
      result
        ..add('button')
        ..add(serializers.serialize(object.button,
            specifiedType: const FullType(ButtonDescription)));
    }
    if (object.officialVerify != null) {
      result
        ..add('official_verify')
        ..add(serializers.serialize(object.officialVerify,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.descButton != null) {
      result
        ..add('desc_button')
        ..add(serializers.serialize(object.descButton,
            specifiedType: const FullType(ButtonDescription)));
    }
    if (object.args != null) {
      result
        ..add('args')
        ..add(serializers.serialize(object.args,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(Object)])));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Media)])));
    }
    if (object.desc1 != null) {
      result
        ..add('desc_1')
        ..add(serializers.serialize(object.desc1,
            specifiedType: const FullType(String)));
    }
    if (object.descButton2 != null) {
      result
        ..add('desc_button_2')
        ..add(serializers.serialize(object.descButton2,
            specifiedType: const FullType(ButtonDescription)));
    }
    return result;
  }

  @override
  Channel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChannelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'param':
          result.param = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 's_type':
          result.sType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'goto':
          result.goto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_goto':
          result.cardGoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover_label':
          result.coverLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover_label2':
          result.coverLabel2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alpha':
          result.alpha = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'theme_color':
          result.themeColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idx':
          result.idx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'button':
          result.button.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ButtonDescription))
              as ButtonDescription);
          break;
        case 'official_verify':
          result.officialVerify = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc_button':
          result.descButton.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ButtonDescription))
              as ButtonDescription);
          break;
        case 'args':
          result.args.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Object)])));
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Media)]))
              as BuiltList<Object>);
          break;
        case 'desc_1':
          result.desc1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc_button_2':
          result.descButton2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ButtonDescription))
              as ButtonDescription);
          break;
      }
    }

    return result.build();
  }
}

class _$Channel extends Channel {
  @override
  final int id;
  @override
  final String param;
  @override
  final String uri;
  @override
  final int position;
  @override
  final int sType;
  @override
  final String goto;
  @override
  final String title;
  @override
  final String background;
  @override
  final String desc;
  @override
  final String cardType;
  @override
  final String cardGoto;
  @override
  final String cover;
  @override
  final String coverLabel;
  @override
  final String coverLabel2;
  @override
  final int alpha;
  @override
  final String themeColor;
  @override
  final int idx;
  @override
  final ButtonDescription button;
  @override
  final int officialVerify;
  @override
  final String name;
  @override
  final ButtonDescription descButton;
  @override
  final BuiltMap<String, Object> args;
  @override
  final BuiltList<Media> items;
  @override
  final String desc1;
  @override
  final ButtonDescription descButton2;

  factory _$Channel([void Function(ChannelBuilder) updates]) =>
      (new ChannelBuilder()..update(updates)).build();

  _$Channel._(
      {this.id,
      this.param,
      this.uri,
      this.position,
      this.sType,
      this.goto,
      this.title,
      this.background,
      this.desc,
      this.cardType,
      this.cardGoto,
      this.cover,
      this.coverLabel,
      this.coverLabel2,
      this.alpha,
      this.themeColor,
      this.idx,
      this.button,
      this.officialVerify,
      this.name,
      this.descButton,
      this.args,
      this.items,
      this.desc1,
      this.descButton2})
      : super._();

  @override
  Channel rebuild(void Function(ChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelBuilder toBuilder() => new ChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Channel &&
        id == other.id &&
        param == other.param &&
        uri == other.uri &&
        position == other.position &&
        sType == other.sType &&
        goto == other.goto &&
        title == other.title &&
        background == other.background &&
        desc == other.desc &&
        cardType == other.cardType &&
        cardGoto == other.cardGoto &&
        cover == other.cover &&
        coverLabel == other.coverLabel &&
        coverLabel2 == other.coverLabel2 &&
        alpha == other.alpha &&
        themeColor == other.themeColor &&
        idx == other.idx &&
        button == other.button &&
        officialVerify == other.officialVerify &&
        name == other.name &&
        descButton == other.descButton &&
        args == other.args &&
        items == other.items &&
        desc1 == other.desc1 &&
        descButton2 == other.descButton2;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), param.hashCode), uri.hashCode), position.hashCode), sType.hashCode), goto.hashCode),
                                                                                title.hashCode),
                                                                            background.hashCode),
                                                                        desc.hashCode),
                                                                    cardType.hashCode),
                                                                cardGoto.hashCode),
                                                            cover.hashCode),
                                                        coverLabel.hashCode),
                                                    coverLabel2.hashCode),
                                                alpha.hashCode),
                                            themeColor.hashCode),
                                        idx.hashCode),
                                    button.hashCode),
                                officialVerify.hashCode),
                            name.hashCode),
                        descButton.hashCode),
                    args.hashCode),
                items.hashCode),
            desc1.hashCode),
        descButton2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Channel')
          ..add('id', id)
          ..add('param', param)
          ..add('uri', uri)
          ..add('position', position)
          ..add('sType', sType)
          ..add('goto', goto)
          ..add('title', title)
          ..add('background', background)
          ..add('desc', desc)
          ..add('cardType', cardType)
          ..add('cardGoto', cardGoto)
          ..add('cover', cover)
          ..add('coverLabel', coverLabel)
          ..add('coverLabel2', coverLabel2)
          ..add('alpha', alpha)
          ..add('themeColor', themeColor)
          ..add('idx', idx)
          ..add('button', button)
          ..add('officialVerify', officialVerify)
          ..add('name', name)
          ..add('descButton', descButton)
          ..add('args', args)
          ..add('items', items)
          ..add('desc1', desc1)
          ..add('descButton2', descButton2))
        .toString();
  }
}

class ChannelBuilder implements Builder<Channel, ChannelBuilder> {
  _$Channel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _param;
  String get param => _$this._param;
  set param(String param) => _$this._param = param;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  int _sType;
  int get sType => _$this._sType;
  set sType(int sType) => _$this._sType = sType;

  String _goto;
  String get goto => _$this._goto;
  set goto(String goto) => _$this._goto = goto;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _background;
  String get background => _$this._background;
  set background(String background) => _$this._background = background;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  String _cardType;
  String get cardType => _$this._cardType;
  set cardType(String cardType) => _$this._cardType = cardType;

  String _cardGoto;
  String get cardGoto => _$this._cardGoto;
  set cardGoto(String cardGoto) => _$this._cardGoto = cardGoto;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  String _coverLabel;
  String get coverLabel => _$this._coverLabel;
  set coverLabel(String coverLabel) => _$this._coverLabel = coverLabel;

  String _coverLabel2;
  String get coverLabel2 => _$this._coverLabel2;
  set coverLabel2(String coverLabel2) => _$this._coverLabel2 = coverLabel2;

  int _alpha;
  int get alpha => _$this._alpha;
  set alpha(int alpha) => _$this._alpha = alpha;

  String _themeColor;
  String get themeColor => _$this._themeColor;
  set themeColor(String themeColor) => _$this._themeColor = themeColor;

  int _idx;
  int get idx => _$this._idx;
  set idx(int idx) => _$this._idx = idx;

  ButtonDescriptionBuilder _button;
  ButtonDescriptionBuilder get button =>
      _$this._button ??= new ButtonDescriptionBuilder();
  set button(ButtonDescriptionBuilder button) => _$this._button = button;

  int _officialVerify;
  int get officialVerify => _$this._officialVerify;
  set officialVerify(int officialVerify) =>
      _$this._officialVerify = officialVerify;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ButtonDescriptionBuilder _descButton;
  ButtonDescriptionBuilder get descButton =>
      _$this._descButton ??= new ButtonDescriptionBuilder();
  set descButton(ButtonDescriptionBuilder descButton) =>
      _$this._descButton = descButton;

  MapBuilder<String, Object> _args;
  MapBuilder<String, Object> get args =>
      _$this._args ??= new MapBuilder<String, Object>();
  set args(MapBuilder<String, Object> args) => _$this._args = args;

  ListBuilder<Media> _items;
  ListBuilder<Media> get items => _$this._items ??= new ListBuilder<Media>();
  set items(ListBuilder<Media> items) => _$this._items = items;

  String _desc1;
  String get desc1 => _$this._desc1;
  set desc1(String desc1) => _$this._desc1 = desc1;

  ButtonDescriptionBuilder _descButton2;
  ButtonDescriptionBuilder get descButton2 =>
      _$this._descButton2 ??= new ButtonDescriptionBuilder();
  set descButton2(ButtonDescriptionBuilder descButton2) =>
      _$this._descButton2 = descButton2;

  ChannelBuilder();

  ChannelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _param = _$v.param;
      _uri = _$v.uri;
      _position = _$v.position;
      _sType = _$v.sType;
      _goto = _$v.goto;
      _title = _$v.title;
      _background = _$v.background;
      _desc = _$v.desc;
      _cardType = _$v.cardType;
      _cardGoto = _$v.cardGoto;
      _cover = _$v.cover;
      _coverLabel = _$v.coverLabel;
      _coverLabel2 = _$v.coverLabel2;
      _alpha = _$v.alpha;
      _themeColor = _$v.themeColor;
      _idx = _$v.idx;
      _button = _$v.button?.toBuilder();
      _officialVerify = _$v.officialVerify;
      _name = _$v.name;
      _descButton = _$v.descButton?.toBuilder();
      _args = _$v.args?.toBuilder();
      _items = _$v.items?.toBuilder();
      _desc1 = _$v.desc1;
      _descButton2 = _$v.descButton2?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Channel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Channel;
  }

  @override
  void update(void Function(ChannelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Channel build() {
    _$Channel _$result;
    try {
      _$result = _$v ??
          new _$Channel._(
              id: id,
              param: param,
              uri: uri,
              position: position,
              sType: sType,
              goto: goto,
              title: title,
              background: background,
              desc: desc,
              cardType: cardType,
              cardGoto: cardGoto,
              cover: cover,
              coverLabel: coverLabel,
              coverLabel2: coverLabel2,
              alpha: alpha,
              themeColor: themeColor,
              idx: idx,
              button: _button?.build(),
              officialVerify: officialVerify,
              name: name,
              descButton: _descButton?.build(),
              args: _args?.build(),
              items: _items?.build(),
              desc1: desc1,
              descButton2: _descButton2?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'button';
        _button?.build();

        _$failedField = 'descButton';
        _descButton?.build();
        _$failedField = 'args';
        _args?.build();
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'descButton2';
        _descButton2?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Channel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
