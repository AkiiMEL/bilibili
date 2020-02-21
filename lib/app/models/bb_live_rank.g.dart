// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_rank.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveRank> _$liveRankSerializer = new _$LiveRankSerializer();

class _$LiveRankSerializer implements StructuredSerializer<LiveRank> {
  @override
  final Iterable<Type> types = const [LiveRank, _$LiveRank];
  @override
  final String wireName = 'LiveRank';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveRank object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rank != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(object.rank,
            specifiedType: const FullType(int)));
    }
    if (object.uid != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(object.uid,
            specifiedType: const FullType(int)));
    }
    if (object.roomid != null) {
      result
        ..add('roomid')
        ..add(serializers.serialize(object.roomid,
            specifiedType: const FullType(int)));
    }
    if (object.uname != null) {
      result
        ..add('uname')
        ..add(serializers.serialize(object.uname,
            specifiedType: const FullType(String)));
    }
    if (object.face != null) {
      result
        ..add('face')
        ..add(serializers.serialize(object.face,
            specifiedType: const FullType(String)));
    }
    if (object.liveStatus != null) {
      result
        ..add('live_status')
        ..add(serializers.serialize(object.liveStatus,
            specifiedType: const FullType(int)));
    }
    if (object.areaV2ParentId != null) {
      result
        ..add('area_v2_parent_id')
        ..add(serializers.serialize(object.areaV2ParentId,
            specifiedType: const FullType(int)));
    }
    if (object.areaV2ParentName != null) {
      result
        ..add('area_v2_parent_wireName')
        ..add(serializers.serialize(object.areaV2ParentName,
            specifiedType: const FullType(String)));
    }
    if (object.areaV2Id != null) {
      result
        ..add('area_v2_id')
        ..add(serializers.serialize(object.areaV2Id,
            specifiedType: const FullType(int)));
    }
    if (object.areaV2Name != null) {
      result
        ..add('area_v2_wireName')
        ..add(serializers.serialize(object.areaV2Name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LiveRank deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveRankBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'roomid':
          result.roomid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uname':
          result.uname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'face':
          result.face = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'live_status':
          result.liveStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_parent_id':
          result.areaV2ParentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_parent_wireName':
          result.areaV2ParentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area_v2_id':
          result.areaV2Id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_wireName':
          result.areaV2Name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveRank extends LiveRank {
  @override
  final int rank;
  @override
  final int uid;
  @override
  final int roomid;
  @override
  final String uname;
  @override
  final String face;
  @override
  final int liveStatus;
  @override
  final int areaV2ParentId;
  @override
  final String areaV2ParentName;
  @override
  final int areaV2Id;
  @override
  final String areaV2Name;

  factory _$LiveRank([void Function(LiveRankBuilder) updates]) =>
      (new LiveRankBuilder()..update(updates)).build();

  _$LiveRank._(
      {this.rank,
      this.uid,
      this.roomid,
      this.uname,
      this.face,
      this.liveStatus,
      this.areaV2ParentId,
      this.areaV2ParentName,
      this.areaV2Id,
      this.areaV2Name})
      : super._();

  @override
  LiveRank rebuild(void Function(LiveRankBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveRankBuilder toBuilder() => new LiveRankBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveRank &&
        rank == other.rank &&
        uid == other.uid &&
        roomid == other.roomid &&
        uname == other.uname &&
        face == other.face &&
        liveStatus == other.liveStatus &&
        areaV2ParentId == other.areaV2ParentId &&
        areaV2ParentName == other.areaV2ParentName &&
        areaV2Id == other.areaV2Id &&
        areaV2Name == other.areaV2Name;
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
                                $jc($jc($jc(0, rank.hashCode), uid.hashCode),
                                    roomid.hashCode),
                                uname.hashCode),
                            face.hashCode),
                        liveStatus.hashCode),
                    areaV2ParentId.hashCode),
                areaV2ParentName.hashCode),
            areaV2Id.hashCode),
        areaV2Name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveRank')
          ..add('rank', rank)
          ..add('uid', uid)
          ..add('roomid', roomid)
          ..add('uname', uname)
          ..add('face', face)
          ..add('liveStatus', liveStatus)
          ..add('areaV2ParentId', areaV2ParentId)
          ..add('areaV2ParentName', areaV2ParentName)
          ..add('areaV2Id', areaV2Id)
          ..add('areaV2Name', areaV2Name))
        .toString();
  }
}

class LiveRankBuilder implements Builder<LiveRank, LiveRankBuilder> {
  _$LiveRank _$v;

  int _rank;
  int get rank => _$this._rank;
  set rank(int rank) => _$this._rank = rank;

  int _uid;
  int get uid => _$this._uid;
  set uid(int uid) => _$this._uid = uid;

  int _roomid;
  int get roomid => _$this._roomid;
  set roomid(int roomid) => _$this._roomid = roomid;

  String _uname;
  String get uname => _$this._uname;
  set uname(String uname) => _$this._uname = uname;

  String _face;
  String get face => _$this._face;
  set face(String face) => _$this._face = face;

  int _liveStatus;
  int get liveStatus => _$this._liveStatus;
  set liveStatus(int liveStatus) => _$this._liveStatus = liveStatus;

  int _areaV2ParentId;
  int get areaV2ParentId => _$this._areaV2ParentId;
  set areaV2ParentId(int areaV2ParentId) =>
      _$this._areaV2ParentId = areaV2ParentId;

  String _areaV2ParentName;
  String get areaV2ParentName => _$this._areaV2ParentName;
  set areaV2ParentName(String areaV2ParentName) =>
      _$this._areaV2ParentName = areaV2ParentName;

  int _areaV2Id;
  int get areaV2Id => _$this._areaV2Id;
  set areaV2Id(int areaV2Id) => _$this._areaV2Id = areaV2Id;

  String _areaV2Name;
  String get areaV2Name => _$this._areaV2Name;
  set areaV2Name(String areaV2Name) => _$this._areaV2Name = areaV2Name;

  LiveRankBuilder();

  LiveRankBuilder get _$this {
    if (_$v != null) {
      _rank = _$v.rank;
      _uid = _$v.uid;
      _roomid = _$v.roomid;
      _uname = _$v.uname;
      _face = _$v.face;
      _liveStatus = _$v.liveStatus;
      _areaV2ParentId = _$v.areaV2ParentId;
      _areaV2ParentName = _$v.areaV2ParentName;
      _areaV2Id = _$v.areaV2Id;
      _areaV2Name = _$v.areaV2Name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveRank other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveRank;
  }

  @override
  void update(void Function(LiveRankBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveRank build() {
    final _$result = _$v ??
        new _$LiveRank._(
            rank: rank,
            uid: uid,
            roomid: roomid,
            uname: uname,
            face: face,
            liveStatus: liveStatus,
            areaV2ParentId: areaV2ParentId,
            areaV2ParentName: areaV2ParentName,
            areaV2Id: areaV2Id,
            areaV2Name: areaV2Name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
