// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_advertisement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Advertisement> _$advertisementSerializer =
    new _$AdvertisementSerializer();

class _$AdvertisementSerializer implements StructuredSerializer<Advertisement> {
  @override
  final Iterable<Type> types = const [Advertisement, _$Advertisement];
  @override
  final String wireName = 'Advertisement';

  @override
  Iterable<Object> serialize(Serializers serializers, Advertisement object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.creativeId != null) {
      result
        ..add('creative_id')
        ..add(serializers.serialize(object.creativeId,
            specifiedType: const FullType(int)));
    }
    if (object.creativeType != null) {
      result
        ..add('creative_type')
        ..add(serializers.serialize(object.creativeType,
            specifiedType: const FullType(int)));
    }
    if (object.cardType != null) {
      result
        ..add('card_type')
        ..add(serializers.serialize(object.cardType,
            specifiedType: const FullType(int)));
    }
    if (object.creativeContent != null) {
      result
        ..add('creative_content')
        ..add(serializers.serialize(object.creativeContent,
            specifiedType: const FullType(AdvertisementCreativeContent)));
    }
    if (object.adCb != null) {
      result
        ..add('ad_cb')
        ..add(serializers.serialize(object.adCb,
            specifiedType: const FullType(String)));
    }
    if (object.resource != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(object.resource,
            specifiedType: const FullType(int)));
    }
    if (object.source != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(int)));
    }
    if (object.requestId != null) {
      result
        ..add('request_id')
        ..add(serializers.serialize(object.requestId,
            specifiedType: const FullType(String)));
    }
    if (object.isAd != null) {
      result
        ..add('is_ad')
        ..add(serializers.serialize(object.isAd,
            specifiedType: const FullType(bool)));
    }
    if (object.cmMark != null) {
      result
        ..add('cm_mark')
        ..add(serializers.serialize(object.cmMark,
            specifiedType: const FullType(int)));
    }
    if (object.index != null) {
      result
        ..add('index')
        ..add(serializers.serialize(object.index,
            specifiedType: const FullType(int)));
    }
    if (object.isAdLoc != null) {
      result
        ..add('is_ad_loc')
        ..add(serializers.serialize(object.isAdLoc,
            specifiedType: const FullType(bool)));
    }
    if (object.cardIndex != null) {
      result
        ..add('card_index')
        ..add(serializers.serialize(object.cardIndex,
            specifiedType: const FullType(int)));
    }
    if (object.clientIp != null) {
      result
        ..add('client_ip')
        ..add(serializers.serialize(object.clientIp,
            specifiedType: const FullType(String)));
    }
    if (object.extra != null) {
      result
        ..add('extra')
        ..add(serializers.serialize(object.extra,
            specifiedType: const FullType(Extra)));
    }
    if (object.creativeStyle != null) {
      result
        ..add('creative_style')
        ..add(serializers.serialize(object.creativeStyle,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Advertisement deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdvertisementBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'creative_id':
          result.creativeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'creative_type':
          result.creativeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'creative_content':
          result.creativeContent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AdvertisementCreativeContent))
              as AdvertisementCreativeContent);
          break;
        case 'ad_cb':
          result.adCb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource':
          result.resource = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'request_id':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_ad':
          result.isAd = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cm_mark':
          result.cmMark = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_ad_loc':
          result.isAdLoc = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'card_index':
          result.cardIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'client_ip':
          result.clientIp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extra':
          result.extra.replace(serializers.deserialize(value,
              specifiedType: const FullType(Extra)) as Extra);
          break;
        case 'creative_style':
          result.creativeStyle = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Advertisement extends Advertisement {
  @override
  final int creativeId;
  @override
  final int creativeType;
  @override
  final int cardType;
  @override
  final AdvertisementCreativeContent creativeContent;
  @override
  final String adCb;
  @override
  final int resource;
  @override
  final int source;
  @override
  final String requestId;
  @override
  final bool isAd;
  @override
  final int cmMark;
  @override
  final int index;
  @override
  final bool isAdLoc;
  @override
  final int cardIndex;
  @override
  final String clientIp;
  @override
  final Extra extra;
  @override
  final int creativeStyle;

  factory _$Advertisement([void Function(AdvertisementBuilder) updates]) =>
      (new AdvertisementBuilder()..update(updates)).build();

  _$Advertisement._(
      {this.creativeId,
      this.creativeType,
      this.cardType,
      this.creativeContent,
      this.adCb,
      this.resource,
      this.source,
      this.requestId,
      this.isAd,
      this.cmMark,
      this.index,
      this.isAdLoc,
      this.cardIndex,
      this.clientIp,
      this.extra,
      this.creativeStyle})
      : super._();

  @override
  Advertisement rebuild(void Function(AdvertisementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvertisementBuilder toBuilder() => new AdvertisementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Advertisement &&
        creativeId == other.creativeId &&
        creativeType == other.creativeType &&
        cardType == other.cardType &&
        creativeContent == other.creativeContent &&
        adCb == other.adCb &&
        resource == other.resource &&
        source == other.source &&
        requestId == other.requestId &&
        isAd == other.isAd &&
        cmMark == other.cmMark &&
        index == other.index &&
        isAdLoc == other.isAdLoc &&
        cardIndex == other.cardIndex &&
        clientIp == other.clientIp &&
        extra == other.extra &&
        creativeStyle == other.creativeStyle;
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
                                                                    0,
                                                                    creativeId
                                                                        .hashCode),
                                                                creativeType
                                                                    .hashCode),
                                                            cardType.hashCode),
                                                        creativeContent
                                                            .hashCode),
                                                    adCb.hashCode),
                                                resource.hashCode),
                                            source.hashCode),
                                        requestId.hashCode),
                                    isAd.hashCode),
                                cmMark.hashCode),
                            index.hashCode),
                        isAdLoc.hashCode),
                    cardIndex.hashCode),
                clientIp.hashCode),
            extra.hashCode),
        creativeStyle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Advertisement')
          ..add('creativeId', creativeId)
          ..add('creativeType', creativeType)
          ..add('cardType', cardType)
          ..add('creativeContent', creativeContent)
          ..add('adCb', adCb)
          ..add('resource', resource)
          ..add('source', source)
          ..add('requestId', requestId)
          ..add('isAd', isAd)
          ..add('cmMark', cmMark)
          ..add('index', index)
          ..add('isAdLoc', isAdLoc)
          ..add('cardIndex', cardIndex)
          ..add('clientIp', clientIp)
          ..add('extra', extra)
          ..add('creativeStyle', creativeStyle))
        .toString();
  }
}

