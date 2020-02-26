// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Bangumi> _$bangumiSerializer = new _$BangumiSerializer();

class _$BangumiSerializer implements StructuredSerializer<Bangumi> {
  @override
  final Iterable<Type> types = const [Bangumi, _$Bangumi];
  @override
  final String wireName = 'Bangumi';

  @override
  Iterable<Object> serialize(Serializers serializers, Bangumi object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.activity != null) {
      result
        ..add('activity')
        ..add(serializers.serialize(object.activity,
            specifiedType: const FullType(Activity)));
    }
    if (object.actor != null) {
      result
        ..add('actor')
        ..add(serializers.serialize(object.actor,
            specifiedType: const FullType(Actor)));
    }
    if (object.alias != null) {
      result
        ..add('alias')
        ..add(serializers.serialize(object.alias,
            specifiedType: const FullType(String)));
    }
    if (object.areas != null) {
      result
        ..add('areas')
        ..add(serializers.serialize(object.areas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Area)])));
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
    if (object.celebrity != null) {
      result
        ..add('celebrity')
        ..add(serializers.serialize(object.celebrity,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.detail != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(object.detail,
            specifiedType: const FullType(String)));
    }
    if (object.dynamicSubtitle != null) {
      result
        ..add('dynamic_subtitle')
        ..add(serializers.serialize(object.dynamicSubtitle,
            specifiedType: const FullType(String)));
    }
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Episode)])));
    }
    if (object.evaluate != null) {
      result
        ..add('evaluate')
        ..add(serializers.serialize(object.evaluate,
            specifiedType: const FullType(String)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.mediaId != null) {
      result
        ..add('media_id')
        ..add(serializers.serialize(object.mediaId,
            specifiedType: const FullType(int)));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(int)));
    }
    if (object.newEp != null) {
      result
        ..add('new_ep')
        ..add(serializers.serialize(object.newEp,
            specifiedType: const FullType(NewEp)));
    }
    if (object.originName != null) {
      result
        ..add('origin_name')
        ..add(serializers.serialize(object.originName,
            specifiedType: const FullType(String)));
    }
    if (object.paster != null) {
      result
        ..add('paster')
        ..add(serializers.serialize(object.paster,
            specifiedType: const FullType(Paster)));
    }
    if (object.payment != null) {
      result
        ..add('payment')
        ..add(serializers.serialize(object.payment,
            specifiedType: const FullType(Payment)));
    }
    if (object.playlist != null) {
      result
        ..add('playlist')
        ..add(serializers.serialize(object.playlist,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Episode)])));
    }
    if (object.publish != null) {
      result
        ..add('publish')
        ..add(serializers.serialize(object.publish,
            specifiedType: const FullType(Publish)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(Rating)));
    }
    if (object.record != null) {
      result
        ..add('record')
        ..add(serializers.serialize(object.record,
            specifiedType: const FullType(String)));
    }
    if (object.relateSection != null) {
      result
        ..add('relate_section')
        ..add(serializers.serialize(object.relateSection,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.rights != null) {
      result
        ..add('rights')
        ..add(serializers.serialize(object.rights,
            specifiedType: const FullType(Copyright)));
    }
    if (object.seasonId != null) {
      result
        ..add('season_id')
        ..add(serializers.serialize(object.seasonId,
            specifiedType: const FullType(int)));
    }
    if (object.seasonTitle != null) {
      result
        ..add('seaon_title')
        ..add(serializers.serialize(object.seasonTitle,
            specifiedType: const FullType(String)));
    }
    if (object.seasons != null) {
      result
        ..add('seasons')
        ..add(serializers.serialize(object.seasons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Season)])));
    }
    if (object.section != null) {
      result
        ..add('section')
        ..add(serializers.serialize(object.section,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Section)])));
    }
    if (object.series != null) {
      result
        ..add('series')
        ..add(serializers.serialize(object.series,
            specifiedType: const FullType(Serial)));
    }
    if (object.shareCopy != null) {
      result
        ..add('share_copy')
        ..add(serializers.serialize(object.shareCopy,
            specifiedType: const FullType(String)));
    }
    if (object.shareUrl != null) {
      result
        ..add('share_url')
        ..add(serializers.serialize(object.shareUrl,
            specifiedType: const FullType(String)));
    }
    if (object.shortLink != null) {
      result
        ..add('short_link')
        ..add(serializers.serialize(object.shortLink,
            specifiedType: const FullType(String)));
    }
    if (object.squareCover != null) {
      result
        ..add('square_cover')
        ..add(serializers.serialize(object.squareCover,
            specifiedType: const FullType(String)));
    }
    if (object.staff != null) {
      result
        ..add('staff')
        ..add(serializers.serialize(object.staff,
            specifiedType: const FullType(Actor)));
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
            specifiedType: const FullType(int)));
    }
    if (object.styles != null) {
      result
        ..add('styles')
        ..add(serializers.serialize(object.styles,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tag)])));
    }
    if (object.subtitle != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.typeName != null) {
      result
        ..add('type_name')
        ..add(serializers.serialize(object.typeName,
            specifiedType: const FullType(String)));
    }
    if (object.userStatus != null) {
      result
        ..add('user_status')
        ..add(serializers.serialize(object.userStatus,
            specifiedType: const FullType(BangumiUserStatus)));
    }
    return result;
  }

  @override
  Bangumi deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'activity':
          result.activity.replace(serializers.deserialize(value,
              specifiedType: const FullType(Activity)) as Activity);
          break;
        case 'actor':
          result.actor.replace(serializers.deserialize(value,
              specifiedType: const FullType(Actor)) as Actor);
          break;
        case 'alias':
          result.alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'areas':
          result.areas.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Area)]))
              as BuiltList<Object>);
          break;
        case 'badge':
          result.badge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badge_type':
          result.badgeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'celebrity':
          result.celebrity = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dynamic_subtitle':
          result.dynamicSubtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Episode)]))
              as BuiltList<Object>);
          break;
        case 'evaluate':
          result.evaluate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_id':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'new_ep':
          result.newEp.replace(serializers.deserialize(value,
              specifiedType: const FullType(NewEp)) as NewEp);
          break;
        case 'origin_name':
          result.originName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paster':
          result.paster.replace(serializers.deserialize(value,
              specifiedType: const FullType(Paster)) as Paster);
          break;
        case 'payment':
          result.payment.replace(serializers.deserialize(value,
              specifiedType: const FullType(Payment)) as Payment);
          break;
        case 'playlist':
          result.playlist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Episode)]))
              as BuiltList<Object>);
          break;
        case 'publish':
          result.publish.replace(serializers.deserialize(value,
              specifiedType: const FullType(Publish)) as Publish);
          break;
        case 'rating':
          result.rating.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rating)) as Rating);
          break;
        case 'record':
          result.record = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'relate_section':
          result.relateSection = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'rights':
          result.rights.replace(serializers.deserialize(value,
              specifiedType: const FullType(Copyright)) as Copyright);
          break;
        case 'season_id':
          result.seasonId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'seaon_title':
          result.seasonTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seasons':
          result.seasons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Season)]))
              as BuiltList<Object>);
          break;
        case 'section':
          result.section.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Section)]))
              as BuiltList<Object>);
          break;
        case 'series':
          result.series.replace(serializers.deserialize(value,
              specifiedType: const FullType(Serial)) as Serial);
          break;
        case 'share_copy':
          result.shareCopy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'share_url':
          result.shareUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'short_link':
          result.shortLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'square_cover':
          result.squareCover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
              specifiedType: const FullType(Actor)) as Actor);
          break;
        case 'stat':
          result.stat.replace(serializers.deserialize(value,
              specifiedType: const FullType(BangumiStatus)) as BangumiStatus);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'styles':
          result.styles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tag)]))
              as BuiltList<Object>);
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type_name':
          result.typeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_status':
          result.userStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BangumiUserStatus))
              as BangumiUserStatus);
          break;
      }
    }

    return result.build();
  }
}

