// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Card> _$cardSerializer = new _$CardSerializer();

class _$CardSerializer implements StructuredSerializer<Card> {
  @override
  final Iterable<Type> types = const [Card, _$Card];
  @override
  final String wireName = 'Card';

  @override
  Iterable<Object> serialize(Serializers serializers, Card object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cardType != null) {
      result
        ..add('card_type')
        ..add(serializers.serialize(object.cardType,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.covers != null) {
      result
        ..add('covers')
        ..add(serializers.serialize(object.covers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Cover)])));
    }
    if (object.jumpUrl != null) {
      result
        ..add('jump_url')
        ..add(serializers.serialize(object.jumpUrl,
            specifiedType: const FullType(String)));
    }
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
    if (object.callupUrl != null) {
      result
        ..add('callup_url')
        ..add(serializers.serialize(object.callupUrl,
            specifiedType: const FullType(String)));
    }
    if (object.longDesc != null) {
      result
        ..add('long_desc')
        ..add(serializers.serialize(object.longDesc,
            specifiedType: const FullType(String)));
    }
    if (object.adTag != null) {
      result
        ..add('ad_tag')
        ..add(serializers.serialize(object.adTag,
            specifiedType: const FullType(String)));
    }
    if (object.extraDesc != null) {
      result
        ..add('extra_desc')
        ..add(serializers.serialize(object.extraDesc,
            specifiedType: const FullType(String)));
    }
    if (object.adTagStyle != null) {
      result
        ..add('ad_tag_style')
        ..add(serializers.serialize(object.adTagStyle,
            specifiedType: const FullType(AdTagStyle)));
    }
    if (object.feedbackPanel != null) {
      result
        ..add('feedback_panel')
        ..add(serializers.serialize(object.feedbackPanel,
            specifiedType: const FullType(FeedbackPanel)));
    }
    return result;
  }

  @override
  Card deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'covers':
          result.covers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cover)]))
              as BuiltList<Object>);
          break;
        case 'jump_url':
          result.jumpUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'callup_url':
          result.callupUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'long_desc':
          result.longDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ad_tag':
          result.adTag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extra_desc':
          result.extraDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ad_tag_style':
          result.adTagStyle.replace(serializers.deserialize(value,
              specifiedType: const FullType(AdTagStyle)) as AdTagStyle);
          break;
        case 'feedback_panel':
          result.feedbackPanel.replace(serializers.deserialize(value,
              specifiedType: const FullType(FeedbackPanel)) as FeedbackPanel);
          break;
      }
    }

    return result.build();
  }
}

class _$Card extends Card {
  @override
  final int cardType;
  @override
  final String title;
  @override
  final BuiltList<Cover> covers;
  @override
  final String jumpUrl;
  @override
  final String desc;
  @override
  final String callupUrl;
  @override
  final String longDesc;
  @override
  final String adTag;
  @override
  final String extraDesc;
  @override
  final AdTagStyle adTagStyle;
  @override
  final FeedbackPanel feedbackPanel;

  factory _$Card([void Function(CardBuilder) updates]) =>
      (new CardBuilder()..update(updates)).build();

  _$Card._(
      {this.cardType,
      this.title,
      this.covers,
      this.jumpUrl,
      this.desc,
      this.callupUrl,
      this.longDesc,
      this.adTag,
      this.extraDesc,
      this.adTagStyle,
      this.feedbackPanel})
      : super._();

