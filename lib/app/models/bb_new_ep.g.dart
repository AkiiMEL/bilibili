// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_new_ep.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewEp> _$newEpSerializer = new _$NewEpSerializer();

class _$NewEpSerializer implements StructuredSerializer<NewEp> {
  @override
  final Iterable<Type> types = const [NewEp, _$NewEp];
  @override
  final String wireName = 'NewEp';

  @override
  Iterable<Object> serialize(Serializers serializers, NewEp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.indexShow != null) {
      result
        ..add('index_show')
        ..add(serializers.serialize(object.indexShow,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NewEp deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewEpBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'index_show':
          result.indexShow = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NewEp extends NewEp {
  @override
  final String cover;
  @override
  final int id;
  @override
  final String indexShow;

  factory _$NewEp([void Function(NewEpBuilder) updates]) =>
      (new NewEpBuilder()..update(updates)).build();

  _$NewEp._({this.cover, this.id, this.indexShow}) : super._();

  @override
  NewEp rebuild(void Function(NewEpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewEpBuilder toBuilder() => new NewEpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewEp &&
        cover == other.cover &&
        id == other.id &&
        indexShow == other.indexShow;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, cover.hashCode), id.hashCode), indexShow.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewEp')
          ..add('cover', cover)
          ..add('id', id)
          ..add('indexShow', indexShow))
        .toString();
  }
}

class NewEpBuilder implements Builder<NewEp, NewEpBuilder> {
  _$NewEp _$v;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _indexShow;
  String get indexShow => _$this._indexShow;
  set indexShow(String indexShow) => _$this._indexShow = indexShow;

  NewEpBuilder();

  NewEpBuilder get _$this {
    if (_$v != null) {
      _cover = _$v.cover;
      _id = _$v.id;
      _indexShow = _$v.indexShow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewEp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewEp;
  }

  @override
  void update(void Function(NewEpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewEp build() {
    final _$result =
        _$v ?? new _$NewEp._(cover: cover, id: id, indexShow: indexShow);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