class _$Bangumi extends Bangumi {
  @override
  final Activity activity;
  @override
  final Actor actor;
  @override
  final String alias;
  @override
  final BuiltList<Area> areas;
  @override
  final String badge;
  @override
  final int badgeType;
  @override
  final BuiltList celebrity;
  @override
  final String cover;
  @override
  final String detail;
  @override
  final String dynamicSubtitle;
  @override
  final BuiltList<Episode> episodes;
  @override
  final String evaluate;
  @override
  final String link;
  @override
  final int mediaId;
  @override
  final int mode;
  @override
  final NewEp newEp;
  @override
  final String originName;
  @override
  final Paster paster;
  @override
  final Payment payment;
  @override
  final BuiltList<Episode> playlist;
  @override
  final Publish publish;
  @override
  final Rating rating;
  @override
  final String record;
  @override
  final BuiltList relateSection;
  @override
  final Copyright rights;
  @override
  final int seasonId;
  @override
  final String seasonTitle;
  @override
  final BuiltList<Season> seasons;
  @override
  final BuiltList<Section> section;
  @override
  final Serial series;
  @override
  final String shareCopy;
  @override
  final String shareUrl;
  @override
  final String shortLink;
  @override
  final String squareCover;
  @override
  final Actor staff;
  @override
  final BangumiStatus stat;
  @override
  final int status;
  @override
  final BuiltList<Tag> styles;
  @override
  final String subtitle;
  @override
  final String title;
  @override
  final int total;
  @override
  final int type;
  @override
  final String typeName;
  @override
  final BangumiUserStatus userStatus;

