// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiListItem> _$bangumiListItemSerializer =
    new _$BangumiListItemSerializer();

class _$BangumiListItemSerializer
    implements StructuredSerializer<BangumiListItem> {
  @override
  final Iterable<Type> types = const [BangumiListItem, _$BangumiListItem];
  @override
  final String wireName = 'BangumiListItem';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiListItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.isPreview != null) {
      result
        ..add('is_preview')
        ..add(serializers.serialize(object.isPreview,
            specifiedType: const FullType(int)));
    }
    if (object.itemId != null) {
      result
        ..add('item_id')
        ..add(serializers.serialize(object.itemId,
            specifiedType: const FullType(int)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.report != null) {
      result
        ..add('report')
        ..add(serializers.serialize(object.report,
            specifiedType: const FullType(Report)));
    }
    if (object.sourceContent != null) {
      result
        ..add('source_content')
        ..add(serializers.serialize(object.sourceContent,
            specifiedType: const FullType(SourceContent)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.wid != null) {
      result
        ..add('wid')
        ..add(serializers.serialize(object.wid,
            specifiedType: const FullType(int)));
    }
    if (object.badge != null) {
      result
        ..add('badge')
        ..add(serializers.serialize(object.badge,
            specifiedType: const FullType(String)));
    }
    if (object.badgeType != null) {
      result
        ..add('badge_type')
        ..add(serializers.serialize(object.badgeType,
            specifiedType: const FullType(int)));
    }
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
    if (object.descType != null) {
      result
        ..add('desc_type')
        ..add(serializers.serialize(object.descType,
            specifiedType: const FullType(int)));
    }
    if (object.follow != null) {
      result
        ..add('follow')
        ..add(serializers.serialize(object.follow,
            specifiedType: const FullType(BangumiFollow)));
    }
    if (object.progress != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(object.progress,
            specifiedType: const FullType(WatchProgress)));
    }
    if (object.seasonId != null) {
      result
        ..add('season_id')
        ..add(serializers.serialize(object.seasonId,
            specifiedType: const FullType(int)));
    }
    if (object.seasonType != null) {
      result
        ..add('season_type')
        ..add(serializers.serialize(object.seasonType,
            specifiedType: const FullType(int)));
    }
    if (object.desc2 != null) {
      result
        ..add('desc2')
        ..add(serializers.serialize(object.desc2,
            specifiedType: const FullType(String)));
    }
    if (object.canWatch != null) {
      result
        ..add('can_watch')
        ..add(serializers.serialize(object.canWatch,
            specifiedType: const FullType(int)));
    }
    if (object.isAuto != null) {
      result
        ..add('is_auto')
        ..add(serializers.serialize(object.isAuto,
            specifiedType: const FullType(int)));
    }
    if (object.oid != null) {
      result
        ..add('oid')
        ..add(serializers.serialize(object.oid,
            specifiedType: const FullType(int)));
    }
    if (object.stat != null) {
      result
        ..add('stat')
        ..add(serializers.serialize(object.stat,
            specifiedType: const FullType(BangumiStatus)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(BangumiUserStatus)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.dateTs != null) {
      result
        ..add('date_ts')
        ..add(serializers.serialize(object.dateTs,
            specifiedType: const FullType(int)));
    }
    if (object.dayOfWeek != null) {
      result
        ..add('day_of_week')
        ..add(serializers.serialize(object.dayOfWeek,
            specifiedType: const FullType(int)));
    }
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Trailer)])));
    }
    if (object.isToday != null) {
      result
        ..add('is_today')
        ..add(serializers.serialize(object.isToday,
            specifiedType: const FullType(int)));
    }
    if (object.cards != null) {
      result
        ..add('cards')
        ..add(serializers.serialize(object.cards,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BangumiListItem)])));
    }
    if (object.pts != null) {
      result
        ..add('pts')
        ..add(serializers.serialize(object.pts,
            specifiedType: const FullType(String)));
    }
    if (object.isNew != null) {
      result
        ..add('is_new')
        ..add(serializers.serialize(object.isNew,
            specifiedType: const FullType(int)));
    }
    if (object.cursor != null) {
      result
        ..add('cursor')
        ..add(serializers.serialize(object.cursor,
            specifiedType: const FullType(String)));
    }
    if (object.hat != null) {
      result
        ..add('hat')
        ..add(serializers.serialize(object.hat,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BangumiListItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_preview':
          result.isPreview = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'item_id':
          result.itemId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'report':
          result.report.replace(serializers.deserialize(value,
              specifiedType: const FullType(Report)) as Report);
          break;
        case 'source_content':
          result.sourceContent.replace(serializers.deserialize(value,
              specifiedType: const FullType(SourceContent)) as SourceContent);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wid':
          result.wid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'badge':
          result.badge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badge_type':
          result.badgeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc_type':
          result.descType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'follow':
          result.follow.replace(serializers.deserialize(value,
              specifiedType: const FullType(BangumiFollow)) as BangumiFollow);
          break;
        case 'progress':
          result.progress.replace(serializers.deserialize(value,
              specifiedType: const FullType(WatchProgress)) as WatchProgress);
          break;
        case 'season_id':
          result.seasonId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'season_type':
          result.seasonType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'desc2':
          result.desc2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'can_watch':
          result.canWatch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_auto':
          result.isAuto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stat':
          result.stat.replace(serializers.deserialize(value,
              specifiedType: const FullType(BangumiStatus)) as BangumiStatus);
          break;
        case 'status':
          result.status.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BangumiUserStatus))
              as BangumiUserStatus);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_ts':
          result.dateTs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'day_of_week':
          result.dayOfWeek = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Trailer)]))
              as BuiltList<Object>);
          break;
        case 'is_today':
          result.isToday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cards':
          result.cards.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BangumiListItem)]))
              as BuiltList<Object>);
          break;
        case 'pts':
          result.pts = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_new':
          result.isNew = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cursor':
          result.cursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hat':
          result.hat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiListItem extends BangumiListItem {
  @override
  final String cover;
  @override
  final int isPreview;
  @override
  final int itemId;
  @override
  final String link;
  @override
  final Report report;
  @override
  final SourceContent sourceContent;
  @override
  final String title;
  @override
  final int wid;
  @override
  final String badge;
  @override
  final int badgeType;
  @override
  final String desc;
  @override
  final int descType;
  @override
  final BangumiFollow follow;
  @override
  final WatchProgress progress;
  @override
  final int seasonId;
  @override
  final int seasonType;
  @override
  final String desc2;
  @override
  final int canWatch;
  @override
  final int isAuto;
  @override
  final int oid;
  @override
  final BangumiStatus stat;
  @override
  final BangumiUserStatus status;
  @override
  final String type;
  @override
  final String date;
  @override
  final int dateTs;
  @override
  final int dayOfWeek;
  @override
  final BuiltList<Trailer> episodes;
  @override
  final int isToday;
  @override
  final BuiltList<BangumiListItem> cards;
  @override
  final String pts;
  @override
  final int isNew;
  @override
  final String cursor;
  @override
  final String hat;

  factory _$BangumiListItem([void Function(BangumiListItemBuilder) updates]) =>
      (new BangumiListItemBuilder()..update(updates)).build();

  _$BangumiListItem._(
      {this.cover,
      this.isPreview,
      this.itemId,
      this.link,
      this.report,
      this.sourceContent,
      this.title,
      this.wid,
      this.badge,
      this.badgeType,
      this.desc,
      this.descType,
      this.follow,
      this.progress,
      this.seasonId,
      this.seasonType,
      this.desc2,
      this.canWatch,
      this.isAuto,
      this.oid,
      this.stat,
      this.status,
      this.type,
      this.date,
      this.dateTs,
      this.dayOfWeek,
      this.episodes,
      this.isToday,
      this.cards,
      this.pts,
      this.isNew,
      this.cursor,
      this.hat})
      : super._();

  @override
  BangumiListItem rebuild(void Function(BangumiListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiListItemBuilder toBuilder() =>
      new BangumiListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiListItem &&
        cover == other.cover &&
        isPreview == other.isPreview &&
        itemId == other.itemId &&
        link == other.link &&
        report == other.report &&
        sourceContent == other.sourceContent &&
        title == other.title &&
        wid == other.wid &&
        badge == other.badge &&
        badgeType == other.badgeType &&
        desc == other.desc &&
        descType == other.descType &&
        follow == other.follow &&
        progress == other.progress &&
        seasonId == other.seasonId &&
        seasonType == other.seasonType &&
        desc2 == other.desc2 &&
        canWatch == other.canWatch &&
        isAuto == other.isAuto &&
        oid == other.oid &&
        stat == other.stat &&
        status == other.status &&
        type == other.type &&
        date == other.date &&
        dateTs == other.dateTs &&
        dayOfWeek == other.dayOfWeek &&
        episodes == other.episodes &&
        isToday == other.isToday &&
        cards == other.cards &&
        pts == other.pts &&
        isNew == other.isNew &&
        cursor == other.cursor &&
        hat == other.hat;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, cover.hashCode), isPreview.hashCode), itemId.hashCode), link.hashCode), report.hashCode), sourceContent.hashCode), title.hashCode), wid.hashCode), badge.hashCode), badgeType.hashCode), desc.hashCode), descType.hashCode), follow.hashCode), progress.hashCode),
                                                                                seasonId.hashCode),
                                                                            seasonType.hashCode),
                                                                        desc2.hashCode),
                                                                    canWatch.hashCode),
                                                                isAuto.hashCode),
                                                            oid.hashCode),
                                                        stat.hashCode),
                                                    status.hashCode),
                                                type.hashCode),
                                            date.hashCode),
                                        dateTs.hashCode),
                                    dayOfWeek.hashCode),
                                episodes.hashCode),
                            isToday.hashCode),
                        cards.hashCode),
                    pts.hashCode),
                isNew.hashCode),
            cursor.hashCode),
        hat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiListItem')
          ..add('cover', cover)
          ..add('isPreview', isPreview)
          ..add('itemId', itemId)
          ..add('link', link)
          ..add('report', report)
          ..add('sourceContent', sourceContent)
          ..add('title', title)
          ..add('wid', wid)
          ..add('badge', badge)
          ..add('badgeType', badgeType)
          ..add('desc', desc)
          ..add('descType', descType)
          ..add('follow', follow)
          ..add('progress', progress)
          ..add('seasonId', seasonId)
          ..add('seasonType', seasonType)
          ..add('desc2', desc2)
          ..add('canWatch', canWatch)
          ..add('isAuto', isAuto)
          ..add('oid', oid)
          ..add('stat', stat)
          ..add('status', status)
          ..add('type', type)
          ..add('date', date)
          ..add('dateTs', dateTs)
          ..add('dayOfWeek', dayOfWeek)
          ..add('episodes', episodes)
          ..add('isToday', isToday)
          ..add('cards', cards)
          ..add('pts', pts)
          ..add('isNew', isNew)
          ..add('cursor', cursor)
          ..add('hat', hat))
        .toString();
  }
}

