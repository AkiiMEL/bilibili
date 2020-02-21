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
        case 'follow':
          result.follow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follow_status':
          result.followStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiStatus extends BangumiStatus {
  @override
  final int follow;
  @override
  final int followStatus;

  factory _$BangumiStatus([void Function(BangumiStatusBuilder) updates]) =>
      (new BangumiStatusBuilder()..update(updates)).build();

  _$BangumiStatus._({this.follow, this.followStatus}) : super._();

  @override
  BangumiStatus rebuild(void Function(BangumiStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiStatusBuilder toBuilder() => new BangumiStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiStatus &&
        follow == other.follow &&
        followStatus == other.followStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, follow.hashCode), followStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiStatus')
          ..add('follow', follow)
          ..add('followStatus', followStatus))
        .toString();
  }
}

class BangumiStatusBuilder
    implements Builder<BangumiStatus, BangumiStatusBuilder> {
  _$BangumiStatus _$v;

  int _follow;
  int get follow => _$this._follow;
  set follow(int follow) => _$this._follow = follow;

  int _followStatus;
  int get followStatus => _$this._followStatus;
  set followStatus(int followStatus) => _$this._followStatus = followStatus;

  BangumiStatusBuilder();

  BangumiStatusBuilder get _$this {
    if (_$v != null) {
      _follow = _$v.follow;
      _followStatus = _$v.followStatus;
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
        new _$BangumiStatus._(follow: follow, followStatus: followStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
