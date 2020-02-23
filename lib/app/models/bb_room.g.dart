// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_room.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Room> _$roomSerializer = new _$RoomSerializer();

class _$RoomSerializer implements StructuredSerializer<Room> {
  @override
  final Iterable<Type> types = const [Room, _$Room];
  @override
  final String wireName = 'Room';

  @override
  Iterable<Object> serialize(Serializers serializers, Room object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.acceptQuality != null) {
      result
        ..add('accept_quality')
        ..add(serializers.serialize(object.acceptQuality,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.officialVerify != null) {
      result
        ..add('official_verify')
        ..add(serializers.serialize(object.officialVerify,
            specifiedType: const FullType(int)));
    }
    if (object.areaV2Id != null) {
      result
        ..add('area_v2_id')
        ..add(serializers.serialize(object.areaV2Id,
            specifiedType: const FullType(int)));
    }
    if (object.areaV2ParentId != null) {
      result
        ..add('area_v2_parent_id')
        ..add(serializers.serialize(object.areaV2ParentId,
            specifiedType: const FullType(int)));
    }
    if (object.areaV2Name != null) {
      result
        ..add('area_v2_name')
        ..add(serializers.serialize(object.areaV2Name,
            specifiedType: const FullType(String)));
    }
    if (object.areaV2ParentName != null) {
      result
        ..add('area_v2_parent_name')
        ..add(serializers.serialize(object.areaV2ParentName,
            specifiedType: const FullType(String)));
    }
    if (object.broadcastType != null) {
      result
        ..add('broadcast_type')
        ..add(serializers.serialize(object.broadcastType,
            specifiedType: const FullType(int)));
    }
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.currentQuality != null) {
      result
        ..add('current_quality')
        ..add(serializers.serialize(object.currentQuality,
            specifiedType: const FullType(int)));
    }
    if (object.face != null) {
      result
        ..add('face')
        ..add(serializers.serialize(object.face,
            specifiedType: const FullType(String)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.online != null) {
      result
        ..add('online')
        ..add(serializers.serialize(object.online,
            specifiedType: const FullType(int)));
    }
    if (object.pendentRu != null) {
      result
        ..add('pendent_ru')
        ..add(serializers.serialize(object.pendentRu,
            specifiedType: const FullType(String)));
    }
    if (object.pendentRuColor != null) {
      result
        ..add('pendent_ru_color')
        ..add(serializers.serialize(object.pendentRuColor,
            specifiedType: const FullType(String)));
    }
    if (object.pendentRuPic != null) {
      result
        ..add('pendent_ru_pic')
        ..add(serializers.serialize(object.pendentRuPic,
            specifiedType: const FullType(String)));
    }
    if (object.pkId != null) {
      result
        ..add('pk_id')
        ..add(serializers.serialize(object.pkId,
            specifiedType: const FullType(int)));
    }
    if (object.playUrl != null) {
      result
        ..add('play_url')
        ..add(serializers.serialize(object.playUrl,
            specifiedType: const FullType(String)));
    }
    if (object.recType != null) {
      result
        ..add('rec_type')
        ..add(serializers.serialize(object.recType,
            specifiedType: const FullType(int)));
    }
    if (object.roomid != null) {
      result
        ..add('roomid')
        ..add(serializers.serialize(object.roomid,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.uname != null) {
      result
        ..add('uname')
        ..add(serializers.serialize(object.uname,
            specifiedType: const FullType(String)));
    }
    if (object.playUrlH265 != null) {
      result
        ..add('play_url_h265')
        ..add(serializers.serialize(object.playUrlH265,
            specifiedType: const FullType(String)));
    }
    if (object.sessionId != null) {
      result
        ..add('session_id')
        ..add(serializers.serialize(object.sessionId,
            specifiedType: const FullType(String)));
    }
    if (object.groupId != null) {
      result
        ..add('group_id')
        ..add(serializers.serialize(object.groupId,
            specifiedType: const FullType(int)));
    }
    if (object.showCallback != null) {
      result
        ..add('show_callback')
        ..add(serializers.serialize(object.showCallback,
            specifiedType: const FullType(String)));
    }
    if (object.clickCallback != null) {
      result
        ..add('click_callback')
        ..add(serializers.serialize(object.clickCallback,
            specifiedType: const FullType(String)));
    }
    if (object.currentQn != null) {
      result
        ..add('current_qn')
        ..add(serializers.serialize(object.currentQn,
            specifiedType: const FullType(int)));
    }
    if (object.qualityDescription != null) {
      result
        ..add('quality_description')
        ..add(serializers.serialize(object.qualityDescription,
            specifiedType: const FullType(
                BuiltList, const [const FullType(QualityDescription)])));
    }
    if (object.playUrlCard != null) {
      result
        ..add('play_url_card')
        ..add(serializers.serialize(object.playUrlCard,
            specifiedType: const FullType(String)));
    }
    if (object.uid != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(object.uid,
            specifiedType: const FullType(int)));
    }
    if (object.flag != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(object.flag,
            specifiedType: const FullType(int)));
    }
    if (object.pendentList != null) {
      result
        ..add('pendent_list')
        ..add(serializers.serialize(object.pendentList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LivePendent)])));
    }
    return result;
  }

  @override
  Room deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accept_quality':
          result.acceptQuality.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'official_verify':
          result.officialVerify = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_id':
          result.areaV2Id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_parent_id':
          result.areaV2ParentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_name':
          result.areaV2Name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area_v2_parent_name':
          result.areaV2ParentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'broadcast_type':
          result.broadcastType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_quality':
          result.currentQuality = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'face':
          result.face = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'online':
          result.online = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pendent_ru':
          result.pendentRu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pendent_ru_color':
          result.pendentRuColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pendent_ru_pic':
          result.pendentRuPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pk_id':
          result.pkId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'play_url':
          result.playUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rec_type':
          result.recType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'roomid':
          result.roomid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uname':
          result.uname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'play_url_h265':
          result.playUrlH265 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'session_id':
          result.sessionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'group_id':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'show_callback':
          result.showCallback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'click_callback':
          result.clickCallback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_qn':
          result.currentQn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quality_description':
          result.qualityDescription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(QualityDescription)]))
              as BuiltList<Object>);
          break;
        case 'play_url_card':
          result.playUrlCard = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pendent_list':
          result.pendentList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LivePendent)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Room extends Room {
  @override
  final BuiltList<int> acceptQuality;
  @override
  final int officialVerify;
  @override
  final int areaV2Id;
  @override
  final int areaV2ParentId;
  @override
  final String areaV2Name;
  @override
  final String areaV2ParentName;
  @override
  final int broadcastType;
  @override
  final String cover;
  @override
  final int currentQuality;
  @override
  final String face;
  @override
  final String link;
  @override
  final int online;
  @override
  final String pendentRu;
  @override
  final String pendentRuColor;
  @override
  final String pendentRuPic;
  @override
  final int pkId;
  @override
  final String playUrl;
  @override
  final int recType;
  @override
  final int roomid;
  @override
  final String title;
  @override
  final String uname;
  @override
  final String playUrlH265;
  @override
  final String sessionId;
  @override
  final int groupId;
  @override
  final String showCallback;
  @override
  final String clickCallback;
  @override
  final int currentQn;
  @override
  final BuiltList<QualityDescription> qualityDescription;
  @override
  final String playUrlCard;
  @override
  final int uid;
  @override
  final int flag;
  @override
  final BuiltList<LivePendent> pendentList;

  factory _$Room([void Function(RoomBuilder) updates]) =>
      (new RoomBuilder()..update(updates)).build();

  _$Room._(
      {this.acceptQuality,
      this.officialVerify,
      this.areaV2Id,
      this.areaV2ParentId,
      this.areaV2Name,
      this.areaV2ParentName,
      this.broadcastType,
      this.cover,
      this.currentQuality,
      this.face,
      this.link,
      this.online,
      this.pendentRu,
      this.pendentRuColor,
      this.pendentRuPic,
      this.pkId,
      this.playUrl,
      this.recType,
      this.roomid,
      this.title,
      this.uname,
      this.playUrlH265,
      this.sessionId,
      this.groupId,
      this.showCallback,
      this.clickCallback,
      this.currentQn,
      this.qualityDescription,
      this.playUrlCard,
      this.uid,
      this.flag,
      this.pendentList})
      : super._();

  @override
  Room rebuild(void Function(RoomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomBuilder toBuilder() => new RoomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room &&
        acceptQuality == other.acceptQuality &&
        officialVerify == other.officialVerify &&
        areaV2Id == other.areaV2Id &&
        areaV2ParentId == other.areaV2ParentId &&
        areaV2Name == other.areaV2Name &&
        areaV2ParentName == other.areaV2ParentName &&
        broadcastType == other.broadcastType &&
        cover == other.cover &&
        currentQuality == other.currentQuality &&
        face == other.face &&
        link == other.link &&
        online == other.online &&
        pendentRu == other.pendentRu &&
        pendentRuColor == other.pendentRuColor &&
        pendentRuPic == other.pendentRuPic &&
        pkId == other.pkId &&
        playUrl == other.playUrl &&
        recType == other.recType &&
        roomid == other.roomid &&
        title == other.title &&
        uname == other.uname &&
        playUrlH265 == other.playUrlH265 &&
        sessionId == other.sessionId &&
        groupId == other.groupId &&
        showCallback == other.showCallback &&
        clickCallback == other.clickCallback &&
        currentQn == other.currentQn &&
        qualityDescription == other.qualityDescription &&
        playUrlCard == other.playUrlCard &&
        uid == other.uid &&
        flag == other.flag &&
        pendentList == other.pendentList;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, acceptQuality.hashCode), officialVerify.hashCode), areaV2Id.hashCode), areaV2ParentId.hashCode), areaV2Name.hashCode), areaV2ParentName.hashCode), broadcastType.hashCode), cover.hashCode), currentQuality.hashCode), face.hashCode), link.hashCode), online.hashCode), pendentRu.hashCode),
                                                                                pendentRuColor.hashCode),
                                                                            pendentRuPic.hashCode),
                                                                        pkId.hashCode),
                                                                    playUrl.hashCode),
                                                                recType.hashCode),
                                                            roomid.hashCode),
                                                        title.hashCode),
                                                    uname.hashCode),
                                                playUrlH265.hashCode),
                                            sessionId.hashCode),
                                        groupId.hashCode),
                                    showCallback.hashCode),
                                clickCallback.hashCode),
                            currentQn.hashCode),
                        qualityDescription.hashCode),
                    playUrlCard.hashCode),
                uid.hashCode),
            flag.hashCode),
        pendentList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Room')
          ..add('acceptQuality', acceptQuality)
          ..add('officialVerify', officialVerify)
          ..add('areaV2Id', areaV2Id)
          ..add('areaV2ParentId', areaV2ParentId)
          ..add('areaV2Name', areaV2Name)
          ..add('areaV2ParentName', areaV2ParentName)
          ..add('broadcastType', broadcastType)
          ..add('cover', cover)
          ..add('currentQuality', currentQuality)
          ..add('face', face)
          ..add('link', link)
          ..add('online', online)
          ..add('pendentRu', pendentRu)
          ..add('pendentRuColor', pendentRuColor)
          ..add('pendentRuPic', pendentRuPic)
          ..add('pkId', pkId)
          ..add('playUrl', playUrl)
          ..add('recType', recType)
          ..add('roomid', roomid)
          ..add('title', title)
          ..add('uname', uname)
          ..add('playUrlH265', playUrlH265)
          ..add('sessionId', sessionId)
          ..add('groupId', groupId)
          ..add('showCallback', showCallback)
          ..add('clickCallback', clickCallback)
          ..add('currentQn', currentQn)
          ..add('qualityDescription', qualityDescription)
          ..add('playUrlCard', playUrlCard)
          ..add('uid', uid)
          ..add('flag', flag)
          ..add('pendentList', pendentList))
        .toString();
  }
}

