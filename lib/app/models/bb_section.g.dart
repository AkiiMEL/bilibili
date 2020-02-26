// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Section> _$sectionSerializer = new _$SectionSerializer();

class _$SectionSerializer implements StructuredSerializer<Section> {
  @override
  final Iterable<Type> types = const [Section, _$Section];
  @override
  final String wireName = 'Section';

  @override
  Iterable<Object> serialize(Serializers serializers, Section object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.episodeId != null) {
      result
        ..add('episode_id')
        ..add(serializers.serialize(object.episodeId,
            specifiedType: const FullType(String)));
    }
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Episode)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.more != null) {
      result
        ..add('more')
        ..add(serializers.serialize(object.more,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Section deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'episode_id':
          result.episodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Episode)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'more':
          result.more = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Section extends Section {
  @override
  final String episodeId;
  @override
  final BuiltList<Episode> episodes;
  @override
  final int id;
  @override
  final String more;
  @override
  final String title;
  @override
  final int type;

  factory _$Section([void Function(SectionBuilder) updates]) =>
      (new SectionBuilder()..update(updates)).build();

  _$Section._(
      {this.episodeId,
      this.episodes,
      this.id,
      this.more,
      this.title,
      this.type})
      : super._();

  @override
  Section rebuild(void Function(SectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionBuilder toBuilder() => new SectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Section &&
        episodeId == other.episodeId &&
        episodes == other.episodes &&
        id == other.id &&
        more == other.more &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, episodeId.hashCode), episodes.hashCode),
                    id.hashCode),
                more.hashCode),
            title.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Section')
          ..add('episodeId', episodeId)
          ..add('episodes', episodes)
          ..add('id', id)
          ..add('more', more)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class SectionBuilder implements Builder<Section, SectionBuilder> {
  _$Section _$v;

  String _episodeId;
  String get episodeId => _$this._episodeId;
  set episodeId(String episodeId) => _$this._episodeId = episodeId;

  ListBuilder<Episode> _episodes;
  ListBuilder<Episode> get episodes =>
      _$this._episodes ??= new ListBuilder<Episode>();
  set episodes(ListBuilder<Episode> episodes) => _$this._episodes = episodes;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _more;
  String get more => _$this._more;
  set more(String more) => _$this._more = more;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  SectionBuilder();

  SectionBuilder get _$this {
    if (_$v != null) {
      _episodeId = _$v.episodeId;
      _episodes = _$v.episodes?.toBuilder();
      _id = _$v.id;
      _more = _$v.more;
      _title = _$v.title;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Section other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Section;
  }

  @override
  void update(void Function(SectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Section build() {
    _$Section _$result;
    try {
      _$result = _$v ??
          new _$Section._(
              episodeId: episodeId,
              episodes: _episodes?.build(),
              id: id,
              more: more,
              title: title,
              type: type);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'episodes';
        _episodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Section', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
