// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_extra.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveExtra> _$liveExtraSerializer = new _$LiveExtraSerializer();

class _$LiveExtraSerializer implements StructuredSerializer<LiveExtra> {
  @override
  final Iterable<Type> types = const [LiveExtra, _$LiveExtra];
  @override
  final String wireName = 'LiveExtra';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveExtra object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.timeDesc != null) {
      result
        ..add('time_desc')
        ..add(serializers.serialize(object.timeDesc,
            specifiedType: const FullType(String)));
    }
    if (object.uwireNameDesc != null) {
      result
        ..add('uwireName_desc')
        ..add(serializers.serialize(object.uwireNameDesc,
            specifiedType: const FullType(String)));
    }
    if (object.tagsDesc != null) {
      result
        ..add('tags_desc')
        ..add(serializers.serialize(object.tagsDesc,
            specifiedType: const FullType(String)));
    }
    if (object.cardType != null) {
      result
        ..add('card_type')
        ..add(serializers.serialize(object.cardType,
            specifiedType: const FullType(int)));
    }
    if (object.relationPage != null) {
      result
        ..add('relation_page')
        ..add(serializers.serialize(object.relationPage,
            specifiedType: const FullType(int)));
    }
    if (object.showType != null) {
      result
        ..add('show_type')
        ..add(serializers.serialize(object.showType,
            specifiedType: const FullType(int)));
    }
    if (object.offline != null) {
      result
        ..add('offline')
        ..add(serializers.serialize(object.offline,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.subtitle != null) {
      result
        ..add('sub_title')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LiveExtra deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveExtraBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time_desc':
          result.timeDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uwireName_desc':
          result.uwireNameDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags_desc':
          result.tagsDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'relation_page':
          result.relationPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'show_type':
          result.showType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'offline':
          result.offline = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'sub_title':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveExtra extends LiveExtra {
  @override
  final int totalCount;
  @override
  final String timeDesc;
  @override
  final String uwireNameDesc;
  @override
  final String tagsDesc;
  @override
  final int cardType;
  @override
  final int relationPage;
  @override
  final int showType;
  @override
  final BuiltList offline;
  @override
  final String subtitle;

  factory _$LiveExtra([void Function(LiveExtraBuilder) updates]) =>
      (new LiveExtraBuilder()..update(updates)).build();

  _$LiveExtra._(
      {this.totalCount,
      this.timeDesc,
      this.uwireNameDesc,
      this.tagsDesc,
      this.cardType,
      this.relationPage,
      this.showType,
      this.offline,
      this.subtitle})
      : super._();

  @override
  LiveExtra rebuild(void Function(LiveExtraBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveExtraBuilder toBuilder() => new LiveExtraBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveExtra &&
        totalCount == other.totalCount &&
        timeDesc == other.timeDesc &&
        uwireNameDesc == other.uwireNameDesc &&
        tagsDesc == other.tagsDesc &&
        cardType == other.cardType &&
        relationPage == other.relationPage &&
        showType == other.showType &&
        offline == other.offline &&
        subtitle == other.subtitle;
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
                                $jc($jc(0, totalCount.hashCode),
                                    timeDesc.hashCode),
                                uwireNameDesc.hashCode),
                            tagsDesc.hashCode),
                        cardType.hashCode),
                    relationPage.hashCode),
                showType.hashCode),
            offline.hashCode),
        subtitle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveExtra')
          ..add('totalCount', totalCount)
          ..add('timeDesc', timeDesc)
          ..add('uwireNameDesc', uwireNameDesc)
          ..add('tagsDesc', tagsDesc)
          ..add('cardType', cardType)
          ..add('relationPage', relationPage)
          ..add('showType', showType)
          ..add('offline', offline)
          ..add('subtitle', subtitle))
        .toString();
  }
}

class LiveExtraBuilder implements Builder<LiveExtra, LiveExtraBuilder> {
  _$LiveExtra _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  String _timeDesc;
  String get timeDesc => _$this._timeDesc;
  set timeDesc(String timeDesc) => _$this._timeDesc = timeDesc;

  String _uwireNameDesc;
  String get uwireNameDesc => _$this._uwireNameDesc;
  set uwireNameDesc(String uwireNameDesc) =>
      _$this._uwireNameDesc = uwireNameDesc;

  String _tagsDesc;
  String get tagsDesc => _$this._tagsDesc;
  set tagsDesc(String tagsDesc) => _$this._tagsDesc = tagsDesc;

  int _cardType;
  int get cardType => _$this._cardType;
  set cardType(int cardType) => _$this._cardType = cardType;

  int _relationPage;
  int get relationPage => _$this._relationPage;
  set relationPage(int relationPage) => _$this._relationPage = relationPage;

  int _showType;
  int get showType => _$this._showType;
  set showType(int showType) => _$this._showType = showType;

  BuiltList _offline;
  BuiltList get offline => _$this._offline;
  set offline(BuiltList offline) => _$this._offline = offline;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  LiveExtraBuilder();

  LiveExtraBuilder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _timeDesc = _$v.timeDesc;
      _uwireNameDesc = _$v.uwireNameDesc;
      _tagsDesc = _$v.tagsDesc;
      _cardType = _$v.cardType;
      _relationPage = _$v.relationPage;
      _showType = _$v.showType;
      _offline = _$v.offline;
      _subtitle = _$v.subtitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveExtra other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveExtra;
  }

  @override
  void update(void Function(LiveExtraBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveExtra build() {
    final _$result = _$v ??
        new _$LiveExtra._(
            totalCount: totalCount,
            timeDesc: timeDesc,
            uwireNameDesc: uwireNameDesc,
            tagsDesc: tagsDesc,
            cardType: cardType,
            relationPage: relationPage,
            showType: showType,
            offline: offline,
            subtitle: subtitle);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
