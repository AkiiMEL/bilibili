// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_paster.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Paster> _$pasterSerializer = new _$PasterSerializer();

class _$PasterSerializer implements StructuredSerializer<Paster> {
  @override
  final Iterable<Type> types = const [Paster, _$Paster];
  @override
  final String wireName = 'Paster';

  @override
  Iterable<Object> serialize(Serializers serializers, Paster object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.aid != null) {
      result
        ..add('aid')
        ..add(serializers.serialize(object.aid,
            specifiedType: const FullType(int)));
    }
    if (object.allowJump != null) {
      result
        ..add('allow_jump')
        ..add(serializers.serialize(object.allowJump,
            specifiedType: const FullType(int)));
    }
    if (object.cid != null) {
      result
        ..add('cid')
        ..add(serializers.serialize(object.cid,
            specifiedType: const FullType(int)));
    }
    if (object.duration != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(object.duration,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Paster deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PasterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aid':
          result.aid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'allow_jump':
          result.allowJump = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cid':
          result.cid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Paster extends Paster {
  @override
  final int aid;
  @override
  final int allowJump;
  @override
  final int cid;
  @override
  final int duration;
  @override
  final int type;
  @override
  final String url;

  factory _$Paster([void Function(PasterBuilder) updates]) =>
      (new PasterBuilder()..update(updates)).build();

  _$Paster._(
      {this.aid, this.allowJump, this.cid, this.duration, this.type, this.url})
      : super._();

  @override
  Paster rebuild(void Function(PasterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasterBuilder toBuilder() => new PasterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Paster &&
        aid == other.aid &&
        allowJump == other.allowJump &&
        cid == other.cid &&
        duration == other.duration &&
        type == other.type &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, aid.hashCode), allowJump.hashCode),
                    cid.hashCode),
                duration.hashCode),
            type.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Paster')
          ..add('aid', aid)
          ..add('allowJump', allowJump)
          ..add('cid', cid)
          ..add('duration', duration)
          ..add('type', type)
          ..add('url', url))
        .toString();
  }
}

class PasterBuilder implements Builder<Paster, PasterBuilder> {
  _$Paster _$v;

  int _aid;
  int get aid => _$this._aid;
  set aid(int aid) => _$this._aid = aid;

  int _allowJump;
  int get allowJump => _$this._allowJump;
  set allowJump(int allowJump) => _$this._allowJump = allowJump;

  int _cid;
  int get cid => _$this._cid;
  set cid(int cid) => _$this._cid = cid;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  PasterBuilder();

  PasterBuilder get _$this {
    if (_$v != null) {
      _aid = _$v.aid;
      _allowJump = _$v.allowJump;
      _cid = _$v.cid;
      _duration = _$v.duration;
      _type = _$v.type;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Paster other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Paster;
  }

  @override
  void update(void Function(PasterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Paster build() {
    final _$result = _$v ??
        new _$Paster._(
            aid: aid,
            allowJump: allowJump,
            cid: cid,
            duration: duration,
            type: type,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