  @override
  Card rebuild(void Function(CardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardBuilder toBuilder() => new CardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Card &&
        cardType == other.cardType &&
        title == other.title &&
        covers == other.covers &&
        jumpUrl == other.jumpUrl &&
        desc == other.desc &&
        callupUrl == other.callupUrl &&
        longDesc == other.longDesc &&
        adTag == other.adTag &&
        extraDesc == other.extraDesc &&
        adTagStyle == other.adTagStyle &&
        feedbackPanel == other.feedbackPanel;
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
                                        $jc($jc(0, cardType.hashCode),
                                            title.hashCode),
                                        covers.hashCode),
                                    jumpUrl.hashCode),
                                desc.hashCode),
                            callupUrl.hashCode),
                        longDesc.hashCode),
                    adTag.hashCode),
                extraDesc.hashCode),
            adTagStyle.hashCode),
        feedbackPanel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Card')
          ..add('cardType', cardType)
          ..add('title', title)
          ..add('covers', covers)
          ..add('jumpUrl', jumpUrl)
          ..add('desc', desc)
          ..add('callupUrl', callupUrl)
          ..add('longDesc', longDesc)
          ..add('adTag', adTag)
          ..add('extraDesc', extraDesc)
          ..add('adTagStyle', adTagStyle)
          ..add('feedbackPanel', feedbackPanel))
        .toString();
  }
}

class CardBuilder implements Builder<Card, CardBuilder> {
  _$Card _$v;

  int _cardType;
  int get cardType => _$this._cardType;
  set cardType(int cardType) => _$this._cardType = cardType;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<Cover> _covers;
  ListBuilder<Cover> get covers => _$this._covers ??= new ListBuilder<Cover>();
  set covers(ListBuilder<Cover> covers) => _$this._covers = covers;

  String _jumpUrl;
  String get jumpUrl => _$this._jumpUrl;
  set jumpUrl(String jumpUrl) => _$this._jumpUrl = jumpUrl;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  String _callupUrl;
  String get callupUrl => _$this._callupUrl;
  set callupUrl(String callupUrl) => _$this._callupUrl = callupUrl;

  String _longDesc;
  String get longDesc => _$this._longDesc;
  set longDesc(String longDesc) => _$this._longDesc = longDesc;

  String _adTag;
  String get adTag => _$this._adTag;
  set adTag(String adTag) => _$this._adTag = adTag;

  String _extraDesc;
  String get extraDesc => _$this._extraDesc;
  set extraDesc(String extraDesc) => _$this._extraDesc = extraDesc;

  AdTagStyleBuilder _adTagStyle;
  AdTagStyleBuilder get adTagStyle =>
      _$this._adTagStyle ??= new AdTagStyleBuilder();
  set adTagStyle(AdTagStyleBuilder adTagStyle) =>
      _$this._adTagStyle = adTagStyle;

  FeedbackPanelBuilder _feedbackPanel;
  FeedbackPanelBuilder get feedbackPanel =>
      _$this._feedbackPanel ??= new FeedbackPanelBuilder();
  set feedbackPanel(FeedbackPanelBuilder feedbackPanel) =>
      _$this._feedbackPanel = feedbackPanel;

  CardBuilder();

  CardBuilder get _$this {
    if (_$v != null) {
      _cardType = _$v.cardType;
      _title = _$v.title;
      _covers = _$v.covers?.toBuilder();
      _jumpUrl = _$v.jumpUrl;
      _desc = _$v.desc;
      _callupUrl = _$v.callupUrl;
      _longDesc = _$v.longDesc;
      _adTag = _$v.adTag;
      _extraDesc = _$v.extraDesc;
      _adTagStyle = _$v.adTagStyle?.toBuilder();
      _feedbackPanel = _$v.feedbackPanel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Card other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Card;
  }

  @override
  void update(void Function(CardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Card build() {
    _$Card _$result;
    try {
      _$result = _$v ??
          new _$Card._(
              cardType: cardType,
              title: title,
              covers: _covers?.build(),
              jumpUrl: jumpUrl,
              desc: desc,
              callupUrl: callupUrl,
              longDesc: longDesc,
              adTag: adTag,
              extraDesc: extraDesc,
              adTagStyle: _adTagStyle?.build(),
              feedbackPanel: _feedbackPanel?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'covers';
        _covers?.build();

        _$failedField = 'adTagStyle';
        _adTagStyle?.build();
        _$failedField = 'feedbackPanel';
        _feedbackPanel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Card', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
