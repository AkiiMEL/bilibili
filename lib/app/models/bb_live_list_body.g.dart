// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_list_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveListBody> _$liveListBodySerializer =
    new _$LiveListBodySerializer();

class _$LiveListBodySerializer implements StructuredSerializer<LiveListBody> {
  @override
  final Iterable<Type> types = const [LiveListBody, _$LiveListBody];
  @override
  final String wireName = 'LiveListBody';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveListBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.hourRank != null) {
      result
        ..add('hour_rank')
        ..add(serializers.serialize(object.hourRank,
            specifiedType: const FullType(BuiltList, const [
              const FullType(LiveGroup, const [const FullType(LiveRank)])
            ])));
    }
    if (object.seaPatrol != null) {
      result
        ..add('sea_patrol')
        ..add(serializers.serialize(object.seaPatrol,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.myTag != null) {
      result
        ..add('my_tag')
        ..add(serializers.serialize(object.myTag,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.myIdol != null) {
      result
        ..add('my_idol')
        ..add(serializers.serialize(object.myIdol,
            specifiedType: const FullType(BuiltList, const [
              const FullType(LiveGroup, const [const FullType(Room)])
            ])));
    }
    if (object.roomList != null) {
      result
        ..add('room_list')
        ..add(serializers.serialize(object.roomList,
            specifiedType: const FullType(BuiltList, const [
              const FullType(LiveGroup, const [const FullType(Room)])
            ])));
    }
    if (object.activityCard != null) {
      result
        ..add('activity_card')
        ..add(serializers.serialize(object.activityCard,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.interval != null) {
      result
        ..add('interval')
        ..add(serializers.serialize(object.interval,
            specifiedType: const FullType(int)));
    }
    if (object.areaEntranceV2 != null) {
      result
        ..add('area_entrance_v2')
        ..add(serializers.serialize(object.areaEntranceV2,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  LiveGroup, const [const FullType(LiveAreaEntrance)])
            ])));
    }
    if (object.areaEntrance != null) {
      result
        ..add('area_entrance')
        ..add(serializers.serialize(object.areaEntrance,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.banner != null) {
      result
        ..add('banner')
        ..add(serializers.serialize(object.banner,
            specifiedType: const FullType(BuiltList, const [
              const FullType(LiveGroup, const [const FullType(LiveAd)])
            ])));
    }
    if (object.activityCardV2 != null) {
      result
        ..add('activity_card_v2')
        ..add(serializers.serialize(object.activityCardV2,
            specifiedType: const FullType(BuiltList, const [
              const FullType(LiveGroup, const [const FullType(LiveActivity)])
            ])));
    }
    if (object.isSkyHorseGray != null) {
      result
        ..add('is_sky_horse_gray')
        ..add(serializers.serialize(object.isSkyHorseGray,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LiveListBody deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveListBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hour_rank':
          result.hourRank.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(LiveGroup, const [const FullType(LiveRank)])
              ])) as BuiltList<Object>);
          break;
        case 'sea_patrol':
          result.seaPatrol = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'my_tag':
          result.myTag = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'my_idol':
          result.myIdol.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(LiveGroup, const [const FullType(Room)])
              ])) as BuiltList<Object>);
          break;
        case 'room_list':
          result.roomList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(LiveGroup, const [const FullType(Room)])
              ])) as BuiltList<Object>);
          break;
        case 'activity_card':
          result.activityCard = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_entrance_v2':
          result.areaEntranceV2.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    LiveGroup, const [const FullType(LiveAreaEntrance)])
              ])) as BuiltList<Object>);
          break;
        case 'area_entrance':
          result.areaEntrance = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'banner':
          result.banner.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(LiveGroup, const [const FullType(LiveAd)])
              ])) as BuiltList<Object>);
          break;
        case 'activity_card_v2':
          result.activityCardV2.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(LiveGroup, const [const FullType(LiveActivity)])
              ])) as BuiltList<Object>);
          break;
        case 'is_sky_horse_gray':
          result.isSkyHorseGray = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveListBody extends LiveListBody {
  @override
  final BuiltList<LiveGroup<LiveRank>> hourRank;
  @override
  final BuiltList seaPatrol;
  @override
  final BuiltList myTag;
  @override
  final BuiltList<LiveGroup<Room>> myIdol;
  @override
  final BuiltList<LiveGroup<Room>> roomList;
  @override
  final BuiltList activityCard;
  @override
  final int interval;
  @override
  final BuiltList<LiveGroup<LiveAreaEntrance>> areaEntranceV2;
  @override
  final BuiltList areaEntrance;
  @override
  final BuiltList<LiveGroup<LiveAd>> banner;
  @override
  final BuiltList<LiveGroup<LiveActivity>> activityCardV2;
  @override
  final int isSkyHorseGray;

  factory _$LiveListBody([void Function(LiveListBodyBuilder) updates]) =>
      (new LiveListBodyBuilder()..update(updates)).build();

  _$LiveListBody._(
      {this.hourRank,
      this.seaPatrol,
      this.myTag,
      this.myIdol,
      this.roomList,
      this.activityCard,
      this.interval,
      this.areaEntranceV2,
      this.areaEntrance,
      this.banner,
      this.activityCardV2,
      this.isSkyHorseGray})
      : super._();

  @override
  LiveListBody rebuild(void Function(LiveListBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveListBodyBuilder toBuilder() => new LiveListBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveListBody &&
        hourRank == other.hourRank &&
        seaPatrol == other.seaPatrol &&
        myTag == other.myTag &&
        myIdol == other.myIdol &&
        roomList == other.roomList &&
        activityCard == other.activityCard &&
        interval == other.interval &&
        areaEntranceV2 == other.areaEntranceV2 &&
        areaEntrance == other.areaEntrance &&
        banner == other.banner &&
        activityCardV2 == other.activityCardV2 &&
        isSkyHorseGray == other.isSkyHorseGray;
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
                                        $jc(
                                            $jc($jc(0, hourRank.hashCode),
                                                seaPatrol.hashCode),
                                            myTag.hashCode),
                                        myIdol.hashCode),
                                    roomList.hashCode),
                                activityCard.hashCode),
                            interval.hashCode),
                        areaEntranceV2.hashCode),
                    areaEntrance.hashCode),
                banner.hashCode),
            activityCardV2.hashCode),
        isSkyHorseGray.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveListBody')
          ..add('hourRank', hourRank)
          ..add('seaPatrol', seaPatrol)
          ..add('myTag', myTag)
          ..add('myIdol', myIdol)
          ..add('roomList', roomList)
          ..add('activityCard', activityCard)
          ..add('interval', interval)
          ..add('areaEntranceV2', areaEntranceV2)
          ..add('areaEntrance', areaEntrance)
          ..add('banner', banner)
          ..add('activityCardV2', activityCardV2)
          ..add('isSkyHorseGray', isSkyHorseGray))
        .toString();
  }
}

