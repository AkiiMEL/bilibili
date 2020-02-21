// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_argument.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Argument> _$argumentSerializer = new _$ArgumentSerializer();

class _$ArgumentSerializer implements StructuredSerializer<Argument> {
  @override
  final Iterable<Type> types = const [Argument, _$Argument];
  @override
  final String wireName = 'Argument';

  @override
  Iterable<Object> serialize(Serializers serializers, Argument object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.upId != null) {
      result
        ..add('up_id')
        ..add(serializers.serialize(object.upId,
            specifiedType: const FullType(int)));
    }
    if (object.upName != null) {
      result
        ..add('up_name')
        ..add(serializers.serialize(object.upName,
            specifiedType: const FullType(String)));
    }
    if (object.rid != null) {
      result
        ..add('rid')
        ..add(serializers.serialize(object.rid,
            specifiedType: const FullType(int)));
    }
    if (object.rname != null) {
      result
        ..add('rname')
        ..add(serializers.serialize(object.rname,
            specifiedType: const FullType(String)));
    }
    if (object.tid != null) {
      result
        ..add('tid')
        ..add(serializers.serialize(object.tid,
            specifiedType: const FullType(int)));
    }
    if (object.tname != null) {
      result
        ..add('tname')
        ..add(serializers.serialize(object.tname,
            specifiedType: const FullType(String)));
    }
    if (object.aid != null) {
      result
        ..add('aid')
        ..add(serializers.serialize(object.aid,
            specifiedType: const FullType(int)));
    }
    if (object.cid != null) {
      result
        ..add('cid')
        ..add(serializers.serialize(object.cid,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Argument deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArgumentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'up_id':
          result.upId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'up_name':
          result.upName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rid':
          result.rid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rname':
          result.rname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tid':
          result.tid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tname':
          result.tname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aid':
          result.aid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cid':
          result.cid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Argument extends Argument {
  @override
  final int upId;
  @override
  final String upName;
  @override
  final int rid;
  @override
  final String rname;
  @override
  final int tid;
  @override
  final String tname;
  @override
  final int aid;
  @override
  final int cid;
  @override
  final String type;

  factory _$Argument([void Function(ArgumentBuilder) updates]) =>
      (new ArgumentBuilder()..update(updates)).build();

  _$Argument._(
      {this.upId,
      this.upName,
      this.rid,
      this.rname,
      this.tid,
      this.tname,
      this.aid,
      this.cid,
      this.type})
      : super._();

  @override
  Argument rebuild(void Function(ArgumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArgumentBuilder toBuilder() => new ArgumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Argument &&
        upId == other.upId &&
        upName == other.upName &&
        rid == other.rid &&
        rname == other.rname &&
        tid == other.tid &&
        tname == other.tname &&
        aid == other.aid &&
        cid == other.cid &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, upId.hashCode), upName.hashCode),
                                rid.hashCode),
                            rname.hashCode),
                        tid.hashCode),
                    tname.hashCode),
                aid.hashCode),
            cid.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Argument')
          ..add('upId', upId)
          ..add('upName', upName)
          ..add('rid', rid)
          ..add('rname', rname)
          ..add('tid', tid)
          ..add('tname', tname)
          ..add('aid', aid)
          ..add('cid', cid)
          ..add('type', type))
        .toString();
  }
}

class ArgumentBuilder implements Builder<Argument, ArgumentBuilder> {
  _$Argument _$v;

  int _upId;
  int get upId => _$this._upId;
  set upId(int upId) => _$this._upId = upId;

  String _upName;
  String get upName => _$this._upName;
  set upName(String upName) => _$this._upName = upName;

  int _rid;
  int get rid => _$this._rid;
  set rid(int rid) => _$this._rid = rid;

  String _rname;
  String get rname => _$this._rname;
  set rname(String rname) => _$this._rname = rname;

  int _tid;
  int get tid => _$this._tid;
  set tid(int tid) => _$this._tid = tid;

  String _tname;
  String get tname => _$this._tname;
  set tname(String tname) => _$this._tname = tname;

  int _aid;
  int get aid => _$this._aid;
  set aid(int aid) => _$this._aid = aid;

  int _cid;
  int get cid => _$this._cid;
  set cid(int cid) => _$this._cid = cid;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ArgumentBuilder();

  ArgumentBuilder get _$this {
    if (_$v != null) {
      _upId = _$v.upId;
      _upName = _$v.upName;
      _rid = _$v.rid;
      _rname = _$v.rname;
      _tid = _$v.tid;
      _tname = _$v.tname;
      _aid = _$v.aid;
      _cid = _$v.cid;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Argument other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Argument;
  }

  @override
  void update(void Function(ArgumentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Argument build() {
    final _$result = _$v ??
        new _$Argument._(
            upId: upId,
            upName: upName,
            rid: rid,
            rname: rname,
            tid: tid,
            tname: tname,
            aid: aid,
            cid: cid,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