class RoomBuilder implements Builder<Room, RoomBuilder> {
  _$Room _$v;

  ListBuilder<int> _acceptQuality;
  ListBuilder<int> get acceptQuality =>
      _$this._acceptQuality ??= new ListBuilder<int>();
  set acceptQuality(ListBuilder<int> acceptQuality) =>
      _$this._acceptQuality = acceptQuality;

  int _officialVerify;
  int get officialVerify => _$this._officialVerify;
  set officialVerify(int officialVerify) =>
      _$this._officialVerify = officialVerify;

  int _areaV2Id;
  int get areaV2Id => _$this._areaV2Id;
  set areaV2Id(int areaV2Id) => _$this._areaV2Id = areaV2Id;

  int _areaV2ParentId;
  int get areaV2ParentId => _$this._areaV2ParentId;
  set areaV2ParentId(int areaV2ParentId) =>
      _$this._areaV2ParentId = areaV2ParentId;

  String _areaV2Name;
  String get areaV2Name => _$this._areaV2Name;
  set areaV2Name(String areaV2Name) => _$this._areaV2Name = areaV2Name;

  String _areaV2ParentName;
  String get areaV2ParentName => _$this._areaV2ParentName;
  set areaV2ParentName(String areaV2ParentName) =>
      _$this._areaV2ParentName = areaV2ParentName;

