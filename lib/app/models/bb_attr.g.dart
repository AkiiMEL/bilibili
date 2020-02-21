// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_attr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Attr> _$attrSerializer = new _$AttrSerializer();

class _$AttrSerializer implements StructuredSerializer<Attr> {
  @override
  final Iterable<Type> types = const [Attr, _$Attr];
  @override
  final String wireName = 'Attr';

  @override
  Iterable<Object> serialize(Serializers serializers, Attr object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.follow != null) {
      result
        ..add('follow')
        ..add(serializers.serialize(object.follow,
            specifiedType: const FullType(int)));
    }
    if (object.header != null) {
      result
        ..add('header')
        ..add(serializers.serialize(object.header,
            specifiedType: const FullType(int)));
    }
    if (object.random != null) {
      result
        ..add('random')
        ..add(serializers.serialize(object.random,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Attr deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttrBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'follow':
          result.follow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'header':
          result.header = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'random':
          result.random = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Attr extends Attr {
  @override
  final int follow;
  @override
  final int header;
  @override
  final int random;

  factory _$Attr([void Function(AttrBuilder) updates]) =>
      (new AttrBuilder()..update(updates)).build();

  _$Attr._({this.follow, this.header, this.random}) : super._();

  @override
  Attr rebuild(void Function(AttrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttrBuilder toBuilder() => new AttrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attr &&
        follow == other.follow &&
        header == other.header &&
        random == other.random;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, follow.hashCode), header.hashCode), random.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attr')
          ..add('follow', follow)
          ..add('header', header)
          ..add('random', random))
        .toString();
  }
}

class AttrBuilder implements Builder<Attr, AttrBuilder> {
  _$Attr _$v;

  int _follow;
  int get follow => _$this._follow;
  set follow(int follow) => _$this._follow = follow;

  int _header;
  int get header => _$this._header;
  set header(int header) => _$this._header = header;

  int _random;
  int get random => _$this._random;
  set random(int random) => _$this._random = random;

  AttrBuilder();

  AttrBuilder get _$this {
    if (_$v != null) {
      _follow = _$v.follow;
      _header = _$v.header;
      _random = _$v.random;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attr other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attr;
  }

  @override
  void update(void Function(AttrBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Attr build() {
    final _$result =
        _$v ?? new _$Attr._(follow: follow, header: header, random: random);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
