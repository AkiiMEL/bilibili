// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_watch_progress.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WatchProgress> _$watchProgressSerializer =
    new _$WatchProgressSerializer();

class _$WatchProgressSerializer implements StructuredSerializer<WatchProgress> {
  @override
  final Iterable<Type> types = const [WatchProgress, _$WatchProgress];
  @override
  final String wireName = 'WatchProgress';

  @override
  Iterable<Object> serialize(Serializers serializers, WatchProgress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(object.bar,
            specifiedType: const FullType(int)));
    }
    if (object.lastEpDesc != null) {
      result
        ..add('last_ep_desc')
        ..add(serializers.serialize(object.lastEpDesc,
            specifiedType: const FullType(String)));
    }
    if (object.lastEpId != null) {
      result
        ..add('last_ep_id')
        ..add(serializers.serialize(object.lastEpId,
            specifiedType: const FullType(int)));
    }
    if (object.lastEpIndex != null) {
      result
        ..add('last_ep_index')
        ..add(serializers.serialize(object.lastEpIndex,
            specifiedType: const FullType(String)));
    }
    if (object.lastTime != null) {
      result
        ..add('last_time')
        ..add(serializers.serialize(object.lastTime,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WatchProgress deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WatchProgressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bar':
          result.bar = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_ep_desc':
          result.lastEpDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_ep_id':
          result.lastEpId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_ep_index':
          result.lastEpIndex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_time':
          result.lastTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WatchProgress extends WatchProgress {
  @override
  final int bar;
  @override
  final String lastEpDesc;
  @override
  final int lastEpId;
  @override
  final String lastEpIndex;
  @override
  final int lastTime;

  factory _$WatchProgress([void Function(WatchProgressBuilder) updates]) =>
      (new WatchProgressBuilder()..update(updates)).build();

  _$WatchProgress._(
      {this.bar,
      this.lastEpDesc,
      this.lastEpId,
      this.lastEpIndex,
      this.lastTime})
      : super._();

  @override
  WatchProgress rebuild(void Function(WatchProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchProgressBuilder toBuilder() => new WatchProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchProgress &&
        bar == other.bar &&
        lastEpDesc == other.lastEpDesc &&
        lastEpId == other.lastEpId &&
        lastEpIndex == other.lastEpIndex &&
        lastTime == other.lastTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bar.hashCode), lastEpDesc.hashCode),
                lastEpId.hashCode),
            lastEpIndex.hashCode),
        lastTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WatchProgress')
          ..add('bar', bar)
          ..add('lastEpDesc', lastEpDesc)
          ..add('lastEpId', lastEpId)
          ..add('lastEpIndex', lastEpIndex)
          ..add('lastTime', lastTime))
        .toString();
  }
}

class WatchProgressBuilder
    implements Builder<WatchProgress, WatchProgressBuilder> {
  _$WatchProgress _$v;

  int _bar;
  int get bar => _$this._bar;
  set bar(int bar) => _$this._bar = bar;

  String _lastEpDesc;
  String get lastEpDesc => _$this._lastEpDesc;
  set lastEpDesc(String lastEpDesc) => _$this._lastEpDesc = lastEpDesc;

  int _lastEpId;
  int get lastEpId => _$this._lastEpId;
  set lastEpId(int lastEpId) => _$this._lastEpId = lastEpId;

  String _lastEpIndex;
  String get lastEpIndex => _$this._lastEpIndex;
  set lastEpIndex(String lastEpIndex) => _$this._lastEpIndex = lastEpIndex;

  int _lastTime;
  int get lastTime => _$this._lastTime;
  set lastTime(int lastTime) => _$this._lastTime = lastTime;

  WatchProgressBuilder();

  WatchProgressBuilder get _$this {
    if (_$v != null) {
      _bar = _$v.bar;
      _lastEpDesc = _$v.lastEpDesc;
      _lastEpId = _$v.lastEpId;
      _lastEpIndex = _$v.lastEpIndex;
      _lastTime = _$v.lastTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchProgress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WatchProgress;
  }

  @override
  void update(void Function(WatchProgressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WatchProgress build() {
    final _$result = _$v ??
        new _$WatchProgress._(
            bar: bar,
            lastEpDesc: lastEpDesc,
            lastEpId: lastEpId,
            lastEpIndex: lastEpIndex,
            lastTime: lastTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