  int _broadcastType;
  int get broadcastType => _$this._broadcastType;
  set broadcastType(int broadcastType) => _$this._broadcastType = broadcastType;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _currentQuality;
  int get currentQuality => _$this._currentQuality;
  set currentQuality(int currentQuality) =>
      _$this._currentQuality = currentQuality;

  String _face;
  String get face => _$this._face;
  set face(String face) => _$this._face = face;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  int _online;
  int get online => _$this._online;
  set online(int online) => _$this._online = online;

  String _pendentRu;
  String get pendentRu => _$this._pendentRu;
  set pendentRu(String pendentRu) => _$this._pendentRu = pendentRu;

  String _pendentRuColor;
  String get pendentRuColor => _$this._pendentRuColor;
  set pendentRuColor(String pendentRuColor) =>
      _$this._pendentRuColor = pendentRuColor;

  String _pendentRuPic;
  String get pendentRuPic => _$this._pendentRuPic;
  set pendentRuPic(String pendentRuPic) => _$this._pendentRuPic = pendentRuPic;

  int _pkId;
  int get pkId => _$this._pkId;
  set pkId(int pkId) => _$this._pkId = pkId;

  String _playUrl;
  String get playUrl => _$this._playUrl;
  set playUrl(String playUrl) => _$this._playUrl = playUrl;

