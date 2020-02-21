// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_stat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiStat> _$bangumiStatSerializer = new _$BangumiStatSerializer();

class _$BangumiStatSerializer implements StructuredSerializer<BangumiStat> {
  @override
  final Iterable<Type> types = const [BangumiStat, _$BangumiStat];
  @override
  final String wireName = 'BangumiStat';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiStat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.danmaku != null) {
      result
        ..add('danmaku')
        ..add(serializers.serialize(object.danmaku,
            specifiedType: const FullType(int)));
    }
    if (object.follow != null) {
      result
        ..add('follow')
        ..add(serializers.serialize(object.follow,
            specifiedType: const FullType(int)));
    }
    if (object.followView != null) {
      result
        ..add('follow_view')
        ..add(serializers.serialize(object.followView,
            specifiedType: const FullType(String)));
    }
    if (object.view != null) {
      result
        ..add('view')
        ..add(serializers.serialize(object.view,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BangumiStat deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiStatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'danmaku':
          result.danmaku = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follow':
          result.follow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follow_view':
          result.followView = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view':
          result.view = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiStat extends BangumiStat {
  @override
  final int danmaku;
  @override
  final int follow;
  @override
  final String followView;
  @override
  final int view;

  factory _$BangumiStat([void Function(BangumiStatBuilder) updates]) =>
      (new BangumiStatBuilder()..update(updates)).build();

  _$BangumiStat._({this.danmaku, this.follow, this.followView, this.view})
      : super._();

  @override
  BangumiStat rebuild(void Function(BangumiStatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiStatBuilder toBuilder() => new BangumiStatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiStat &&
        danmaku == other.danmaku &&
        follow == other.follow &&
        followView == other.followView &&
        view == other.view;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, danmaku.hashCode), follow.hashCode),
            followView.hashCode),
        view.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiStat')
          ..add('danmaku', danmaku)
          ..add('follow', follow)
          ..add('followView', followView)
          ..add('view', view))
        .toString();
  }
}

class BangumiStatBuilder implements Builder<BangumiStat, BangumiStatBuilder> {
  _$BangumiStat _$v;

  int _danmaku;
  int get danmaku => _$this._danmaku;
  set danmaku(int danmaku) => _$this._danmaku = danmaku;

  int _follow;
  int get follow => _$this._follow;
  set follow(int follow) => _$this._follow = follow;

  String _followView;
  String get followView => _$this._followView;
  set followView(String followView) => _$this._followView = followView;

  int _view;
  int get view => _$this._view;
  set view(int view) => _$this._view = view;

  BangumiStatBuilder();

  BangumiStatBuilder get _$this {
    if (_$v != null) {
      _danmaku = _$v.danmaku;
      _follow = _$v.follow;
      _followView = _$v.followView;
      _view = _$v.view;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiStat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiStat;
  }

  @override
  void update(void Function(BangumiStatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiStat build() {
    final _$result = _$v ??
        new _$BangumiStat._(
            danmaku: danmaku,
            follow: follow,
            followView: followView,
            view: view);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
