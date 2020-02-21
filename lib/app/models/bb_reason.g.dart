// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Reason> _$reasonSerializer = new _$ReasonSerializer();

class _$ReasonSerializer implements StructuredSerializer<Reason> {
  @override
  final Iterable<Type> types = const [Reason, _$Reason];
  @override
  final String wireName = 'Reason';

  @override
  Iterable<Object> serialize(Serializers serializers, Reason object,
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
  Reason deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReasonBuilder();

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

class _$Reason extends Reason {
  @override
  final int id;
  @override
  final String name;

  factory _$Reason([void Function(ReasonBuilder) updates]) =>
      (new ReasonBuilder()..update(updates)).build();

  _$Reason._({this.id, this.name}) : super._();

  @override
  Reason rebuild(void Function(ReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReasonBuilder toBuilder() => new ReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reason && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reason')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ReasonBuilder implements Builder<Reason, ReasonBuilder> {
  _$Reason _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ReasonBuilder();

  ReasonBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reason other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Reason;
  }

  @override
  void update(void Function(ReasonBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Reason build() {
    final _$result = _$v ?? new _$Reason._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