  factory _$Bangumi([void Function(BangumiBuilder) updates]) =>
      (new BangumiBuilder()..update(updates)).build();

  _$Bangumi._(
      {this.activity,
      this.actor,
      this.alias,
      this.areas,
      this.badge,
      this.badgeType,
      this.celebrity,
      this.cover,
      this.detail,
      this.dynamicSubtitle,
      this.episodes,
      this.evaluate,
      this.link,
      this.mediaId,
      this.mode,
      this.newEp,
      this.originName,
      this.paster,
      this.payment,
      this.playlist,
      this.publish,
      this.rating,
      this.record,
      this.relateSection,
      this.rights,
      this.seasonId,
      this.seasonTitle,
      this.seasons,
      this.section,
      this.series,
      this.shareCopy,
      this.shareUrl,
      this.shortLink,
      this.squareCover,
      this.staff,
      this.stat,
      this.status,
      this.styles,
      this.subtitle,
      this.title,
      this.total,
      this.type,
      this.typeName,
      this.userStatus})
      : super._();

  @override
  Bangumi rebuild(void Function(BangumiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiBuilder toBuilder() => new BangumiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bangumi &&
        activity == other.activity &&
        actor == other.actor &&
        alias == other.alias &&
        areas == other.areas &&
        badge == other.badge &&
        badgeType == other.badgeType &&
        celebrity == other.celebrity &&
        cover == other.cover &&
        detail == other.detail &&
        dynamicSubtitle == other.dynamicSubtitle &&
        episodes == other.episodes &&
        evaluate == other.evaluate &&
        link == other.link &&
        mediaId == other.mediaId &&
        mode == other.mode &&
        newEp == other.newEp &&
        originName == other.originName &&
        paster == other.paster &&
        payment == other.payment &&
        playlist == other.playlist &&
        publish == other.publish &&
        rating == other.rating &&
        record == other.record &&
        relateSection == other.relateSection &&
        rights == other.rights &&
        seasonId == other.seasonId &&
        seasonTitle == other.seasonTitle &&
        seasons == other.seasons &&
        section == other.section &&
        series == other.series &&
        shareCopy == other.shareCopy &&
        shareUrl == other.shareUrl &&
        shortLink == other.shortLink &&
        squareCover == other.squareCover &&
        staff == other.staff &&
        stat == other.stat &&
        status == other.status &&
        styles == other.styles &&
        subtitle == other.subtitle &&
        title == other.title &&
        total == other.total &&
        type == other.type &&
        typeName == other.typeName &&
        userStatus == other.userStatus;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, activity.hashCode), actor.hashCode), alias.hashCode), areas.hashCode), badge.hashCode), badgeType.hashCode), celebrity.hashCode), cover.hashCode), detail.hashCode), dynamicSubtitle.hashCode), episodes.hashCode), evaluate.hashCode), link.hashCode), mediaId.hashCode), mode.hashCode), newEp.hashCode), originName.hashCode), paster.hashCode), payment.hashCode), playlist.hashCode), publish.hashCode), rating.hashCode), record.hashCode), relateSection.hashCode), rights.hashCode),
                                                                                seasonId.hashCode),
                                                                            seasonTitle.hashCode),
                                                                        seasons.hashCode),
                                                                    section.hashCode),
                                                                series.hashCode),
                                                            shareCopy.hashCode),
                                                        shareUrl.hashCode),
                                                    shortLink.hashCode),
                                                squareCover.hashCode),
                                            staff.hashCode),
                                        stat.hashCode),
                                    status.hashCode),
                                styles.hashCode),
                            subtitle.hashCode),
                        title.hashCode),
                    total.hashCode),
                type.hashCode),
            typeName.hashCode),
        userStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Bangumi')
          ..add('activity', activity)
          ..add('actor', actor)
          ..add('alias', alias)
          ..add('areas', areas)
          ..add('badge', badge)
          ..add('badgeType', badgeType)
          ..add('celebrity', celebrity)
          ..add('cover', cover)
          ..add('detail', detail)
          ..add('dynamicSubtitle', dynamicSubtitle)
          ..add('episodes', episodes)
          ..add('evaluate', evaluate)
          ..add('link', link)
          ..add('mediaId', mediaId)
          ..add('mode', mode)
          ..add('newEp', newEp)
          ..add('originName', originName)
          ..add('paster', paster)
          ..add('payment', payment)
          ..add('playlist', playlist)
          ..add('publish', publish)
          ..add('rating', rating)
          ..add('record', record)
          ..add('relateSection', relateSection)
          ..add('rights', rights)
          ..add('seasonId', seasonId)
          ..add('seasonTitle', seasonTitle)
          ..add('seasons', seasons)
          ..add('section', section)
          ..add('series', series)
          ..add('shareCopy', shareCopy)
          ..add('shareUrl', shareUrl)
          ..add('shortLink', shortLink)
          ..add('squareCover', squareCover)
          ..add('staff', staff)
          ..add('stat', stat)
          ..add('status', status)
          ..add('styles', styles)
          ..add('subtitle', subtitle)
          ..add('title', title)
          ..add('total', total)
          ..add('type', type)
          ..add('typeName', typeName)
          ..add('userStatus', userStatus))
        .toString();
  }
}

