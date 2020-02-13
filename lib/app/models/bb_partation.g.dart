// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_partation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Partation> _$partationSerializer = new _$PartationSerializer();

class _$PartationSerializer implements StructuredSerializer<Partation> {
  @override
  final Iterable<Type> types = const [Partation, _$Partation];
  @override
  final String wireName = 'Partation';

  @override
  Iterable<Object> serialize(Serializers serializers, Partation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    if (object.reid != null) {
      result
        ..add('reid')
        ..add(serializers.serialize(object.reid,
            specifiedType: const FullType(int)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    if (object.goto != null) {
      result
        ..add('goto')
        ..add(serializers.serialize(object.goto,
            specifiedType: const FullType(String)));
    }
    if (object.param != null) {
      result
        ..add('param')
        ..add(serializers.serialize(object.param,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.tid != null) {
      result
        ..add('tid')
        ..add(serializers.serialize(object.tid,
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
  Partation deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PartationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reid':
          result.reid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'goto':
          result.goto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'param':
          result.param = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tid':
          result.tid = serializers.deserialize(value,
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

class _$Partation extends Partation {
  @override
  final String logo;
  @override
  final int reid;
  @override
  final String uri;
  @override
  final String goto;
  @override
  final String param;
  @override
  final int type;
  @override
  final int tid;
  @override
  final String name;

  factory _$Partation([void Function(PartationBuilder) updates]) =>
      (new PartationBuilder()..update(updates)).build();

  _$Partation._(
      {this.logo,
      this.reid,
      this.uri,
      this.goto,
      this.param,
      this.type,
      this.tid,
      this.name})
      : super._();

  @override
  Partation rebuild(void Function(PartationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartationBuilder toBuilder() => new PartationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Partation &&
        logo == other.logo &&
        reid == other.reid &&
        uri == other.uri &&
        goto == other.goto &&
        param == other.param &&
        type == other.type &&
        tid == other.tid &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, logo.hashCode), reid.hashCode),
                            uri.hashCode),
                        goto.hashCode),
                    param.hashCode),
                type.hashCode),
            tid.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Partation')
          ..add('logo', logo)
          ..add('reid', reid)
          ..add('uri', uri)
          ..add('goto', goto)
          ..add('param', param)
          ..add('type', type)
          ..add('tid', tid)
          ..add('name', name))
        .toString();
  }
}

class PartationBuilder implements Builder<Partation, PartationBuilder> {
  _$Partation _$v;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  int _reid;
  int get reid => _$this._reid;
  set reid(int reid) => _$this._reid = reid;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  String _goto;
  String get goto => _$this._goto;
  set goto(String goto) => _$this._goto = goto;

  String _param;
  String get param => _$this._param;
  set param(String param) => _$this._param = param;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _tid;
  int get tid => _$this._tid;
  set tid(int tid) => _$this._tid = tid;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PartationBuilder();

  PartationBuilder get _$this {
    if (_$v != null) {
      _logo = _$v.logo;
      _reid = _$v.reid;
      _uri = _$v.uri;
      _goto = _$v.goto;
      _param = _$v.param;
      _type = _$v.type;
      _tid = _$v.tid;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Partation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Partation;
  }

  @override
  void update(void Function(PartationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Partation build() {
    final _$result = _$v ??
        new _$Partation._(
            logo: logo,
            reid: reid,
            uri: uri,
            goto: goto,
            param: param,
            type: type,
            tid: tid,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