class BangumiListItemBuilder
    implements Builder<BangumiListItem, BangumiListItemBuilder> {
  _$BangumiListItem _$v;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _isPreview;
  int get isPreview => _$this._isPreview;
  set isPreview(int isPreview) => _$this._isPreview = isPreview;

  int _itemId;
  int get itemId => _$this._itemId;
  set itemId(int itemId) => _$this._itemId = itemId;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  ReportBuilder _report;
  ReportBuilder get report => _$this._report ??= new ReportBuilder();
  set report(ReportBuilder report) => _$this._report = report;

  SourceContentBuilder _sourceContent;
  SourceContentBuilder get sourceContent =>
      _$this._sourceContent ??= new SourceContentBuilder();
  set sourceContent(SourceContentBuilder sourceContent) =>
      _$this._sourceContent = sourceContent;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _wid;
  int get wid => _$this._wid;
  set wid(int wid) => _$this._wid = wid;

  String _badge;
  String get badge => _$this._badge;
  set badge(String badge) => _$this._badge = badge;

  int _badgeType;
  int get badgeType => _$this._badgeType;
  set badgeType(int badgeType) => _$this._badgeType = badgeType;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  int _descType;
  int get descType => _$this._descType;
  set descType(int descType) => _$this._descType = descType;

  BangumiFollowBuilder _follow;
  BangumiFollowBuilder get follow =>
      _$this._follow ??= new BangumiFollowBuilder();
  set follow(BangumiFollowBuilder follow) => _$this._follow = follow;

  WatchProgressBuilder _progress;
  WatchProgressBuilder get progress =>
      _$this._progress ??= new WatchProgressBuilder();
  set progress(WatchProgressBuilder progress) => _$this._progress = progress;

  int _seasonId;
  int get seasonId => _$this._seasonId;
  set seasonId(int seasonId) => _$this._seasonId = seasonId;

  int _seasonType;
  int get seasonType => _$this._seasonType;
  set seasonType(int seasonType) => _$this._seasonType = seasonType;

  String _desc2;
  String get desc2 => _$this._desc2;
  set desc2(String desc2) => _$this._desc2 = desc2;

  int _canWatch;
  int get canWatch => _$this._canWatch;
  set canWatch(int canWatch) => _$this._canWatch = canWatch;

  int _isAuto;
  int get isAuto => _$this._isAuto;
  set isAuto(int isAuto) => _$this._isAuto = isAuto;

  int _oid;
  int get oid => _$this._oid;
  set oid(int oid) => _$this._oid = oid;

  BangumiStatusBuilder _stat;
  BangumiStatusBuilder get stat => _$this._stat ??= new BangumiStatusBuilder();
  set stat(BangumiStatusBuilder stat) => _$this._stat = stat;

  BangumiUserStatusBuilder _status;
  BangumiUserStatusBuilder get status =>
      _$this._status ??= new BangumiUserStatusBuilder();
  set status(BangumiUserStatusBuilder status) => _$this._status = status;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _dateTs;
  int get dateTs => _$this._dateTs;
  set dateTs(int dateTs) => _$this._dateTs = dateTs;

  int _dayOfWeek;
  int get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(int dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  ListBuilder<Trailer> _episodes;
  ListBuilder<Trailer> get episodes =>
      _$this._episodes ??= new ListBuilder<Trailer>();
  set episodes(ListBuilder<Trailer> episodes) => _$this._episodes = episodes;

  int _isToday;
  int get isToday => _$this._isToday;
  set isToday(int isToday) => _$this._isToday = isToday;

  ListBuilder<BangumiListItem> _cards;
  ListBuilder<BangumiListItem> get cards =>
      _$this._cards ??= new ListBuilder<BangumiListItem>();
  set cards(ListBuilder<BangumiListItem> cards) => _$this._cards = cards;

  String _pts;
  String get pts => _$this._pts;
  set pts(String pts) => _$this._pts = pts;

  int _isNew;
  int get isNew => _$this._isNew;
  set isNew(int isNew) => _$this._isNew = isNew;

  String _cursor;
  String get cursor => _$this._cursor;
  set cursor(String cursor) => _$this._cursor = cursor;

  String _hat;
  String get hat => _$this._hat;
  set hat(String hat) => _$this._hat = hat;

  BangumiListItemBuilder();

  BangumiListItemBuilder get _$this {
    if (_$v != null) {
      _cover = _$v.cover;
      _isPreview = _$v.isPreview;
      _itemId = _$v.itemId;
      _link = _$v.link;
      _report = _$v.report?.toBuilder();
      _sourceContent = _$v.sourceContent?.toBuilder();
      _title = _$v.title;
      _wid = _$v.wid;
      _badge = _$v.badge;
      _badgeType = _$v.badgeType;
      _desc = _$v.desc;
      _descType = _$v.descType;
      _follow = _$v.follow?.toBuilder();
      _progress = _$v.progress?.toBuilder();
      _seasonId = _$v.seasonId;
      _seasonType = _$v.seasonType;
      _desc2 = _$v.desc2;
      _canWatch = _$v.canWatch;
      _isAuto = _$v.isAuto;
      _oid = _$v.oid;
      _stat = _$v.stat?.toBuilder();
      _status = _$v.status?.toBuilder();
      _type = _$v.type;
      _date = _$v.date;
      _dateTs = _$v.dateTs;
      _dayOfWeek = _$v.dayOfWeek;
      _episodes = _$v.episodes?.toBuilder();
      _isToday = _$v.isToday;
      _cards = _$v.cards?.toBuilder();
      _pts = _$v.pts;
      _isNew = _$v.isNew;
      _cursor = _$v.cursor;
      _hat = _$v.hat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiListItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiListItem;
  }

  @override
  void update(void Function(BangumiListItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiListItem build() {
    _$BangumiListItem _$result;
    try {
      _$result = _$v ??
          new _$BangumiListItem._(
              cover: cover,
              isPreview: isPreview,
              itemId: itemId,
              link: link,
              report: _report?.build(),
              sourceContent: _sourceContent?.build(),
              title: title,
              wid: wid,
              badge: badge,
              badgeType: badgeType,
              desc: desc,
              descType: descType,
              follow: _follow?.build(),
              progress: _progress?.build(),
              seasonId: seasonId,
              seasonType: seasonType,
              desc2: desc2,
              canWatch: canWatch,
              isAuto: isAuto,
              oid: oid,
              stat: _stat?.build(),
              status: _status?.build(),
              type: type,
              date: date,
              dateTs: dateTs,
              dayOfWeek: dayOfWeek,
              episodes: _episodes?.build(),
              isToday: isToday,
              cards: _cards?.build(),
              pts: pts,
              isNew: isNew,
              cursor: cursor,
              hat: hat);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'report';
        _report?.build();
        _$failedField = 'sourceContent';
        _sourceContent?.build();

        _$failedField = 'follow';
        _follow?.build();
        _$failedField = 'progress';
        _progress?.build();

        _$failedField = 'stat';
        _stat?.build();
        _$failedField = 'status';
        _status?.build();

        _$failedField = 'episodes';
        _episodes?.build();

        _$failedField = 'cards';
        _cards?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BangumiListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