class LiveListBodyBuilder
    implements Builder<LiveListBody, LiveListBodyBuilder> {
  _$LiveListBody _$v;

  ListBuilder<LiveGroup<LiveRank>> _hourRank;
  ListBuilder<LiveGroup<LiveRank>> get hourRank =>
      _$this._hourRank ??= new ListBuilder<LiveGroup<LiveRank>>();
  set hourRank(ListBuilder<LiveGroup<LiveRank>> hourRank) =>
      _$this._hourRank = hourRank;

  BuiltList _seaPatrol;
  BuiltList get seaPatrol => _$this._seaPatrol;
  set seaPatrol(BuiltList seaPatrol) => _$this._seaPatrol = seaPatrol;

  BuiltList _myTag;
  BuiltList get myTag => _$this._myTag;
  set myTag(BuiltList myTag) => _$this._myTag = myTag;

  ListBuilder<LiveGroup<Room>> _myIdol;
  ListBuilder<LiveGroup<Room>> get myIdol =>
      _$this._myIdol ??= new ListBuilder<LiveGroup<Room>>();
  set myIdol(ListBuilder<LiveGroup<Room>> myIdol) => _$this._myIdol = myIdol;

  ListBuilder<LiveGroup<Room>> _roomList;
  ListBuilder<LiveGroup<Room>> get roomList =>
      _$this._roomList ??= new ListBuilder<LiveGroup<Room>>();
  set roomList(ListBuilder<LiveGroup<Room>> roomList) =>
      _$this._roomList = roomList;

  BuiltList _activityCard;
  BuiltList get activityCard => _$this._activityCard;
  set activityCard(BuiltList activityCard) =>
      _$this._activityCard = activityCard;

  int _interval;
  int get interval => _$this._interval;
  set interval(int interval) => _$this._interval = interval;

  ListBuilder<LiveGroup<LiveAreaEntrance>> _areaEntranceV2;
  ListBuilder<LiveGroup<LiveAreaEntrance>> get areaEntranceV2 =>
      _$this._areaEntranceV2 ??= new ListBuilder<LiveGroup<LiveAreaEntrance>>();
  set areaEntranceV2(ListBuilder<LiveGroup<LiveAreaEntrance>> areaEntranceV2) =>
      _$this._areaEntranceV2 = areaEntranceV2;

  BuiltList _areaEntrance;
  BuiltList get areaEntrance => _$this._areaEntrance;
  set areaEntrance(BuiltList areaEntrance) =>
      _$this._areaEntrance = areaEntrance;

  ListBuilder<LiveGroup<LiveAd>> _banner;
  ListBuilder<LiveGroup<LiveAd>> get banner =>
      _$this._banner ??= new ListBuilder<LiveGroup<LiveAd>>();
  set banner(ListBuilder<LiveGroup<LiveAd>> banner) => _$this._banner = banner;

  ListBuilder<LiveGroup<LiveActivity>> _activityCardV2;
  ListBuilder<LiveGroup<LiveActivity>> get activityCardV2 =>
      _$this._activityCardV2 ??= new ListBuilder<LiveGroup<LiveActivity>>();
  set activityCardV2(ListBuilder<LiveGroup<LiveActivity>> activityCardV2) =>
      _$this._activityCardV2 = activityCardV2;

  int _isSkyHorseGray;
  int get isSkyHorseGray => _$this._isSkyHorseGray;
  set isSkyHorseGray(int isSkyHorseGray) =>
      _$this._isSkyHorseGray = isSkyHorseGray;

  LiveListBodyBuilder();

  LiveListBodyBuilder get _$this {
    if (_$v != null) {
      _hourRank = _$v.hourRank?.toBuilder();
      _seaPatrol = _$v.seaPatrol;
      _myTag = _$v.myTag;
      _myIdol = _$v.myIdol?.toBuilder();
      _roomList = _$v.roomList?.toBuilder();
      _activityCard = _$v.activityCard;
      _interval = _$v.interval;
      _areaEntranceV2 = _$v.areaEntranceV2?.toBuilder();
      _areaEntrance = _$v.areaEntrance;
      _banner = _$v.banner?.toBuilder();
      _activityCardV2 = _$v.activityCardV2?.toBuilder();
      _isSkyHorseGray = _$v.isSkyHorseGray;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveListBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveListBody;
  }

  @override
  void update(void Function(LiveListBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveListBody build() {
    _$LiveListBody _$result;
    try {
      _$result = _$v ??
          new _$LiveListBody._(
              hourRank: _hourRank?.build(),
              seaPatrol: seaPatrol,
              myTag: myTag,
              myIdol: _myIdol?.build(),
              roomList: _roomList?.build(),
              activityCard: activityCard,
              interval: interval,
              areaEntranceV2: _areaEntranceV2?.build(),
              areaEntrance: areaEntrance,
              banner: _banner?.build(),
              activityCardV2: _activityCardV2?.build(),
              isSkyHorseGray: isSkyHorseGray);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'hourRank';
        _hourRank?.build();

        _$failedField = 'myIdol';
        _myIdol?.build();
        _$failedField = 'roomList';
        _roomList?.build();

        _$failedField = 'areaEntranceV2';
        _areaEntranceV2?.build();

        _$failedField = 'banner';
        _banner?.build();
        _$failedField = 'activityCardV2';
        _activityCardV2?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LiveListBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
