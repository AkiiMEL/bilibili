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
    final result = <Object>[];
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.delay != null) {
      result
        ..add('delay')
        ..add(serializers.serialize(object.delay,
            specifiedType: const FullType(int)));
    }
    if (object.delayId != null) {
      result
        ..add('delay_id')
        ..add(serializers.serialize(object.delayId,
            specifiedType: const FullType(int)));
    }
    if (object.delayIndex != null) {
      result
        ..add('delay_index')
        ..add(serializers.serialize(object.delayIndex,
            specifiedType: const FullType(String)));
    }
    if (object.delayReason != null) {
      result
        ..add('delay_reason')
        ..add(serializers.serialize(object.delayReason,
            specifiedType: const FullType(String)));
    }
    if (object.episodeId != null) {
      result
        ..add('episode_id')
        ..add(serializers.serialize(object.episodeId,
            specifiedType: const FullType(int)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.pubIndex != null) {
      result
        ..add('pub_index')
        ..add(serializers.serialize(object.pubIndex,
            specifiedType: const FullType(String)));
    }
    if (object.pubTime != null) {
      result
        ..add('pub_time')
        ..add(serializers.serialize(object.pubTime,
            specifiedType: const FullType(String)));
    }
    if (object.pubTs != null) {
      result
        ..add('pub_ts')
        ..add(serializers.serialize(object.pubTs,
            specifiedType: const FullType(int)));
    }
    if (object.published != null) {
      result
        ..add('published')
        ..add(serializers.serialize(object.published,
            specifiedType: const FullType(int)));
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
    if (object.squareCover != null) {
      result
        ..add('square_cover')
        ..add(serializers.serialize(object.squareCover,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
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
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delay':
          result.delay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'delay_id':
          result.delayId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'delay_index':
          result.delayIndex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delay_reason':
          result.delayReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episode_id':
          result.episodeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pub_index':
          result.pubIndex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pub_time':
          result.pubTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pub_ts':
          result.pubTs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'season_id':
          result.seasonId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'season_type':
          result.seasonType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'square_cover':
          result.squareCover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Episode extends Episode {
  @override
  final String cover;
  @override
  final int delay;
  @override
  final int delayId;
  @override
  final String delayIndex;
  @override
  final String delayReason;
  @override
  final int episodeId;
  @override
  final String link;
  @override
  final String pubIndex;
  @override
  final String pubTime;
  @override
  final int pubTs;
  @override
  final int published;
  @override
  final int seasonId;
  @override
  final int seasonType;
  @override
  final String squareCover;
  @override
  final String title;

  factory _$Episode([void Function(EpisodeBuilder) updates]) =>
      (new EpisodeBuilder()..update(updates)).build();

  _$Episode._(
      {this.cover,
      this.delay,
      this.delayId,
      this.delayIndex,
      this.delayReason,
      this.episodeId,
      this.link,
      this.pubIndex,
      this.pubTime,
      this.pubTs,
      this.published,
      this.seasonId,
      this.seasonType,
      this.squareCover,
      this.title})
      : super._();

  @override
  Episode rebuild(void Function(EpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeBuilder toBuilder() => new EpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Episode &&
        cover == other.cover &&
        delay == other.delay &&
        delayId == other.delayId &&
        delayIndex == other.delayIndex &&
        delayReason == other.delayReason &&
        episodeId == other.episodeId &&
        link == other.link &&
        pubIndex == other.pubIndex &&
        pubTime == other.pubTime &&
        pubTs == other.pubTs &&
        published == other.published &&
        seasonId == other.seasonId &&
        seasonType == other.seasonType &&
        squareCover == other.squareCover &&
        title == other.title;
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
                                                            $jc(0,
                                                                cover.hashCode),
                                                            delay.hashCode),
                                                        delayId.hashCode),
                                                    delayIndex.hashCode),
                                                delayReason.hashCode),
                                            episodeId.hashCode),
                                        link.hashCode),
                                    pubIndex.hashCode),
                                pubTime.hashCode),
                            pubTs.hashCode),
                        published.hashCode),
                    seasonId.hashCode),
                seasonType.hashCode),
            squareCover.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Episode')
          ..add('cover', cover)
          ..add('delay', delay)
          ..add('delayId', delayId)
          ..add('delayIndex', delayIndex)
          ..add('delayReason', delayReason)
          ..add('episodeId', episodeId)
          ..add('link', link)
          ..add('pubIndex', pubIndex)
          ..add('pubTime', pubTime)
          ..add('pubTs', pubTs)
          ..add('published', published)
          ..add('seasonId', seasonId)
          ..add('seasonType', seasonType)
          ..add('squareCover', squareCover)
          ..add('title', title))
        .toString();
  }
}

class EpisodeBuilder implements Builder<Episode, EpisodeBuilder> {
  _$Episode _$v;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _delay;
  int get delay => _$this._delay;
  set delay(int delay) => _$this._delay = delay;

  int _delayId;
  int get delayId => _$this._delayId;
  set delayId(int delayId) => _$this._delayId = delayId;

  String _delayIndex;
  String get delayIndex => _$this._delayIndex;
  set delayIndex(String delayIndex) => _$this._delayIndex = delayIndex;

  String _delayReason;
  String get delayReason => _$this._delayReason;
  set delayReason(String delayReason) => _$this._delayReason = delayReason;

  int _episodeId;
  int get episodeId => _$this._episodeId;
  set episodeId(int episodeId) => _$this._episodeId = episodeId;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _pubIndex;
  String get pubIndex => _$this._pubIndex;
  set pubIndex(String pubIndex) => _$this._pubIndex = pubIndex;

  String _pubTime;
  String get pubTime => _$this._pubTime;
  set pubTime(String pubTime) => _$this._pubTime = pubTime;

  int _pubTs;
  int get pubTs => _$this._pubTs;
  set pubTs(int pubTs) => _$this._pubTs = pubTs;

  int _published;
  int get published => _$this._published;
  set published(int published) => _$this._published = published;

  int _seasonId;
  int get seasonId => _$this._seasonId;
  set seasonId(int seasonId) => _$this._seasonId = seasonId;

  int _seasonType;
  int get seasonType => _$this._seasonType;
  set seasonType(int seasonType) => _$this._seasonType = seasonType;

  String _squareCover;
  String get squareCover => _$this._squareCover;
  set squareCover(String squareCover) => _$this._squareCover = squareCover;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  EpisodeBuilder();

  EpisodeBuilder get _$this {
    if (_$v != null) {
      _cover = _$v.cover;
      _delay = _$v.delay;
      _delayId = _$v.delayId;
      _delayIndex = _$v.delayIndex;
      _delayReason = _$v.delayReason;
      _episodeId = _$v.episodeId;
      _link = _$v.link;
      _pubIndex = _$v.pubIndex;
      _pubTime = _$v.pubTime;
      _pubTs = _$v.pubTs;
      _published = _$v.published;
      _seasonId = _$v.seasonId;
      _seasonType = _$v.seasonType;
      _squareCover = _$v.squareCover;
      _title = _$v.title;
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
    final _$result = _$v ??
        new _$Episode._(
            cover: cover,
            delay: delay,
            delayId: delayId,
            delayIndex: delayIndex,
            delayReason: delayReason,
            episodeId: episodeId,
            link: link,
            pubIndex: pubIndex,
            pubTime: pubTime,
            pubTs: pubTs,
            published: published,
            seasonId: seasonId,
            seasonType: seasonType,
            squareCover: squareCover,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
