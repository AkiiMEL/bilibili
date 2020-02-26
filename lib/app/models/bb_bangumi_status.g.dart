// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiStatus> _$bangumiStatusSerializer =
    new _$BangumiStatusSerializer();

class _$BangumiStatusSerializer implements StructuredSerializer<BangumiStatus> {
  @override
  final Iterable<Type> types = const [BangumiStatus, _$BangumiStatus];
  @override
  final String wireName = 'BangumiStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.coins != null) {
      result
        ..add('coins')
        ..add(serializers.serialize(object.coins,
            specifiedType: const FullType(int)));
    }
    if (object.favorites != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(object.favorites,
            specifiedType: const FullType(int)));
    }
    if (object.danmaku != null) {
      result
        ..add('danmaku')
        ..add(serializers.serialize(object.danmaku,
            specifiedType: const FullType(int)));
    }
    if (object.followers != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(object.followers,
            specifiedType: const FullType(String)));
    }
    if (object.play != null) {
      result
        ..add('play')
        ..add(serializers.serialize(object.play,
            specifiedType: const FullType(String)));
    }
    if (object.reply != null) {
      result
        ..add('reply')
        ..add(serializers.serialize(object.reply,
            specifiedType: const FullType(int)));
    }
    if (object.share != null) {
      result
        ..add('share')
        ..add(serializers.serialize(object.share,
            specifiedType: const FullType(int)));
    }
    if (object.views != null) {
      result
        ..add('views')
        ..add(serializers.serialize(object.views,
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
  BangumiStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'coins':
          result.coins = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'danmaku':
          result.danmaku = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'followers':
          result.followers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'play':
          result.play = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reply':
          result.reply = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'share':
          result.share = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
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

class _$BangumiStatus extends BangumiStatus {
  @override
  final int coins;
  @override
  final int favorites;
  @override
  final int danmaku;
  @override
  final String followers;
  @override
  final String play;
  @override
  final int reply;
  @override
  final int share;
  @override
  final int views;
  @override
  final int follow;
  @override
  final String followView;
  @override
  final int view;

  factory _$BangumiStatus([void Function(BangumiStatusBuilder) updates]) =>
      (new BangumiStatusBuilder()..update(updates)).build();

  _$BangumiStatus._(
      {this.coins,
      this.favorites,
      this.danmaku,
      this.followers,
      this.play,
      this.reply,
      this.share,
      this.views,
      this.follow,
      this.followView,
      this.view})
      : super._();

  @override
  BangumiStatus rebuild(void Function(BangumiStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiStatusBuilder toBuilder() => new BangumiStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiStatus &&
        coins == other.coins &&
        favorites == other.favorites &&
        danmaku == other.danmaku &&
        followers == other.followers &&
        play == other.play &&
        reply == other.reply &&
        share == other.share &&
        views == other.views &&
        follow == other.follow &&
        followView == other.followView &&
        view == other.view;
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
                                        $jc($jc(0, coins.hashCode),
                                            favorites.hashCode),
                                        danmaku.hashCode),
                                    followers.hashCode),
                                play.hashCode),
                            reply.hashCode),
                        share.hashCode),
                    views.hashCode),
                follow.hashCode),
            followView.hashCode),
        view.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiStatus')
          ..add('coins', coins)
          ..add('favorites', favorites)
          ..add('danmaku', danmaku)
          ..add('followers', followers)
          ..add('play', play)
          ..add('reply', reply)
          ..add('share', share)
          ..add('views', views)
          ..add('follow', follow)
          ..add('followView', followView)
          ..add('view', view))
        .toString();
  }
}

class BangumiStatusBuilder
    implements Builder<BangumiStatus, BangumiStatusBuilder> {
  _$BangumiStatus _$v;

  int _coins;
  int get coins => _$this._coins;
  set coins(int coins) => _$this._coins = coins;

  int _favorites;
  int get favorites => _$this._favorites;
  set favorites(int favorites) => _$this._favorites = favorites;

  int _danmaku;
  int get danmaku => _$this._danmaku;
  set danmaku(int danmaku) => _$this._danmaku = danmaku;

  String _followers;
  String get followers => _$this._followers;
  set followers(String followers) => _$this._followers = followers;

  String _play;
  String get play => _$this._play;
  set play(String play) => _$this._play = play;

  int _reply;
  int get reply => _$this._reply;
  set reply(int reply) => _$this._reply = reply;

  int _share;
  int get share => _$this._share;
  set share(int share) => _$this._share = share;

  int _views;
  int get views => _$this._views;
  set views(int views) => _$this._views = views;

  int _follow;
  int get follow => _$this._follow;
  set follow(int follow) => _$this._follow = follow;

  String _followView;
  String get followView => _$this._followView;
  set followView(String followView) => _$this._followView = followView;

  int _view;
  int get view => _$this._view;
  set view(int view) => _$this._view = view;

  BangumiStatusBuilder();

  BangumiStatusBuilder get _$this {
    if (_$v != null) {
      _coins = _$v.coins;
      _favorites = _$v.favorites;
      _danmaku = _$v.danmaku;
      _followers = _$v.followers;
      _play = _$v.play;
      _reply = _$v.reply;
      _share = _$v.share;
      _views = _$v.views;
      _follow = _$v.follow;
      _followView = _$v.followView;
      _view = _$v.view;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiStatus;
  }

  @override
  void update(void Function(BangumiStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiStatus build() {
    final _$result = _$v ??
        new _$BangumiStatus._(
            coins: coins,
            favorites: favorites,
            danmaku: danmaku,
            followers: followers,
            play: play,
            reply: reply,
            share: share,
            views: views,
            follow: follow,
            followView: followView,
            view: view);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