  int _recType;
  int get recType => _$this._recType;
  set recType(int recType) => _$this._recType = recType;

  int _roomid;
  int get roomid => _$this._roomid;
  set roomid(int roomid) => _$this._roomid = roomid;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _uname;
  String get uname => _$this._uname;
  set uname(String uname) => _$this._uname = uname;

  String _playUrlH265;
  String get playUrlH265 => _$this._playUrlH265;
  set playUrlH265(String playUrlH265) => _$this._playUrlH265 = playUrlH265;

  String _sessionId;
  String get sessionId => _$this._sessionId;
  set sessionId(String sessionId) => _$this._sessionId = sessionId;

  int _groupId;
  int get groupId => _$this._groupId;
  set groupId(int groupId) => _$this._groupId = groupId;

  String _showCallback;
  String get showCallback => _$this._showCallback;
  set showCallback(String showCallback) => _$this._showCallback = showCallback;

  String _clickCallback;
  String get clickCallback => _$this._clickCallback;
  set clickCallback(String clickCallback) =>
      _$this._clickCallback = clickCallback;

  int _currentQn;
  int get currentQn => _$this._currentQn;
  set currentQn(int currentQn) => _$this._currentQn = currentQn;

  ListBuilder<QualityDescription> _qualityDescription;
  ListBuilder<QualityDescription> get qualityDescription =>
      _$this._qualityDescription ??= new ListBuilder<QualityDescription>();
  set qualityDescription(ListBuilder<QualityDescription> qualityDescription) =>
      _$this._qualityDescription = qualityDescription;

