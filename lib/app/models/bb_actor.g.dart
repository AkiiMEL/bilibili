// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_actor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Actor> _$actorSerializer = new _$ActorSerializer();

class _$ActorSerializer implements StructuredSerializer<Actor> {
  @override
  final Iterable<Type> types = const [Actor, _$Actor];
  @override
  final String wireName = 'Actor';

  @override
  Iterable<Object> serialize(Serializers serializers, Actor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
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
  Actor deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info = serializers.deserialize(value,
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

class _$Actor extends Actor {
  @override
  final String info;
  @override
  final String title;

  factory _$Actor([void Function(ActorBuilder) updates]) =>
      (new ActorBuilder()..update(updates)).build();

  _$Actor._({this.info, this.title}) : super._();

  @override
  Actor rebuild(void Function(ActorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActorBuilder toBuilder() => new ActorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Actor && info == other.info && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, info.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Actor')
          ..add('info', info)
          ..add('title', title))
        .toString();
  }
}

class ActorBuilder implements Builder<Actor, ActorBuilder> {
  _$Actor _$v;

  String _info;
  String get info => _$this._info;
  set info(String info) => _$this._info = info;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ActorBuilder();

  ActorBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Actor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Actor;
  }

  @override
  void update(void Function(ActorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Actor build() {
    final _$result = _$v ?? new _$Actor._(info: info, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
