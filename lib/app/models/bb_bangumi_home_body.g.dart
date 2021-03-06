// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_bangumi_home_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangumiHomeBody> _$bangumiHomeBodySerializer =
    new _$BangumiHomeBodySerializer();

class _$BangumiHomeBodySerializer
    implements StructuredSerializer<BangumiHomeBody> {
  @override
  final Iterable<Type> types = const [BangumiHomeBody, _$BangumiHomeBody];
  @override
  final String wireName = 'BangumiHomeBody';

  @override
  Iterable<Object> serialize(Serializers serializers, BangumiHomeBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.hot != null) {
      result
        ..add('hot')
        ..add(serializers.serialize(object.hot,
            specifiedType: const FullType(BangumiHomeBodyPopular)));
    }
    if (object.modules != null) {
      result
        ..add('modules')
        ..add(serializers.serialize(object.modules,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Module, const [const FullType(BangumiListItem)])
            ])));
    }
    if (object.regions != null) {
      result
        ..add('regions')
        ..add(serializers.serialize(object.regions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Region)])));
    }
    return result;
  }

  @override
  BangumiHomeBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangumiHomeBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hot':
          result.hot.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BangumiHomeBodyPopular))
              as BangumiHomeBodyPopular);
          break;
        case 'modules':
          result.modules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Module, const [const FullType(BangumiListItem)])
              ])) as BuiltList<Object>);
          break;
        case 'regions':
          result.regions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Region)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BangumiHomeBody extends BangumiHomeBody {
  @override
  final BangumiHomeBodyPopular hot;
  @override
  final BuiltList<Module<BangumiListItem>> modules;
  @override
  final BuiltList<Region> regions;

  factory _$BangumiHomeBody([void Function(BangumiHomeBodyBuilder) updates]) =>
      (new BangumiHomeBodyBuilder()..update(updates)).build();

  _$BangumiHomeBody._({this.hot, this.modules, this.regions}) : super._();

  @override
  BangumiHomeBody rebuild(void Function(BangumiHomeBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangumiHomeBodyBuilder toBuilder() =>
      new BangumiHomeBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangumiHomeBody &&
        hot == other.hot &&
        modules == other.modules &&
        regions == other.regions;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, hot.hashCode), modules.hashCode), regions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BangumiHomeBody')
          ..add('hot', hot)
          ..add('modules', modules)
          ..add('regions', regions))
        .toString();
  }
}

class BangumiHomeBodyBuilder
    implements Builder<BangumiHomeBody, BangumiHomeBodyBuilder> {
  _$BangumiHomeBody _$v;

  BangumiHomeBodyPopularBuilder _hot;
  BangumiHomeBodyPopularBuilder get hot =>
      _$this._hot ??= new BangumiHomeBodyPopularBuilder();
  set hot(BangumiHomeBodyPopularBuilder hot) => _$this._hot = hot;

  ListBuilder<Module<BangumiListItem>> _modules;
  ListBuilder<Module<BangumiListItem>> get modules =>
      _$this._modules ??= new ListBuilder<Module<BangumiListItem>>();
  set modules(ListBuilder<Module<BangumiListItem>> modules) =>
      _$this._modules = modules;

  ListBuilder<Region> _regions;
  ListBuilder<Region> get regions =>
      _$this._regions ??= new ListBuilder<Region>();
  set regions(ListBuilder<Region> regions) => _$this._regions = regions;

  BangumiHomeBodyBuilder();

  BangumiHomeBodyBuilder get _$this {
    if (_$v != null) {
      _hot = _$v.hot?.toBuilder();
      _modules = _$v.modules?.toBuilder();
      _regions = _$v.regions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangumiHomeBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BangumiHomeBody;
  }

  @override
  void update(void Function(BangumiHomeBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BangumiHomeBody build() {
    _$BangumiHomeBody _$result;
    try {
      _$result = _$v ??
          new _$BangumiHomeBody._(
              hot: _hot?.build(),
              modules: _modules?.build(),
              regions: _regions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'hot';
        _hot?.build();
        _$failedField = 'modules';
        _modules?.build();
        _$failedField = 'regions';
        _regions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BangumiHomeBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
