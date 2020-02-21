// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_module_follow.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModuleFollow> _$moduleFollowSerializer =
    new _$ModuleFollowSerializer();

class _$ModuleFollowSerializer implements StructuredSerializer<ModuleFollow> {
  @override
  final Iterable<Type> types = const [ModuleFollow, _$ModuleFollow];
  @override
  final String wireName = 'ModuleFollow';

  @override
  Iterable<Object> serialize(Serializers serializers, ModuleFollow object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.upgrade != null) {
      result
        ..add('update')
        ..add(serializers.serialize(object.upgrade,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ModuleFollow deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModuleFollowBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'update':
          result.upgrade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ModuleFollow extends ModuleFollow {
  @override
  final int count;
  @override
  final int type;
  @override
  final int upgrade;

  factory _$ModuleFollow([void Function(ModuleFollowBuilder) updates]) =>
      (new ModuleFollowBuilder()..update(updates)).build();

  _$ModuleFollow._({this.count, this.type, this.upgrade}) : super._();

  @override
  ModuleFollow rebuild(void Function(ModuleFollowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModuleFollowBuilder toBuilder() => new ModuleFollowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModuleFollow &&
        count == other.count &&
        type == other.type &&
        upgrade == other.upgrade;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, count.hashCode), type.hashCode), upgrade.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ModuleFollow')
          ..add('count', count)
          ..add('type', type)
          ..add('upgrade', upgrade))
        .toString();
  }
}

class ModuleFollowBuilder
    implements Builder<ModuleFollow, ModuleFollowBuilder> {
  _$ModuleFollow _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _upgrade;
  int get upgrade => _$this._upgrade;
  set upgrade(int upgrade) => _$this._upgrade = upgrade;

  ModuleFollowBuilder();

  ModuleFollowBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _type = _$v.type;
      _upgrade = _$v.upgrade;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModuleFollow other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ModuleFollow;
  }

  @override
  void update(void Function(ModuleFollowBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ModuleFollow build() {
    final _$result =
        _$v ?? new _$ModuleFollow._(count: count, type: type, upgrade: upgrade);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