class BangumiBuilder implements Builder<Bangumi, BangumiBuilder> {
  _$Bangumi _$v;

  ActivityBuilder _activity;
  ActivityBuilder get activity => _$this._activity ??= new ActivityBuilder();
  set activity(ActivityBuilder activity) => _$this._activity = activity;

  ActorBuilder _actor;
  ActorBuilder get actor => _$this._actor ??= new ActorBuilder();
  set actor(ActorBuilder actor) => _$this._actor = actor;

  String _alias;
  String get alias => _$this._alias;
  set alias(String alias) => _$this._alias = alias;

  ListBuilder<Area> _areas;
  ListBuilder<Area> get areas => _$this._areas ??= new ListBuilder<Area>();
  set areas(ListBuilder<Area> areas) => _$this._areas = areas;

  String _badge;
  String get badge => _$this._badge;
  set badge(String badge) => _$this._badge = badge;

  int _badgeType;
  int get badgeType => _$this._badgeType;
  set badgeType(int badgeType) => _$this._badgeType = badgeType;

  BuiltList _celebrity;
  BuiltList get celebrity => _$this._celebrity;
  set celebrity(BuiltList celebrity) => _$this._celebrity = celebrity;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  String _detail;
  String get detail => _$this._detail;
  set detail(String detail) => _$this._detail = detail;

  String _dynamicSubtitle;
  String get dynamicSubtitle => _$this._dynamicSubtitle;
  set dynamicSubtitle(String dynamicSubtitle) =>
      _$this._dynamicSubtitle = dynamicSubtitle;

  ListBuilder<Episode> _episodes;
  ListBuilder<Episode> get episodes =>
      _$this._episodes ??= new ListBuilder<Episode>();
  set episodes(ListBuilder<Episode> episodes) => _$this._episodes = episodes;

  String _evaluate;
  String get evaluate => _$this._evaluate;
  set evaluate(String evaluate) => _$this._evaluate = evaluate;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  int _mediaId;
  int get mediaId => _$this._mediaId;
  set mediaId(int mediaId) => _$this._mediaId = mediaId;

  int _mode;
  int get mode => _$this._mode;
  set mode(int mode) => _$this._mode = mode;

  NewEpBuilder _newEp;
  NewEpBuilder get newEp => _$this._newEp ??= new NewEpBuilder();
  set newEp(NewEpBuilder newEp) => _$this._newEp = newEp;

