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
    if (object.desc != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.desc,
            specifiedType: const FullType(String)));
    }
    if (object.isNew != null) {
      result
        ..add('is_new')
        ..add(serializers.serialize(object.isNew,
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
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_new':
          result.isNew = serializers.deserialize(value,
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
  final String desc;
  @override
  final int isNew;
  @override
  final String more;
  @override
  final String title;
  @override
  final String indexShow;

  factory _$NewEp([void Function(NewEpBuilder) updates]) =>
      (new NewEpBuilder()..update(updates)).build();

  _$NewEp._(
      {this.cover,
      this.id,
      this.desc,
      this.isNew,
      this.more,
      this.title,
      this.indexShow})
      : super._();

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
        desc == other.desc &&
        isNew == other.isNew &&
        more == other.more &&
        title == other.title &&
        indexShow == other.indexShow;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, cover.hashCode), id.hashCode),
                        desc.hashCode),
                    isNew.hashCode),
                more.hashCode),
            title.hashCode),
        indexShow.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewEp')
          ..add('cover', cover)
          ..add('id', id)
          ..add('desc', desc)
          ..add('isNew', isNew)
          ..add('more', more)
          ..add('title', title)
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

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  int _isNew;
  int get isNew => _$this._isNew;
  set isNew(int isNew) => _$this._isNew = isNew;

  String _more;
  String get more => _$this._more;
  set more(String more) => _$this._more = more;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _indexShow;
  String get indexShow => _$this._indexShow;
  set indexShow(String indexShow) => _$this._indexShow = indexShow;

  NewEpBuilder();

  NewEpBuilder get _$this {
    if (_$v != null) {
      _cover = _$v.cover;
      _id = _$v.id;
      _desc = _$v.desc;
      _isNew = _$v.isNew;
      _more = _$v.more;
      _title = _$v.title;
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
    final _$result = _$v ??
        new _$NewEp._(
            cover: cover,
            id: id,
            desc: desc,
            isNew: isNew,
            more: more,
            title: title,
            indexShow: indexShow);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
