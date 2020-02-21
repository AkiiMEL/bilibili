// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_area_entrance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveAreaEntrance> _$liveAreaEntranceSerializer =
    new _$LiveAreaEntranceSerializer();

class _$LiveAreaEntranceSerializer
    implements StructuredSerializer<LiveAreaEntrance> {
  @override
  final Iterable<Type> types = const [LiveAreaEntrance, _$LiveAreaEntrance];
  @override
  final String wireName = 'LiveAreaEntrance';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveAreaEntrance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.pic != null) {
      result
        ..add('pic')
        ..add(serializers.serialize(object.pic,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
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
    if (object.tagType != null) {
      result
        ..add('tag_type')
        ..add(serializers.serialize(object.tagType,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LiveAreaEntrance deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveAreaEntranceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area_v2_id':
          result.areaV2Id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area_v2_parent_id':
          result.areaV2ParentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tag_type':
          result.tagType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveAreaEntrance extends LiveAreaEntrance {
  @override
  final int id;
  @override
  final String link;
  @override
  final String pic;
  @override
  final String title;
  @override
  final int areaV2Id;
  @override
  final int areaV2ParentId;
  @override
  final int tagType;

  factory _$LiveAreaEntrance(
          [void Function(LiveAreaEntranceBuilder) updates]) =>
      (new LiveAreaEntranceBuilder()..update(updates)).build();

  _$LiveAreaEntrance._(
      {this.id,
      this.link,
      this.pic,
      this.title,
      this.areaV2Id,
      this.areaV2ParentId,
      this.tagType})
      : super._();

  @override
  LiveAreaEntrance rebuild(void Function(LiveAreaEntranceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveAreaEntranceBuilder toBuilder() =>
      new LiveAreaEntranceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveAreaEntrance &&
        id == other.id &&
        link == other.link &&
        pic == other.pic &&
        title == other.title &&
        areaV2Id == other.areaV2Id &&
        areaV2ParentId == other.areaV2ParentId &&
        tagType == other.tagType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), link.hashCode), pic.hashCode),
                    title.hashCode),
                areaV2Id.hashCode),
            areaV2ParentId.hashCode),
        tagType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveAreaEntrance')
          ..add('id', id)
          ..add('link', link)
          ..add('pic', pic)
          ..add('title', title)
          ..add('areaV2Id', areaV2Id)
          ..add('areaV2ParentId', areaV2ParentId)
          ..add('tagType', tagType))
        .toString();
  }
}

class LiveAreaEntranceBuilder
    implements Builder<LiveAreaEntrance, LiveAreaEntranceBuilder> {
  _$LiveAreaEntrance _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _pic;
  String get pic => _$this._pic;
  set pic(String pic) => _$this._pic = pic;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _areaV2Id;
  int get areaV2Id => _$this._areaV2Id;
  set areaV2Id(int areaV2Id) => _$this._areaV2Id = areaV2Id;

  int _areaV2ParentId;
  int get areaV2ParentId => _$this._areaV2ParentId;
  set areaV2ParentId(int areaV2ParentId) =>
      _$this._areaV2ParentId = areaV2ParentId;

  int _tagType;
  int get tagType => _$this._tagType;
  set tagType(int tagType) => _$this._tagType = tagType;

  LiveAreaEntranceBuilder();

  LiveAreaEntranceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _link = _$v.link;
      _pic = _$v.pic;
      _title = _$v.title;
      _areaV2Id = _$v.areaV2Id;
      _areaV2ParentId = _$v.areaV2ParentId;
      _tagType = _$v.tagType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveAreaEntrance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveAreaEntrance;
  }

  @override
  void update(void Function(LiveAreaEntranceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveAreaEntrance build() {
    final _$result = _$v ??
        new _$LiveAreaEntrance._(
            id: id,
            link: link,
            pic: pic,
            title: title,
            areaV2Id: areaV2Id,
            areaV2ParentId: areaV2ParentId,
            tagType: tagType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