  String _originName;
  String get originName => _$this._originName;
  set originName(String originName) => _$this._originName = originName;

  PasterBuilder _paster;
  PasterBuilder get paster => _$this._paster ??= new PasterBuilder();
  set paster(PasterBuilder paster) => _$this._paster = paster;

  PaymentBuilder _payment;
  PaymentBuilder get payment => _$this._payment ??= new PaymentBuilder();
  set payment(PaymentBuilder payment) => _$this._payment = payment;

  ListBuilder<Episode> _playlist;
  ListBuilder<Episode> get playlist =>
      _$this._playlist ??= new ListBuilder<Episode>();
  set playlist(ListBuilder<Episode> playlist) => _$this._playlist = playlist;

  PublishBuilder _publish;
  PublishBuilder get publish => _$this._publish ??= new PublishBuilder();
  set publish(PublishBuilder publish) => _$this._publish = publish;

  RatingBuilder _rating;
  RatingBuilder get rating => _$this._rating ??= new RatingBuilder();
  set rating(RatingBuilder rating) => _$this._rating = rating;

  String _record;
  String get record => _$this._record;
  set record(String record) => _$this._record = record;

  BuiltList _relateSection;
  BuiltList get relateSection => _$this._relateSection;
  set relateSection(BuiltList relateSection) =>
      _$this._relateSection = relateSection;

  CopyrightBuilder _rights;
  CopyrightBuilder get rights => _$this._rights ??= new CopyrightBuilder();
  set rights(CopyrightBuilder rights) => _$this._rights = rights;

  int _seasonId;
  int get seasonId => _$this._seasonId;
  set seasonId(int seasonId) => _$this._seasonId = seasonId;

  String _seasonTitle;
  String get seasonTitle => _$this._seasonTitle;
  set seasonTitle(String seasonTitle) => _$this._seasonTitle = seasonTitle;

  ListBuilder<Season> _seasons;
  ListBuilder<Season> get seasons =>
      _$this._seasons ??= new ListBuilder<Season>();
  set seasons(ListBuilder<Season> seasons) => _$this._seasons = seasons;

  ListBuilder<Section> _section;
  ListBuilder<Section> get section =>
      _$this._section ??= new ListBuilder<Section>();
  set section(ListBuilder<Section> section) => _$this._section = section;

  SerialBuilder _series;
  SerialBuilder get series => _$this._series ??= new SerialBuilder();
  set series(SerialBuilder series) => _$this._series = series;

  String _shareCopy;
  String get shareCopy => _$this._shareCopy;
  set shareCopy(String shareCopy) => _$this._shareCopy = shareCopy;

  String _shareUrl;
  String get shareUrl => _$this._shareUrl;
  set shareUrl(String shareUrl) => _$this._shareUrl = shareUrl;

  String _shortLink;
  String get shortLink => _$this._shortLink;
  set shortLink(String shortLink) => _$this._shortLink = shortLink;

  String _squareCover;
  String get squareCover => _$this._squareCover;
  set squareCover(String squareCover) => _$this._squareCover = squareCover;

  ActorBuilder _staff;
  ActorBuilder get staff => _$this._staff ??= new ActorBuilder();
  set staff(ActorBuilder staff) => _$this._staff = staff;

  BangumiStatusBuilder _stat;
  BangumiStatusBuilder get stat => _$this._stat ??= new BangumiStatusBuilder();
  set stat(BangumiStatusBuilder stat) => _$this._stat = stat;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<Tag> _styles;
  ListBuilder<Tag> get styles => _$this._styles ??= new ListBuilder<Tag>();
  set styles(ListBuilder<Tag> styles) => _$this._styles = styles;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _typeName;
  String get typeName => _$this._typeName;
  set typeName(String typeName) => _$this._typeName = typeName;

  BangumiUserStatusBuilder _userStatus;
  BangumiUserStatusBuilder get userStatus =>
      _$this._userStatus ??= new BangumiUserStatusBuilder();
  set userStatus(BangumiUserStatusBuilder userStatus) =>
      _$this._userStatus = userStatus;

  BangumiBuilder();

