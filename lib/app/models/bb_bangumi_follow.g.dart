// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_follow.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiFollow> _$bangumiFollowSerializer =
    new _$BangumiFollowSerializer();

class _$BangumiFollowSerializer implements StructuredSerializer<BangumiFollow> {
  @override
  final Iterable<Type> types = const [BangumiFollow, _$BangumiFollow];
  @override
  final String wireName = 'BangumiFollow';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiFollow object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(ButtonDescription)));
    }
    if (object.isFinish != null) {
      result
        ..add('is_finish')
        ..add(serializers.serialize(object.isFinish,
            specifiedType: const FullType(int)));
    }
    if (object.isStarted != null) {
      result
        ..add('is_started')
        ..add(serializers.serialize(object.isStarted,
            specifiedType: const FullType(int)));
    }
    if (object.newEp != null) {
      result
        ..add('new_ep')
        ..add(serializers.serialize(object.newEp,
            specifiedType: const FullType(NewEp)));
    }
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BangumiFollow deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiFollowBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'desc':
          result.desc.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ButtonDescription))
              as ButtonDescription);
          break;
        case 'is_finish':
          result.isFinish = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_started':
          result.isStarted = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'new_ep':
          result.newEp.replace(serializers.deserialize(value,
              specifiedType: const FullType(NewEp)) as NewEp);
          break;
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiFollow extends BangumiFollow {
  @override
  final ButtonDescription desc;
  @override
  final int isFinish;
  @override
  final int isStarted;
  @override
  final NewEp newEp;
  @override
  final int totalCount;

  factory _$BangumiFollow([void Function(BangumiFollowBuilder) updates]) =>
      (new BangumiFollowBuilder()..update(updates)).build();

  _$BangumiFollow._(
      {this.desc, this.isFinish, this.isStarted, this.newEp, this.totalCount})
      : super._();

  @override
  BangumiFollow rebuild(void Function(BangumiFollowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiFollowBuilder toBuilder() => new BangumiFollowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiFollow &&
        desc == other.desc &&
        isFinish == other.isFinish &&
        isStarted == other.isStarted &&
        newEp == other.newEp &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, desc.hashCode), isFinish.hashCode),
                isStarted.hashCode),
            newEp.hashCode),
        totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiFollow')
          ..add('desc', desc)
          ..add('isFinish', isFinish)
          ..add('isStarted', isStarted)
          ..add('newEp', newEp)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class BangumiFollowBuilder
    implements Builder<BangumiFollow, BangumiFollowBuilder> {
  _$BangumiFollow _$v;

  ButtonDescriptionBuilder _desc;
  ButtonDescriptionBuilder get desc =>
      _$this._desc ??= new ButtonDescriptionBuilder();
  set desc(ButtonDescriptionBuilder desc) => _$this._desc = desc;

  int _isFinish;
  int get isFinish => _$this._isFinish;
  set isFinish(int isFinish) => _$this._isFinish = isFinish;

  int _isStarted;
  int get isStarted => _$this._isStarted;
  set isStarted(int isStarted) => _$this._isStarted = isStarted;

  NewEpBuilder _newEp;
  NewEpBuilder get newEp => _$this._newEp ??= new NewEpBuilder();
  set newEp(NewEpBuilder newEp) => _$this._newEp = newEp;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  BangumiFollowBuilder();

  BangumiFollowBuilder get _$this {
    if (_$v != null) {
      _desc = _$v.desc?.toBuilder();
      _isFinish = _$v.isFinish;
      _isStarted = _$v.isStarted;
      _newEp = _$v.newEp?.toBuilder();
      _totalCount = _$v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiFollow other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiFollow;
  }

  @override
  void update(void Function(BangumiFollowBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiFollow build() {
    _$BangumiFollow _$result;
    try {
      _$result = _$v ??
          new _$BangumiFollow._(
              desc: _desc?.build(),
              isFinish: isFinish,
              isStarted: isStarted,
              newEp: _newEp?.build(),
              totalCount: totalCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'desc';
        _desc?.build();

        _$failedField = 'newEp';
        _newEp?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BangumiFollow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
