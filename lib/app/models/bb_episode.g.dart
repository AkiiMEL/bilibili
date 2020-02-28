// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_episode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Episode> _$episodeSerializer = new _$EpisodeSerializer();

class _$EpisodeSerializer implements StructuredSerializer<Episode> {
  @override
  final Iterable<Type> types = const [Episode, _$Episode];
  @override
  final String wireName = 'Episode';

  @override
  Iterable<Object> serialize(Serializers serializers, Episode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'badge_type',
      serializers.serialize(object.badgeType,
          specifiedType: const FullType(int)),
    ];
    if (object.aid != null) {
      result
        ..add('aid')
        ..add(serializers.serialize(object.aid,
            specifiedType: const FullType(int)));
    }
    if (object.badge != null) {
      result
        ..add('badge')
        ..add(serializers.serialize(object.badge,
            specifiedType: const FullType(String)));
    }
    if (object.bvid != null) {
      result
        ..add('bvid')
        ..add(serializers.serialize(object.bvid,
            specifiedType: const FullType(String)));
    }
    if (object.cid != null) {
      result
        ..add('cid')
        ..add(serializers.serialize(object.cid,
            specifiedType: const FullType(int)));
    }
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.dimension != null) {
      result
        ..add('dimension')
        ..add(serializers.serialize(object.dimension,
            specifiedType: const FullType(Dimension)));
    }
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.longTitle != null) {
      result
        ..add('long_title')
        ..add(serializers.serialize(object.longTitle,
            specifiedType: const FullType(String)));
    }
    if (object.movieTitle != null) {
      result
        ..add('movie_title')
        ..add(serializers.serialize(object.movieTitle,
            specifiedType: const FullType(String)));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    if (object.rights != null) {
      result
        ..add('rights')
        ..add(serializers.serialize(object.rights,
            specifiedType: const FullType(Copyright)));
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
    if (object.vid != null) {
      result
        ..add('vid')
        ..add(serializers.serialize(object.vid,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Episode deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EpisodeBuilder();

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
        case 'badge':
          result.badge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badge_type':
          result.badgeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bvid':
          result.bvid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cid':
          result.cid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dimension':
          result.dimension.replace(serializers.deserialize(value,
              specifiedType: const FullType(Dimension)) as Dimension);
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'long_title':
          result.longTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'movie_title':
          result.movieTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rights':
          result.rights.replace(serializers.deserialize(value,
              specifiedType: const FullType(Copyright)) as Copyright);
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
        case 'stat':
          result.stat.replace(serializers.deserialize(value,
              specifiedType: const FullType(BangumiStatus)) as BangumiStatus);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vid':
          result.vid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Episode extends Episode {
  @override
  final int aid;
  @override
  final String badge;
  @override
  final int badgeType;
  @override
  final String bvid;
  @override
  final int cid;
  @override
  final String cover;
  @override
  final Dimension dimension;
  @override
  final String from;
  @override
  final int id;
  @override
  final String link;
  @override
  final String longTitle;
  @override
  final String movieTitle;
  @override
  final String releaseDate;
  @override
  final Copyright rights;
  @override
  final String shareCopy;
  @override
  final String shareUrl;
  @override
  final String shortLink;
  @override
  final BangumiStatus stat;
  @override
  final int status;
  @override
  final String subtitle;
  @override
  final String title;
  @override
  final String vid;

  factory _$Episode([void Function(EpisodeBuilder) updates]) =>
      (new EpisodeBuilder()..update(updates)).build();

  _$Episode._(
      {this.aid,
      this.badge,
      this.badgeType,
      this.bvid,
      this.cid,
      this.cover,
      this.dimension,
      this.from,
      this.id,
      this.link,
      this.longTitle,
      this.movieTitle,
      this.releaseDate,
      this.rights,
      this.shareCopy,
      this.shareUrl,
      this.shortLink,
      this.stat,
      this.status,
      this.subtitle,
      this.title,
      this.vid})
      : super._() {
    if (badgeType == null) {
      throw new BuiltValueNullFieldError('Episode', 'badgeType');
    }
  }

  @override
  Episode rebuild(void Function(EpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeBuilder toBuilder() => new EpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Episode &&
        aid == other.aid &&
        badge == other.badge &&
        badgeType == other.badgeType &&
        bvid == other.bvid &&
        cid == other.cid &&
        cover == other.cover &&
        dimension == other.dimension &&
        from == other.from &&
        id == other.id &&
        link == other.link &&
        longTitle == other.longTitle &&
        movieTitle == other.movieTitle &&
        releaseDate == other.releaseDate &&
        rights == other.rights &&
        shareCopy == other.shareCopy &&
        shareUrl == other.shareUrl &&
        shortLink == other.shortLink &&
        stat == other.stat &&
        status == other.status &&
        subtitle == other.subtitle &&
        title == other.title &&
        vid == other.vid;
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
                                                                            $jc($jc($jc($jc(0, aid.hashCode), badge.hashCode), badgeType.hashCode),
                                                                                bvid.hashCode),
                                                                            cid.hashCode),
                                                                        cover.hashCode),
                                                                    dimension.hashCode),
                                                                from.hashCode),
                                                            id.hashCode),
                                                        link.hashCode),
                                                    longTitle.hashCode),
                                                movieTitle.hashCode),
                                            releaseDate.hashCode),
                                        rights.hashCode),
                                    shareCopy.hashCode),
                                shareUrl.hashCode),
                            shortLink.hashCode),
                        stat.hashCode),
                    status.hashCode),
                subtitle.hashCode),
            title.hashCode),
        vid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Episode')
          ..add('aid', aid)
          ..add('badge', badge)
          ..add('badgeType', badgeType)
          ..add('bvid', bvid)
          ..add('cid', cid)
          ..add('cover', cover)
          ..add('dimension', dimension)
          ..add('from', from)
          ..add('id', id)
          ..add('link', link)
          ..add('longTitle', longTitle)
          ..add('movieTitle', movieTitle)
          ..add('releaseDate', releaseDate)
          ..add('rights', rights)
          ..add('shareCopy', shareCopy)
          ..add('shareUrl', shareUrl)
          ..add('shortLink', shortLink)
          ..add('stat', stat)
          ..add('status', status)
          ..add('subtitle', subtitle)
          ..add('title', title)
          ..add('vid', vid))
        .toString();
  }
}

