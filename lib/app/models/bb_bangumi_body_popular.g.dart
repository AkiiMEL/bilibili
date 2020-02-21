// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_body_popular.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiBodyPopular> _$bangumiBodyPopularSerializer =
    new _$BangumiBodyPopularSerializer();

class _$BangumiBodyPopularSerializer
    implements StructuredSerializer<BangumiBodyPopular> {
  @override
  final Iterable<Type> types = const [BangumiBodyPopular, _$BangumiBodyPopular];
  @override
  final String wireName = 'BangumiBodyPopular';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiBodyPopular object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.wid != null) {
      result
        ..add('wid')
        ..add(serializers.serialize(object.wid,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BangumiBodyPopular deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiBodyPopularBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wid':
          result.wid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiBodyPopular extends BangumiBodyPopular {
  @override
  final String desc;
  @override
  final BuiltList items;
  @override
  final String title;
  @override
  final int wid;

  factory _$BangumiBodyPopular(
          [void Function(BangumiBodyPopularBuilder) updates]) =>
      (new BangumiBodyPopularBuilder()..update(updates)).build();

  _$BangumiBodyPopular._({this.desc, this.items, this.title, this.wid})
      : super._();

  @override
  BangumiBodyPopular rebuild(
          void Function(BangumiBodyPopularBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiBodyPopularBuilder toBuilder() =>
      new BangumiBodyPopularBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiBodyPopular &&
        desc == other.desc &&
        items == other.items &&
        title == other.title &&
        wid == other.wid;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, desc.hashCode), items.hashCode), title.hashCode),
        wid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiBodyPopular')
          ..add('desc', desc)
          ..add('items', items)
          ..add('title', title)
          ..add('wid', wid))
        .toString();
  }
}

class BangumiBodyPopularBuilder
    implements Builder<BangumiBodyPopular, BangumiBodyPopularBuilder> {
  _$BangumiBodyPopular _$v;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  BuiltList _items;
  BuiltList get items => _$this._items;
  set items(BuiltList items) => _$this._items = items;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _wid;
  int get wid => _$this._wid;
  set wid(int wid) => _$this._wid = wid;

  BangumiBodyPopularBuilder();

  BangumiBodyPopularBuilder get _$this {
    if (_$v != null) {
      _desc = _$v.desc;
      _items = _$v.items;
      _title = _$v.title;
      _wid = _$v.wid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiBodyPopular other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiBodyPopular;
  }

  @override
  void update(void Function(BangumiBodyPopularBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiBodyPopular build() {
    final _$result = _$v ??
        new _$BangumiBodyPopular._(
            desc: desc, items: items, title: title, wid: wid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
