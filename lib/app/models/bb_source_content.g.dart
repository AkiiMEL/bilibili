// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_source_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SourceContent> _$sourceContentSerializer =
    new _$SourceContentSerializer();

class _$SourceContentSerializer implements StructuredSerializer<SourceContent> {
  @override
  final Iterable<Type> types = const [SourceContent, _$SourceContent];
  @override
  final String wireName = 'SourceContent';

  @override
  Iterable<Object> serialize(Serializers serializers, SourceContent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.requestId != null) {
      result
        ..add('request_id')
        ..add(serializers.serialize(object.requestId,
            specifiedType: const FullType(String)));
    }
    if (object.resourceId != null) {
      result
        ..add('resource_id')
        ..add(serializers.serialize(object.resourceId,
            specifiedType: const FullType(int)));
    }
    if (object.serverType != null) {
      result
        ..add('server_type')
        ..add(serializers.serialize(object.serverType,
            specifiedType: const FullType(int)));
    }
    if (object.sourceId != null) {
      result
        ..add('source_id')
        ..add(serializers.serialize(object.sourceId,
            specifiedType: const FullType(int)));
    }
    if (object.ad != null) {
      result
        ..add('ad_content')
        ..add(serializers.serialize(object.ad,
            specifiedType: const FullType(Advertisement)));
    }
    return result;
  }

  @override
  SourceContent deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SourceContentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'card_index':
          result.cardIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'client_ip':
          result.clientIp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_ad_loc':
          result.isAdLoc = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'request_id':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource_id':
          result.resourceId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'server_type':
          result.serverType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'source_id':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ad_content':
          result.ad.replace(serializers.deserialize(value,
              specifiedType: const FullType(Advertisement)) as Advertisement);
          break;
      }
    }

    return result.build();
  }
}

class _$SourceContent extends SourceContent {
  @override
  final int cardIndex;
  @override
  final String clientIp;
  @override
  final int index;
  @override
  final bool isAdLoc;
  @override
  final String requestId;
  @override
  final int resourceId;
  @override
  final int serverType;
  @override
  final int sourceId;
  @override
  final Advertisement ad;

  factory _$SourceContent([void Function(SourceContentBuilder) updates]) =>
      (new SourceContentBuilder()..update(updates)).build();

  _$SourceContent._(
      {this.cardIndex,
      this.clientIp,
      this.index,
      this.isAdLoc,
      this.requestId,
      this.resourceId,
      this.serverType,
      this.sourceId,
      this.ad})
      : super._();

  @override
  SourceContent rebuild(void Function(SourceContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceContentBuilder toBuilder() => new SourceContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceContent &&
        cardIndex == other.cardIndex &&
        clientIp == other.clientIp &&
        index == other.index &&
        isAdLoc == other.isAdLoc &&
        requestId == other.requestId &&
        resourceId == other.resourceId &&
        serverType == other.serverType &&
        sourceId == other.sourceId &&
        ad == other.ad;
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
                                $jc($jc(0, cardIndex.hashCode),
                                    clientIp.hashCode),
                                index.hashCode),
                            isAdLoc.hashCode),
                        requestId.hashCode),
                    resourceId.hashCode),
                serverType.hashCode),
            sourceId.hashCode),
        ad.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SourceContent')
          ..add('cardIndex', cardIndex)
          ..add('clientIp', clientIp)
          ..add('index', index)
          ..add('isAdLoc', isAdLoc)
          ..add('requestId', requestId)
          ..add('resourceId', resourceId)
          ..add('serverType', serverType)
          ..add('sourceId', sourceId)
          ..add('ad', ad))
        .toString();
  }
}

class SourceContentBuilder
    implements Builder<SourceContent, SourceContentBuilder> {
  _$SourceContent _$v;

  int _cardIndex;
  int get cardIndex => _$this._cardIndex;
  set cardIndex(int cardIndex) => _$this._cardIndex = cardIndex;

  String _clientIp;
  String get clientIp => _$this._clientIp;
  set clientIp(String clientIp) => _$this._clientIp = clientIp;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  bool _isAdLoc;
  bool get isAdLoc => _$this._isAdLoc;
  set isAdLoc(bool isAdLoc) => _$this._isAdLoc = isAdLoc;

  String _requestId;
  String get requestId => _$this._requestId;
  set requestId(String requestId) => _$this._requestId = requestId;

  int _resourceId;
  int get resourceId => _$this._resourceId;
  set resourceId(int resourceId) => _$this._resourceId = resourceId;

  int _serverType;
  int get serverType => _$this._serverType;
  set serverType(int serverType) => _$this._serverType = serverType;

  int _sourceId;
  int get sourceId => _$this._sourceId;
  set sourceId(int sourceId) => _$this._sourceId = sourceId;

  AdvertisementBuilder _ad;
  AdvertisementBuilder get ad => _$this._ad ??= new AdvertisementBuilder();
  set ad(AdvertisementBuilder ad) => _$this._ad = ad;

  SourceContentBuilder();

  SourceContentBuilder get _$this {
    if (_$v != null) {
      _cardIndex = _$v.cardIndex;
      _clientIp = _$v.clientIp;
      _index = _$v.index;
      _isAdLoc = _$v.isAdLoc;
      _requestId = _$v.requestId;
      _resourceId = _$v.resourceId;
      _serverType = _$v.serverType;
      _sourceId = _$v.sourceId;
      _ad = _$v.ad?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceContent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SourceContent;
  }

  @override
  void update(void Function(SourceContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SourceContent build() {
    _$SourceContent _$result;
    try {
      _$result = _$v ??
          new _$SourceContent._(
              cardIndex: cardIndex,
              clientIp: clientIp,
              index: index,
              isAdLoc: isAdLoc,
              requestId: requestId,
              resourceId: resourceId,
              serverType: serverType,
              sourceId: sourceId,
              ad: _ad?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ad';
        _ad?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SourceContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
