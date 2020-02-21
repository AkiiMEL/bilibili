// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_live_module.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveModule> _$liveModuleSerializer = new _$LiveModuleSerializer();

class _$LiveModuleSerializer implements StructuredSerializer<LiveModule> {
  @override
  final Iterable<Type> types = const [LiveModule, _$LiveModule];
  @override
  final String wireName = 'LiveModule';

  @override
  Iterable<Object> serialize(Serializers serializers, LiveModule object,
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
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(int)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LiveModule deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveModuleBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveModule extends LiveModule {
  @override
  final int id;
  @override
  final String link;
  @override
  final String pic;
  @override
  final String title;
  @override
  final int type;
  @override
  final int sort;
  @override
  final int count;

  factory _$LiveModule([void Function(LiveModuleBuilder) updates]) =>
      (new LiveModuleBuilder()..update(updates)).build();

  _$LiveModule._(
      {this.id,
      this.link,
      this.pic,
      this.title,
      this.type,
      this.sort,
      this.count})
      : super._();

  @override
  LiveModule rebuild(void Function(LiveModuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveModuleBuilder toBuilder() => new LiveModuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveModule &&
        id == other.id &&
        link == other.link &&
        pic == other.pic &&
        title == other.title &&
        type == other.type &&
        sort == other.sort &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), link.hashCode), pic.hashCode),
                    title.hashCode),
                type.hashCode),
            sort.hashCode),
        count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LiveModule')
          ..add('id', id)
          ..add('link', link)
          ..add('pic', pic)
          ..add('title', title)
          ..add('type', type)
          ..add('sort', sort)
          ..add('count', count))
        .toString();
  }
}

class LiveModuleBuilder implements Builder<LiveModule, LiveModuleBuilder> {
  _$LiveModule _$v;

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

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _sort;
  int get sort => _$this._sort;
  set sort(int sort) => _$this._sort = sort;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  LiveModuleBuilder();

  LiveModuleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _link = _$v.link;
      _pic = _$v.pic;
      _title = _$v.title;
      _type = _$v.type;
      _sort = _$v.sort;
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveModule other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LiveModule;
  }

  @override
  void update(void Function(LiveModuleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LiveModule build() {
    final _$result = _$v ??
        new _$LiveModule._(
            id: id,
            link: link,
            pic: pic,
            title: title,
            type: type,
            sort: sort,
            count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