  BangumiBuilder get _$this {
    if (_$v != null) {
      _activity = _$v.activity?.toBuilder();
      _actor = _$v.actor?.toBuilder();
      _alias = _$v.alias;
      _areas = _$v.areas?.toBuilder();
      _badge = _$v.badge;
      _badgeType = _$v.badgeType;
      _celebrity = _$v.celebrity;
      _cover = _$v.cover;
      _detail = _$v.detail;
      _dynamicSubtitle = _$v.dynamicSubtitle;
      _episodes = _$v.episodes?.toBuilder();
      _evaluate = _$v.evaluate;
      _link = _$v.link;
      _mediaId = _$v.mediaId;
      _mode = _$v.mode;
      _newEp = _$v.newEp?.toBuilder();
      _originName = _$v.originName;
      _paster = _$v.paster?.toBuilder();
      _payment = _$v.payment?.toBuilder();
      _playlist = _$v.playlist?.toBuilder();
      _publish = _$v.publish?.toBuilder();
      _rating = _$v.rating?.toBuilder();
      _record = _$v.record;
      _relateSection = _$v.relateSection;
      _rights = _$v.rights?.toBuilder();
      _seasonId = _$v.seasonId;
      _seasonTitle = _$v.seasonTitle;
      _seasons = _$v.seasons?.toBuilder();
      _section = _$v.section?.toBuilder();
      _series = _$v.series?.toBuilder();
      _shareCopy = _$v.shareCopy;
      _shareUrl = _$v.shareUrl;
      _shortLink = _$v.shortLink;
      _squareCover = _$v.squareCover;
      _staff = _$v.staff?.toBuilder();
      _stat = _$v.stat?.toBuilder();
      _status = _$v.status;
      _styles = _$v.styles?.toBuilder();
      _subtitle = _$v.subtitle;
      _title = _$v.title;
      _total = _$v.total;
      _type = _$v.type;
      _typeName = _$v.typeName;
      _userStatus = _$v.userStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bangumi other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Bangumi;
  }

  @override
  void update(void Function(BangumiBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Bangumi build() {
    _$Bangumi _$result;
    try {
      _$result = _$v ??
          new _$Bangumi._(
              activity: _activity?.build(),
              actor: _actor?.build(),
              alias: alias,
              areas: _areas?.build(),
              badge: badge,
              badgeType: badgeType,
              celebrity: celebrity,
              cover: cover,
              detail: detail,
              dynamicSubtitle: dynamicSubtitle,
              episodes: _episodes?.build(),
              evaluate: evaluate,
              link: link,
              mediaId: mediaId,
              mode: mode,
              newEp: _newEp?.build(),
              originName: originName,
              paster: _paster?.build(),
              payment: _payment?.build(),
              playlist: _playlist?.build(),
              publish: _publish?.build(),
              rating: _rating?.build(),
              record: record,
              relateSection: relateSection,
              rights: _rights?.build(),
              seasonId: seasonId,
              seasonTitle: seasonTitle,
              seasons: _seasons?.build(),
              section: _section?.build(),
              series: _series?.build(),
              shareCopy: shareCopy,
              shareUrl: shareUrl,
              shortLink: shortLink,
              squareCover: squareCover,
              staff: _staff?.build(),
              stat: _stat?.build(),
              status: status,
              styles: _styles?.build(),
              subtitle: subtitle,
              title: title,
              total: total,
              type: type,
              typeName: typeName,
              userStatus: _userStatus?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'activity';
        _activity?.build();
        _$failedField = 'actor';
        _actor?.build();

        _$failedField = 'areas';
        _areas?.build();

        _$failedField = 'episodes';
        _episodes?.build();

        _$failedField = 'newEp';
        _newEp?.build();

        _$failedField = 'paster';
        _paster?.build();
        _$failedField = 'payment';
        _payment?.build();
        _$failedField = 'playlist';
        _playlist?.build();
        _$failedField = 'publish';
        _publish?.build();
        _$failedField = 'rating';
        _rating?.build();

        _$failedField = 'rights';
        _rights?.build();

        _$failedField = 'seasons';
        _seasons?.build();
        _$failedField = 'section';
        _section?.build();
        _$failedField = 'series';
        _series?.build();

        _$failedField = 'staff';
        _staff?.build();
        _$failedField = 'stat';
        _stat?.build();

        _$failedField = 'styles';
        _styles?.build();

        _$failedField = 'userStatus';
        _userStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Bangumi', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
