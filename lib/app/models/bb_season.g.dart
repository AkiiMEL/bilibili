// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_season.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Season> _$seasonSerializer = new _$SeasonSerializer();

class _$SeasonSerializer implements StructuredSerializer<Season> {
  @override
  final Iterable<Type> types = const [Season, _$Season];
  @override
  final String wireName = 'Season';

  @override
  Iterable<Object> serialize(Serializers serializers, Season object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.badge != null) {
      result
        ..add('badge')
        ..add(serializers.serialize(object.badge,
            specifiedType: const FullType(String)));
    }
    if (object.badgeType != null) {
      result
        ..add('badgeType')
        ..add(serializers.serialize(object.badgeType,
            specifiedType: const FullType(int)));
    }
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.isNew != null) {
      result
        ..add('isNew')
        ..add(serializers.serialize(object.isNew,
            specifiedType: const FullType(int)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.resource != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(object.resource,
            specifiedType: const FullType(String)));
    }
    if (object.seasonId != null) {
      result
        ..add('seasonId')
        ..add(serializers.serialize(object.seasonId,
            specifiedType: const FullType(int)));
    }
    if (object.seasonTitle != null) {
      result
        ..add('seasonTitle')
        ..add(serializers.serialize(object.seasonTitle,
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
  Season deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'badge':
          result.badge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badgeType':
          result.badgeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isNew':
          result.isNew = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resource':
          result.resource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seasonId':
          result.seasonId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'seasonTitle':
          result.seasonTitle = serializers.deserialize(value,
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

class _$Season extends Season {
  @override
  final String badge;
  @override
  final int badgeType;
  @override
  final String cover;
  @override
  final int isNew;
  @override
  final String link;
  @override
  final String resource;
  @override
  final int seasonId;
  @override
  final String seasonTitle;
  @override
  final String title;

  factory _$Season([void Function(SeasonBuilder) updates]) =>
      (new SeasonBuilder()..update(updates)).build();

  _$Season._(
      {this.badge,
      this.badgeType,
      this.cover,
      this.isNew,
      this.link,
      this.resource,
      this.seasonId,
      this.seasonTitle,
      this.title})
      : super._();

  @override
  Season rebuild(void Function(SeasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonBuilder toBuilder() => new SeasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Season &&
        badge == other.badge &&
        badgeType == other.badgeType &&
        cover == other.cover &&
        isNew == other.isNew &&
        link == other.link &&
        resource == other.resource &&
        seasonId == other.seasonId &&
        seasonTitle == other.seasonTitle &&
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
                            $jc($jc($jc(0, badge.hashCode), badgeType.hashCode),
                                cover.hashCode),
                            isNew.hashCode),
                        link.hashCode),
                    resource.hashCode),
                seasonId.hashCode),
            seasonTitle.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Season')
          ..add('badge', badge)
          ..add('badgeType', badgeType)
          ..add('cover', cover)
          ..add('isNew', isNew)
          ..add('link', link)
          ..add('resource', resource)
          ..add('seasonId', seasonId)
          ..add('seasonTitle', seasonTitle)
          ..add('title', title))
        .toString();
  }
}

class SeasonBuilder implements Builder<Season, SeasonBuilder> {
  _$Season _$v;

  String _badge;
  String get badge => _$this._badge;
  set badge(String badge) => _$this._badge = badge;

  int _badgeType;
  int get badgeType => _$this._badgeType;
  set badgeType(int badgeType) => _$this._badgeType = badgeType;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _isNew;
  int get isNew => _$this._isNew;
  set isNew(int isNew) => _$this._isNew = isNew;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _resource;
  String get resource => _$this._resource;
  set resource(String resource) => _$this._resource = resource;

  int _seasonId;
  int get seasonId => _$this._seasonId;
  set seasonId(int seasonId) => _$this._seasonId = seasonId;

  String _seasonTitle;
  String get seasonTitle => _$this._seasonTitle;
  set seasonTitle(String seasonTitle) => _$this._seasonTitle = seasonTitle;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  SeasonBuilder();

  SeasonBuilder get _$this {
    if (_$v != null) {
      _badge = _$v.badge;
      _badgeType = _$v.badgeType;
      _cover = _$v.cover;
      _isNew = _$v.isNew;
      _link = _$v.link;
      _resource = _$v.resource;
      _seasonId = _$v.seasonId;
      _seasonTitle = _$v.seasonTitle;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Season other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Season;
  }

  @override
  void update(void Function(SeasonBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Season build() {
    final _$result = _$v ??
        new _$Season._(
            badge: badge,
            badgeType: badgeType,
            cover: cover,
            isNew: isNew,
            link: link,
            resource: resource,
            seasonId: seasonId,
            seasonTitle: seasonTitle,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
