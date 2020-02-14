// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_official_verify.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfficialVerify> _$officialVerifySerializer =
    new _$OfficialVerifySerializer();

class _$OfficialVerifySerializer
    implements StructuredSerializer<OfficialVerify> {
  @override
  final Iterable<Type> types = const [OfficialVerify, _$OfficialVerify];
  @override
  final String wireName = 'OfficialVerify';

  @override
  Iterable<Object> serialize(Serializers serializers, OfficialVerify object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OfficialVerify deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficialVerifyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'desc':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OfficialVerify extends OfficialVerify {
  @override
  final int type;
  @override
  final String description;

  factory _$OfficialVerify([void Function(OfficialVerifyBuilder) updates]) =>
      (new OfficialVerifyBuilder()..update(updates)).build();

  _$OfficialVerify._({this.type, this.description}) : super._();

  @override
  OfficialVerify rebuild(void Function(OfficialVerifyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficialVerifyBuilder toBuilder() =>
      new OfficialVerifyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficialVerify &&
        type == other.type &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OfficialVerify')
          ..add('type', type)
          ..add('description', description))
        .toString();
  }
}

class OfficialVerifyBuilder
    implements Builder<OfficialVerify, OfficialVerifyBuilder> {
  _$OfficialVerify _$v;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  OfficialVerifyBuilder();

  OfficialVerifyBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficialVerify other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OfficialVerify;
  }

  @override
  void update(void Function(OfficialVerifyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OfficialVerify build() {
    final _$result =
        _$v ?? new _$OfficialVerify._(type: type, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
