// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Area> _$areaSerializer = new _$AreaSerializer();

class _$AreaSerializer implements StructuredSerializer<Area> {
  @override
  final Iterable<Type> types = const [Area, _$Area];
  @override
  final String wireName = 'Area';

  @override
  Iterable<Object> serialize(Serializers serializers, Area object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Area deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AreaBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Area extends Area {
  @override
  final int id;
  @override
  final String name;

  factory _$Area([void Function(AreaBuilder) updates]) =>
      (new AreaBuilder()..update(updates)).build();

  _$Area._({this.id, this.name}) : super._();

  @override
  Area rebuild(void Function(AreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaBuilder toBuilder() => new AreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Area && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Area')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class AreaBuilder implements Builder<Area, AreaBuilder> {
  _$Area _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  AreaBuilder();

  AreaBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Area other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Area;
  }

  @override
  void update(void Function(AreaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Area build() {
    final _$result = _$v ?? new _$Area._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
