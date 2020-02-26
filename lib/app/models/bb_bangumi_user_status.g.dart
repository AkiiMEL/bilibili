// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_user_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiUserStatus> _$bangumiUserStatusSerializer =
    new _$BangumiUserStatusSerializer();

class _$BangumiUserStatusSerializer
    implements StructuredSerializer<BangumiUserStatus> {
  @override
  final Iterable<Type> types = const [BangumiUserStatus, _$BangumiUserStatus];
  @override
  final String wireName = 'BangumiUserStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiUserStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.follow != null) {
      result
        ..add('follow')
        ..add(serializers.serialize(object.follow,
            specifiedType: const FullType(int)));
    }
    if (object.followStatus != null) {
      result
        ..add('follow_status')
        ..add(serializers.serialize(object.followStatus,
            specifiedType: const FullType(int)));
    }
    if (object.followBubble != null) {
      result
        ..add('follow_bubble')
        ..add(serializers.serialize(object.followBubble,
            specifiedType: const FullType(int)));
    }
    if (object.pay != null) {
      result
        ..add('pay')
        ..add(serializers.serialize(object.pay,
            specifiedType: const FullType(int)));
    }
    if (object.progress != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(object.progress,
            specifiedType: const FullType(WatchProgress)));
    }
    if (object.review != null) {
      result
        ..add('review')
        ..add(serializers.serialize(object.review,
            specifiedType: const FullType(Review)));
    }
    if (object.sponsor != null) {
      result
        ..add('sponsor')
        ..add(serializers.serialize(object.sponsor,
            specifiedType: const FullType(int)));
    }
    if (object.vip != null) {
      result
        ..add('vip')
        ..add(serializers.serialize(object.vip,
            specifiedType: const FullType(int)));
    }
    if (object.vipFrozen != null) {
      result
        ..add('vip_frozen')
        ..add(serializers.serialize(object.vipFrozen,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BangumiUserStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiUserStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'follow':
          result.follow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follow_status':
          result.followStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follow_bubble':
          result.followBubble = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pay':
          result.pay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'progress':
          result.progress.replace(serializers.deserialize(value,
              specifiedType: const FullType(WatchProgress)) as WatchProgress);
          break;
        case 'review':
          result.review.replace(serializers.deserialize(value,
              specifiedType: const FullType(Review)) as Review);
          break;
        case 'sponsor':
          result.sponsor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vip':
          result.vip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vip_frozen':
          result.vipFrozen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiUserStatus extends BangumiUserStatus {
  @override
  final int follow;
  @override
  final int followStatus;
  @override
  final int followBubble;
  @override
  final int pay;
  @override
  final WatchProgress progress;
  @override
  final Review review;
  @override
  final int sponsor;
  @override
  final int vip;
  @override
  final int vipFrozen;

  factory _$BangumiUserStatus(
          [void Function(BangumiUserStatusBuilder) updates]) =>
      (new BangumiUserStatusBuilder()..update(updates)).build();

  _$BangumiUserStatus._(
      {this.follow,
      this.followStatus,
      this.followBubble,
      this.pay,
      this.progress,
      this.review,
      this.sponsor,
      this.vip,
      this.vipFrozen})
      : super._();

  @override
  BangumiUserStatus rebuild(void Function(BangumiUserStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiUserStatusBuilder toBuilder() =>
      new BangumiUserStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiUserStatus &&
        follow == other.follow &&
        followStatus == other.followStatus &&
        followBubble == other.followBubble &&
        pay == other.pay &&
        progress == other.progress &&
        review == other.review &&
        sponsor == other.sponsor &&
        vip == other.vip &&
        vipFrozen == other.vipFrozen;
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
                                $jc($jc(0, follow.hashCode),
                                    followStatus.hashCode),
                                followBubble.hashCode),
                            pay.hashCode),
                        progress.hashCode),
                    review.hashCode),
                sponsor.hashCode),
            vip.hashCode),
        vipFrozen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiUserStatus')
          ..add('follow', follow)
          ..add('followStatus', followStatus)
          ..add('followBubble', followBubble)
          ..add('pay', pay)
          ..add('progress', progress)
          ..add('review', review)
          ..add('sponsor', sponsor)
          ..add('vip', vip)
          ..add('vipFrozen', vipFrozen))
        .toString();
  }
}

class BangumiUserStatusBuilder
    implements Builder<BangumiUserStatus, BangumiUserStatusBuilder> {
  _$BangumiUserStatus _$v;

  int _follow;
  int get follow => _$this._follow;
  set follow(int follow) => _$this._follow = follow;

  int _followStatus;
  int get followStatus => _$this._followStatus;
  set followStatus(int followStatus) => _$this._followStatus = followStatus;

  int _followBubble;
  int get followBubble => _$this._followBubble;
  set followBubble(int followBubble) => _$this._followBubble = followBubble;

  int _pay;
  int get pay => _$this._pay;
  set pay(int pay) => _$this._pay = pay;

  WatchProgressBuilder _progress;
  WatchProgressBuilder get progress =>
      _$this._progress ??= new WatchProgressBuilder();
  set progress(WatchProgressBuilder progress) => _$this._progress = progress;

  ReviewBuilder _review;
  ReviewBuilder get review => _$this._review ??= new ReviewBuilder();
  set review(ReviewBuilder review) => _$this._review = review;

  int _sponsor;
  int get sponsor => _$this._sponsor;
  set sponsor(int sponsor) => _$this._sponsor = sponsor;

  int _vip;
  int get vip => _$this._vip;
  set vip(int vip) => _$this._vip = vip;

  int _vipFrozen;
  int get vipFrozen => _$this._vipFrozen;
  set vipFrozen(int vipFrozen) => _$this._vipFrozen = vipFrozen;

  BangumiUserStatusBuilder();

  BangumiUserStatusBuilder get _$this {
    if (_$v != null) {
      _follow = _$v.follow;
      _followStatus = _$v.followStatus;
      _followBubble = _$v.followBubble;
      _pay = _$v.pay;
      _progress = _$v.progress?.toBuilder();
      _review = _$v.review?.toBuilder();
      _sponsor = _$v.sponsor;
      _vip = _$v.vip;
      _vipFrozen = _$v.vipFrozen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiUserStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiUserStatus;
  }

  @override
  void update(void Function(BangumiUserStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiUserStatus build() {
    _$BangumiUserStatus _$result;
    try {
      _$result = _$v ??
          new _$BangumiUserStatus._(
              follow: follow,
              followStatus: followStatus,
              followBubble: followBubble,
              pay: pay,
              progress: _progress?.build(),
              review: _review?.build(),
              sponsor: sponsor,
              vip: vip,
              vipFrozen: vipFrozen);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'progress';
        _progress?.build();
        _$failedField = 'review';
        _review?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BangumiUserStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