class EpisodeBuilder implements Builder<Episode, EpisodeBuilder> {
  _$Episode _$v;

  int _aid;
  int get aid => _$this._aid;
  set aid(int aid) => _$this._aid = aid;

  String _badge;
  String get badge => _$this._badge;
  set badge(String badge) => _$this._badge = badge;

  int _badgeType;
  int get badgeType => _$this._badgeType;
  set badgeType(int badgeType) => _$this._badgeType = badgeType;

  String _bvid;
  String get bvid => _$this._bvid;
  set bvid(String bvid) => _$this._bvid = bvid;

  int _cid;
  int get cid => _$this._cid;
  set cid(int cid) => _$this._cid = cid;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  DimensionBuilder _dimension;
  DimensionBuilder get dimension =>
      _$this._dimension ??= new DimensionBuilder();
  set dimension(DimensionBuilder dimension) => _$this._dimension = dimension;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _longTitle;
  String get longTitle => _$this._longTitle;
  set longTitle(String longTitle) => _$this._longTitle = longTitle;

  String _movieTitle;
  String get movieTitle => _$this._movieTitle;
  set movieTitle(String movieTitle) => _$this._movieTitle = movieTitle;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  CopyrightBuilder _rights;
  CopyrightBuilder get rights => _$this._rights ??= new CopyrightBuilder();
  set rights(CopyrightBuilder rights) => _$this._rights = rights;

  String _shareCopy;
  String get shareCopy => _$this._shareCopy;
  set shareCopy(String shareCopy) => _$this._shareCopy = shareCopy;

  String _shareUrl;
  String get shareUrl => _$this._shareUrl;
  set shareUrl(String shareUrl) => _$this._shareUrl = shareUrl;

  String _shortLink;
  String get shortLink => _$this._shortLink;
  set shortLink(String shortLink) => _$this._shortLink = shortLink;

  BangumiStatusBuilder _stat;
  BangumiStatusBuilder get stat => _$this._stat ??= new BangumiStatusBuilder();
  set stat(BangumiStatusBuilder stat) => _$this._stat = stat;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _vid;
  String get vid => _$this._vid;
  set vid(String vid) => _$this._vid = vid;

  EpisodeBuilder();

  EpisodeBuilder get _$this {
    if (_$v != null) {
      _aid = _$v.aid;
      _badge = _$v.badge;
      _badgeType = _$v.badgeType;
      _bvid = _$v.bvid;
      _cid = _$v.cid;
      _cover = _$v.cover;
      _dimension = _$v.dimension?.toBuilder();
      _from = _$v.from;
      _id = _$v.id;
      _link = _$v.link;
      _longTitle = _$v.longTitle;
      _movieTitle = _$v.movieTitle;
      _releaseDate = _$v.releaseDate;
      _rights = _$v.rights?.toBuilder();
      _shareCopy = _$v.shareCopy;
      _shareUrl = _$v.shareUrl;
      _shortLink = _$v.shortLink;
      _stat = _$v.stat?.toBuilder();
      _status = _$v.status;
      _subtitle = _$v.subtitle;
      _title = _$v.title;
      _vid = _$v.vid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Episode other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Episode;
  }

  @override
  void update(void Function(EpisodeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Episode build() {
    _$Episode _$result;
    try {
      _$result = _$v ??
          new _$Episode._(
              aid: aid,
              badge: badge,
              badgeType: badgeType,
              bvid: bvid,
              cid: cid,
              cover: cover,
              dimension: _dimension?.build(),
              from: from,
              id: id,
              link: link,
              longTitle: longTitle,
              movieTitle: movieTitle,
              releaseDate: releaseDate,
              rights: _rights?.build(),
              shareCopy: shareCopy,
              shareUrl: shareUrl,
              shortLink: shortLink,
              stat: _stat?.build(),
              status: status,
              subtitle: subtitle,
              title: title,
              vid: vid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dimension';
        _dimension?.build();

        _$failedField = 'rights';
        _rights?.build();

        _$failedField = 'stat';
        _stat?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Episode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