  String _playUrlCard;
  String get playUrlCard => _$this._playUrlCard;
  set playUrlCard(String playUrlCard) => _$this._playUrlCard = playUrlCard;

  int _uid;
  int get uid => _$this._uid;
  set uid(int uid) => _$this._uid = uid;

  int _flag;
  int get flag => _$this._flag;
  set flag(int flag) => _$this._flag = flag;

  ListBuilder<LivePendent> _pendentList;
  ListBuilder<LivePendent> get pendentList =>
      _$this._pendentList ??= new ListBuilder<LivePendent>();
  set pendentList(ListBuilder<LivePendent> pendentList) =>
      _$this._pendentList = pendentList;

  RoomBuilder();

  RoomBuilder get _$this {
    if (_$v != null) {
      _acceptQuality = _$v.acceptQuality?.toBuilder();
      _officialVerify = _$v.officialVerify;
      _areaV2Id = _$v.areaV2Id;
      _areaV2ParentId = _$v.areaV2ParentId;
      _areaV2Name = _$v.areaV2Name;
      _areaV2ParentName = _$v.areaV2ParentName;
      _broadcastType = _$v.broadcastType;
      _cover = _$v.cover;
      _currentQuality = _$v.currentQuality;
      _face = _$v.face;
      _link = _$v.link;
      _online = _$v.online;
      _pendentRu = _$v.pendentRu;
      _pendentRuColor = _$v.pendentRuColor;
      _pendentRuPic = _$v.pendentRuPic;
      _pkId = _$v.pkId;
      _playUrl = _$v.playUrl;
      _recType = _$v.recType;
      _roomid = _$v.roomid;
      _title = _$v.title;
      _uname = _$v.uname;
      _playUrlH265 = _$v.playUrlH265;
      _sessionId = _$v.sessionId;
      _groupId = _$v.groupId;
      _showCallback = _$v.showCallback;
      _clickCallback = _$v.clickCallback;
      _currentQn = _$v.currentQn;
      _qualityDescription = _$v.qualityDescription?.toBuilder();
      _playUrlCard = _$v.playUrlCard;
      _uid = _$v.uid;
      _flag = _$v.flag;
      _pendentList = _$v.pendentList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Room other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Room;
  }

  @override
  void update(void Function(RoomBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Room build() {
    _$Room _$result;
    try {
      _$result = _$v ??
          new _$Room._(
              acceptQuality: _acceptQuality?.build(),
              officialVerify: officialVerify,
              areaV2Id: areaV2Id,
              areaV2ParentId: areaV2ParentId,
              areaV2Name: areaV2Name,
              areaV2ParentName: areaV2ParentName,
              broadcastType: broadcastType,
              cover: cover,
              currentQuality: currentQuality,
              face: face,
              link: link,
              online: online,
              pendentRu: pendentRu,
              pendentRuColor: pendentRuColor,
              pendentRuPic: pendentRuPic,
              pkId: pkId,
              playUrl: playUrl,
              recType: recType,
              roomid: roomid,
              title: title,
              uname: uname,
              playUrlH265: playUrlH265,
              sessionId: sessionId,
              groupId: groupId,
              showCallback: showCallback,
              clickCallback: clickCallback,
              currentQn: currentQn,
              qualityDescription: _qualityDescription?.build(),
              playUrlCard: playUrlCard,
              uid: uid,
              flag: flag,
              pendentList: _pendentList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'acceptQuality';
        _acceptQuality?.build();

        _$failedField = 'qualityDescription';
        _qualityDescription?.build();

        _$failedField = 'pendentList';
        _pendentList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Room', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