class AdvertisementBuilder
    implements Builder<Advertisement, AdvertisementBuilder> {
  _$Advertisement _$v;

  int _creativeId;
  int get creativeId => _$this._creativeId;
  set creativeId(int creativeId) => _$this._creativeId = creativeId;

  int _creativeType;
  int get creativeType => _$this._creativeType;
  set creativeType(int creativeType) => _$this._creativeType = creativeType;

  int _cardType;
  int get cardType => _$this._cardType;
  set cardType(int cardType) => _$this._cardType = cardType;

  AdvertisementCreativeContentBuilder _creativeContent;
  AdvertisementCreativeContentBuilder get creativeContent =>
      _$this._creativeContent ??= new AdvertisementCreativeContentBuilder();
  set creativeContent(AdvertisementCreativeContentBuilder creativeContent) =>
      _$this._creativeContent = creativeContent;

  String _adCb;
  String get adCb => _$this._adCb;
  set adCb(String adCb) => _$this._adCb = adCb;

  int _resource;
  int get resource => _$this._resource;
  set resource(int resource) => _$this._resource = resource;

  int _source;
  int get source => _$this._source;
  set source(int source) => _$this._source = source;

  String _requestId;
  String get requestId => _$this._requestId;
  set requestId(String requestId) => _$this._requestId = requestId;

  bool _isAd;
  bool get isAd => _$this._isAd;
  set isAd(bool isAd) => _$this._isAd = isAd;

  int _cmMark;
  int get cmMark => _$this._cmMark;
  set cmMark(int cmMark) => _$this._cmMark = cmMark;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  bool _isAdLoc;
  bool get isAdLoc => _$this._isAdLoc;
  set isAdLoc(bool isAdLoc) => _$this._isAdLoc = isAdLoc;

  int _cardIndex;
  int get cardIndex => _$this._cardIndex;
  set cardIndex(int cardIndex) => _$this._cardIndex = cardIndex;

  String _clientIp;
  String get clientIp => _$this._clientIp;
  set clientIp(String clientIp) => _$this._clientIp = clientIp;

  ExtraBuilder _extra;
  ExtraBuilder get extra => _$this._extra ??= new ExtraBuilder();
  set extra(ExtraBuilder extra) => _$this._extra = extra;

  int _creativeStyle;
  int get creativeStyle => _$this._creativeStyle;
  set creativeStyle(int creativeStyle) => _$this._creativeStyle = creativeStyle;

  AdvertisementBuilder();

  AdvertisementBuilder get _$this {
    if (_$v != null) {
      _creativeId = _$v.creativeId;
      _creativeType = _$v.creativeType;
      _cardType = _$v.cardType;
      _creativeContent = _$v.creativeContent?.toBuilder();
      _adCb = _$v.adCb;
      _resource = _$v.resource;
      _source = _$v.source;
      _requestId = _$v.requestId;
      _isAd = _$v.isAd;
      _cmMark = _$v.cmMark;
      _index = _$v.index;
      _isAdLoc = _$v.isAdLoc;
      _cardIndex = _$v.cardIndex;
      _clientIp = _$v.clientIp;
      _extra = _$v.extra?.toBuilder();
      _creativeStyle = _$v.creativeStyle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Advertisement other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Advertisement;
  }

  @override
  void update(void Function(AdvertisementBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Advertisement build() {
    _$Advertisement _$result;
    try {
      _$result = _$v ??
          new _$Advertisement._(
              creativeId: creativeId,
              creativeType: creativeType,
              cardType: cardType,
              creativeContent: _creativeContent?.build(),
              adCb: adCb,
              resource: resource,
              source: source,
              requestId: requestId,
              isAd: isAd,
              cmMark: cmMark,
              index: index,
              isAdLoc: isAdLoc,
              cardIndex: cardIndex,
              clientIp: clientIp,
              extra: _extra?.build(),
              creativeStyle: creativeStyle);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creativeContent';
        _creativeContent?.build();

        _$failedField = 'extra';
        _extra?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Advertisement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
